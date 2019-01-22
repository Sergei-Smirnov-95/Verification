package main

import (
	"bytes"
	"fmt"
	"go/ast"
	"go/format"
	"go/parser"
	"go/token"
	"strconv"
)

// This example shows what an AST looks like when printed for debugging
func ExamplePrint() {
	// src is the input for which we want to print the AST.
	src := `
package main
func foo() {
	println("it is fooo");
}	
func main() {
	n := 2
	if ( n < 3){
		println("2")
	}else {
		n = 3
	}
	for i := 1; i < n; i++ {
		if (i > 2){
			println(i)
		}

	}
}
`

	// Create the AST by parsing src.
	fset := token.NewFileSet() // positions are relative to fset
	f, err := parser.ParseFile(fset, "", src, 0)
	if err != nil {
		panic(err)
	}
	var buf bytes.Buffer
	i := 1
	for _, decl := range f.Decls {
		if decl, ok := decl.(*ast.FuncDecl); ok {
			cfg := New(decl.Body)
			for _, b := range cfg.Blocks {
				for _, n := range b.Nodes {
					fmt.Fprintf(&buf, "\t%s\n", formatNode(fset, n))
				}
			}
			fmt.Println("control flow graph " + strconv.Itoa(i) + ":\n" + cfg.Format(fset))
			i++
		}
	}

}

func formatNode(fset *token.FileSet, n ast.Node) string {
	var buf bytes.Buffer
	format.Node(&buf, fset, n)
	// Indent secondary lines by a tab.
	return string(bytes.Replace(buf.Bytes(), []byte("\n"), []byte("\n\t"), -1))
}

func main() {
	ExamplePrint()
}
