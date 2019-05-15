package main

import (
	"fmt"
	"go/ast"
	"go/parser"
	"go/token"
	"io/ioutil"
	"os"
	"strconv"
)

func worker() {
	inputData, err := os.Open("input.txt")
	if err != nil {
		panic(err)
	}
	defer inputData.Close()
	buf, err := ioutil.ReadAll(inputData)
	if err != nil {
		panic(err)
	}
	src := string(buf)
	fset := token.NewFileSet()
	file, err := os.Create("assist.gv")
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
