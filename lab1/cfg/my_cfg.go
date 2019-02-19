package main

import (
	"bytes"
	"fmt"
	"go/ast"
)

type CFG struct {
	Blocks []*Block
}

type Block struct {
	Nodes       []ast.Node // statements, expressions, and ValueSpecs
	Succs       []*Block   // successor nodes in the graph
	nodeType    string     // type of nodes
	index       int32      // index within CFG.Blocks
	unreachable bool       // is block of stmts following return/panic/for{}
}

func New(body *ast.BlockStmt) *CFG {
	b := builder{
		cfg: new(CFG)}
	b.current = b.newBlock("entry")
	b.stmt(body)
	if b.current != nil && !b.current.unreachable {

		b.add(&ast.ReturnStmt{
			Return: body.End() - 1,
		})
	}

	return b.cfg
}

func (g *CFG) Format() string {
	var buf bytes.Buffer
	for _, b := range g.Blocks {
		if len(b.Succs) > 0 {
			for _, succ := range b.Succs {
				fmt.Fprintf(&buf, "\"%s[%d]\"", b.nodeType, b.index)
				fmt.Fprintf(&buf, "->")
				fmt.Fprintf(&buf, "\"%s[%d]\";\n", succ.nodeType, succ.index)
			}
		} else if len(b.Succs) == 0 && len(b.nodeType) > 0 {
			fmt.Fprintf(&buf, "\"%s[%d]\"", b.nodeType, b.index)
			fmt.Fprintf(&buf, "->")
			fmt.Fprintf(&buf, "\"%s\";\n", "end")
		}
	}
	return buf.String()
}
