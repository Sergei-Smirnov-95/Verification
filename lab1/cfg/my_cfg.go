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
		//fmt.Fprintf(&buf, ".%d: # %s\n", b.index, b.comment)
		//fmt.Fprintf(&buf,"%s\n", b.comment)
		/*for _, n := range b.Nodes {
			fmt.Fprintf(&buf, "\t%s\n", formatNode(fset, n))
		}*/
		if len(b.Succs) > 0 {
			//fmt.Fprintf(&buf, "\tsuccs:")
			for _, succ := range b.Succs {
				fmt.Fprintf(&buf, "%d:%s", b.index, b.comment)
				fmt.Fprintf(&buf, "->")
				fmt.Fprintf(&buf, "%d:%s\n", succ.index, succ.comment)
			}
			//buf.WriteByte('\n')
		}
		//buf.WriteByte('\n')
	}
	return buf.String()
}

/*STATEMENTS*/
/*type (
// A BadStmt node is a placeholder for statements containing
// syntax errors for which no correct statement nodes can be
// created.
//
BadStmt struct {
	From, To token.Pos // position range of bad statement
}

// A DeclStmt node represents a declaration in a statement list.
DeclStmt struct {
	Decl Decl // *GenDecl with CONST, TYPE, or VAR token
}

// An EmptyStmt node represents an empty statement.
// The "position" of the empty statement is the position
// of the immediately following (explicit or implicit) semicolon.
//
EmptyStmt struct {
	Semicolon token.Pos // position of following ";"
	Implicit  bool      // if set, ";" was omitted in the source
}

// A LabeledStmt node represents a labeled statement.
LabeledStmt struct {
	Label *Ident
	Colon token.Pos // position of ":"
	Stmt  Stmt
}

// An ExprStmt node represents a (stand-alone) expression
// in a statement list.
//
ExprStmt struct {
	X Expr // expression
}

// A SendStmt node represents a send statement.
SendStmt struct {
	Chan  Expr
	Arrow token.Pos // position of "<-"
	Value Expr
}

// An IncDecStmt node represents an increment or decrement statement.
IncDecStmt struct {
	X      Expr
	TokPos token.Pos   // position of Tok
	Tok    token.Token // INC or DEC
}

// An AssignStmt node represents an assignment or
// a short variable declaration.
//
AssignStmt struct {
	Lhs    []Expr
	TokPos token.Pos   // position of Tok
	Tok    token.Token // assignment token, DEFINE
	Rhs    []Expr
}

// A GoStmt node represents a go statement.
GoStmt struct {
	Go   token.Pos // position of "go" keyword
	Call *CallExpr
}

// A DeferStmt node represents a defer statement.
DeferStmt struct {
	Defer token.Pos // position of "defer" keyword
	Call  *CallExpr
}

// A ReturnStmt node represents a return statement.
ReturnStmt struct {
	Return  token.Pos // position of "return" keyword
	Results []Expr    // result expressions; or nil
}

// A BranchStmt node represents a break, continue, goto,
// or fallthrough statement.
//
BranchStmt struct {
	TokPos token.Pos   // position of Tok
	Tok    token.Token // keyword token (BREAK, CONTINUE, GOTO, FALLTHROUGH)
	Label  *Ident      // label name; or nil
}

// A BlockStmt node represents a braced statement list.
BlockStmt struct {
	Lbrace token.Pos // position of "{"
	List   []Stmt
	Rbrace token.Pos // position of "}"
}

// An IfStmt node represents an if statement.
IfStmt struct {
	If   token.Pos // position of "if" keyword
	Init Stmt      // initialization statement; or nil
	Cond Expr      // condition
	Body *BlockStmt
	Else Stmt // else branch; or nil
}

// A CaseClause represents a case of an expression or type switch statement.
CaseClause struct {
	Case  token.Pos // position of "case" or "default" keyword
	List  []Expr    // list of expressions or types; nil means default case
	Colon token.Pos // position of ":"
	Body  []Stmt    // statement list; or nil
}

// A SwitchStmt node represents an expression switch statement.
SwitchStmt struct {
	Switch token.Pos  // position of "switch" keyword
	Init   Stmt       // initialization statement; or nil
	Tag    Expr       // tag expression; or nil
	Body   *BlockStmt // CaseClauses only
}

// An TypeSwitchStmt node represents a type switch statement.
TypeSwitchStmt struct {
	Switch token.Pos  // position of "switch" keyword
	Init   Stmt       // initialization statement; or nil
	Assign Stmt       // x := y.(type) or y.(type)
	Body   *BlockStmt // CaseClauses only
}

// A CommClause node represents a case of a select statement.
CommClause struct {
	Case  token.Pos // position of "case" or "default" keyword
	Comm  Stmt      // send or receive statement; nil means default case
	Colon token.Pos // position of ":"
	Body  []Stmt    // statement list; or nil
}

// An SelectStmt node represents a select statement.
SelectStmt struct {
	Select token.Pos  // position of "select" keyword
	Body   *BlockStmt // CommClauses only
}

// A ForStmt represents a for statement.
ForStmt struct {
	For  token.Pos // position of "for" keyword
	Init Stmt      // initialization statement; or nil
	Cond Expr      // condition; or nil
	Post Stmt      // post iteration statement; or nil
	Body *BlockStmt
}

// A RangeStmt represents a for statement with a range clause.
RangeStmt struct {
	For        token.Pos   // position of "for" keyword
	Key, Value Expr        // Key, Value may be nil
	TokPos     token.Pos   // position of Tok; invalid if Key == nil
	Tok        token.Token // ILLEGAL if Key == nil, ASSIGN, DEFINE
	X          Expr        // value to range over
	Body       *BlockStmt
}
*/
