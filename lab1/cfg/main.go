package main

import (
	"fmt"
	"go/ast"
	"go/parser"
	"go/token"
	"os"
	"strconv"
)

func worker() {
	src := `
	package main
	func foo() {
		println("it is fooo")
		k:=5
		if k > 3{
			println(k)
		}
	}	
	func main() {
		n := 2
		if ( n < 3){
			println("2")
		}else {
			n = 3
		}
		for i := 1; i < n; i++ {
			if i > 2 {
				println(i)
				return
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
	i := 1
	for _, decl := range f.Decls {
		if decl, ok := decl.(*ast.FuncDecl); ok {
			cfg := New(decl.Body)
			str := "digraph CFG" + strconv.Itoa(i) + "{\n" + cfg.Format(fset) + "}\n"
			fmt.Printf(str)
			file.WriteString(str)
			i++
		}
	}

}

func main() {
	worker()
}
