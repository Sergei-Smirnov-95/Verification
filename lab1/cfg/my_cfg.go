package main

import (
	"bytes"
	"fmt"
	"go/ast"
	"go/token"
	"go/format"
)
type CFG struct {
	Blocks []*Block
}

type Block struct {
	Nodes       []ast.Node // statements, expressions...
	Succs       []*Block   // successor nodes
	nodeType    string     // type of nodes
	Index       int32      // index 
	unreachable bool       // return...

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

func (g *CFG) Format(fset *token.FileSet) string {
	var buf bytes.Buffer
	for _, b := range g.Blocks {
		if len(b.Succs) > 0 {
			//fmt.Fprintf(&buf, "\tsuccs:")
			for _, succ := range b.Succs {
				if b.nodeType != "" {
					fmt.Fprintf(&buf, "\"")
					fmt.Fprintf(&buf, "%s\n", b.nodeType)
					for _, n := range b.Nodes {
						fmt.Fprintf(&buf, "%s\n", formatNode(fset, n))
					}
					fmt.Fprintf(&buf, "\"")
					fmt.Fprintf(&buf, "->")
					fmt.Fprintf(&buf, "\"")
					fmt.Fprintf(&buf, "%s\n", succ.nodeType)
					for _, n := range succ.Nodes {
						fmt.Fprintf(&buf, "%s\n", formatNode(fset, n))
					}
					fmt.Fprintf(&buf, "\";")
				}
			}
			buf.WriteByte('\n')
		}
		buf.WriteByte('\n')
	}
	return buf.String()
}

func formatNode(fset *token.FileSet, n ast.Node) string {
	var buf bytes.Buffer
	format.Node(&buf, fset, n)
	return string(bytes.Replace(buf.Bytes(), []byte("\n"), []byte("\n\t"), -1))
}