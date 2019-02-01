package main

import (
	"bytes"
	"fmt"
	"go/ast"
	"go/format"
	"go/parser"
	"go/token"
	"os"
	"strconv"
)

func ExamplePrint() {
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

	fset := token.NewFileSet()
	file, err := os.Create("assist.txt")
	if err != nil {
		panic(err)
	}
	defer file.Close()
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
			str := "digraph CFG" + strconv.Itoa(i) + "{\n" + cfg.Format(fset) + "}\n"
			fmt.Printf(str)
			file.WriteString(str)
			i++
		}
	}

}

func formatNode(fset *token.FileSet, n ast.Node) string {
	var buf bytes.Buffer
	format.Node(&buf, fset, n)
	return string(bytes.Replace(buf.Bytes(), []byte("\n"), []byte("\n\t"), -1))
}

func main() {
	ExamplePrint()
}
