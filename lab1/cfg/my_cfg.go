package main

import (
	"bytes"
	"fmt"
	"go/ast"
	"go/token"
)

type CFG struct {
	Blocks []*Block
}

type Block struct {
	Nodes []ast.Node // statements, expressions, and ValueSpecs
	Succs []*Block   // successor nodes in the graph

	comment     string    // for debugging
	index       int32     // index within CFG.Blocks
	unreachable bool      // is block of stmts following return/panic/for{}
	succs2      [2]*Block // underlying array for Succs
}

func New(body *ast.BlockStmt) *CFG {
	b := builder{
		cfg: new(CFG)}
	b.current = b.newBlock("entry")
	b.stmt(body)
	// Does control fall off the end of the function's body?
	// Make implicit return explicit.
	if b.current != nil && !b.current.unreachable {
		b.add(&ast.ReturnStmt{
			Return: body.End() - 1,
		})
	}

	return b.cfg
}

func (g *CFG) Format(fset *token.FileSet) string {
	var buf bytes.Buffer
	for _, b := range g.Blocks {
		if len(b.Succs) > 0 {
			for _, succ := range b.Succs {
				fmt.Fprintf(&buf, "\"%s[%d]\"", b.comment, b.index)
				fmt.Fprintf(&buf, "->")
				fmt.Fprintf(&buf, "\"%s[%d]\";\n", succ.comment, succ.index)
			}
		}
	}
	return buf.String()
}
