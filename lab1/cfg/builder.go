package main

import (
	"fmt"
	"go/ast"
	"go/token"
)

type builder struct {
	cfg *CFG
	//mayReturn func(*ast.CallExpr) bool
	current *Block
	//lblocks map[*ast.Object]*lblock // labeled blocks
	targets *targets // linked stack of branch targets
}

func (b *builder) stmt(_s ast.Stmt) {
	// The label of the current statement.  If non-nil, its _goto
	// target is always set; its _break and _continue are set only
	// within the body of switch/typeswitch/select/for/range.
	// It is effectively an additional default-nil parameter of stmt().
	var label *lblock
	switch s := _s.(type) {
	case *ast.BadStmt,
		*ast.SendStmt,
		*ast.IncDecStmt,
		*ast.GoStmt,
		*ast.DeferStmt,
		*ast.EmptyStmt,
		*ast.AssignStmt:
		// No effect on control flow.
		b.add(s)
	case *ast.ExprStmt:
		b.add(s)
		/*if call, ok := s.X.(*ast.CallExpr); ok && !b.mayReturn(call) {
			// Calls to panic, os.Exit, etc, never return.
			b.current = b.newUnreachableBlock("unreachable.call")
		}*/
	case *ast.DeclStmt:
		// Treat each var ValueSpec as a separate statement.
		d := s.Decl.(*ast.GenDecl)
		if d.Tok == token.VAR {
			for _, spec := range d.Specs {
				if spec, ok := spec.(*ast.ValueSpec); ok {
					b.add(spec)
				}
			}
		}

	case *ast.ReturnStmt:
		b.add(s)
		b.current = b.newUnreachableBlock("unreachable.return")
	case *ast.BlockStmt:
		b.stmtList(s.List)

	case *ast.IfStmt:
		if s.Init != nil {
			b.stmt(s.Init)
		}
		then := b.newBlock("if.then")
		done := b.newBlock("if.done")
		_else := done
		if s.Else != nil {
			_else = b.newBlock("if.else")
		}
		b.add(s.Cond)
		b.ifelse(then, _else)
		b.current = then
		b.stmt(s.Body)
		b.jump(done)

		if s.Else != nil {
			b.current = _else
			b.stmt(s.Else)
			b.jump(done)
		}

		b.current = done

	/*case *ast.SwitchStmt:
		b.switchStmt(s, label)

	case *ast.TypeSwitchStmt:
		b.typeSwitchStmt(s, label)

	case *ast.SelectStmt:
		b.selectStmt(s, label)
	*/
	case *ast.ForStmt:
		b.forStmt(s, label)

	/*case *ast.RangeStmt:
	b.rangeStmt(s, label)
	*/
	default:
		panic(fmt.Sprintf("unexpected statement kind: %T", s))
	}
}

func (b *builder) stmtList(list []ast.Stmt) {
	for _, s := range list {
		b.stmt(s)
	}
}

func (b *builder) forStmt(s *ast.ForStmt, label *lblock) {
	//	...init...
	//      jump loop
	// loop:
	//      if cond goto body else done
	// body:
	//      ...body...
	//      jump post
	// post:				 (target of continue)
	//      ...post...
	//      jump loop
	// done:                                 (target of break)
	if s.Init != nil {
		b.stmt(s.Init)
	}
	body := b.newBlock("for.body")
	done := b.newBlock("for.done") // target of 'break'
	loop := body                   // target of back-edge
	if s.Cond != nil {
		loop = b.newBlock("for.loop")
	}
	cont := loop // target of 'continue'
	if s.Post != nil {
		cont = b.newBlock("for.post")
	}
	if label != nil {
		label._break = done
		label._continue = cont
	}
	b.jump(loop)
	b.current = loop
	if loop != body {
		b.add(s.Cond)
		b.ifelse(body, done)
		b.current = body
	}
	b.targets = &targets{
		tail:      b.targets,
		_break:    done,
		_continue: cont,
	}
	b.stmt(s.Body)
	b.targets = b.targets.tail
	b.jump(cont)

	if s.Post != nil {
		b.current = cont
		b.stmt(s.Post)
		b.jump(loop) // back-edge
	}
	b.current = done
}

// -------- helpers --------

// Destinations associated with unlabeled for/switch/select stmts.
// We push/pop one of these as we enter/leave each construct and for
// each BranchStmt we scan for the innermost target of the right type.
//

type targets struct {
	tail         *targets // rest of stack
	_break       *Block
	_continue    *Block
	_fallthrough *Block
}

// Destinations associated with a labeled block.
// We populate these as labels are encountered in forward gotos or
// labeled statements.
//

type lblock struct {
	_goto     *Block
	_break    *Block
	_continue *Block
}

// newBlock appends a new unconnected basic block to b.cfg's block
// slice and returns it.
// It does not automatically become the current block.
// comment is an optional string for more readable debugging output.
func (b *builder) newBlock(comment string) *Block {
	g := b.cfg
	block := &Block{
		index:   int32(len(g.Blocks)),
		comment: comment,
	}
	block.Succs = block.succs2[:0]
	g.Blocks = append(g.Blocks, block)
	return block
}

func (b *builder) newUnreachableBlock(comment string) *Block {
	block := b.newBlock(comment)
	block.unreachable = true
	return block
}

func (b *builder) add(n ast.Node) {
	b.current.Nodes = append(b.current.Nodes, n)
}

// jump adds an edge from the current block to the target block,
// and sets b.current to nil.
func (b *builder) jump(target *Block) {
	b.current.Succs = append(b.current.Succs, target)
	b.current = nil
}

// ifelse emits edges from the current block to the t and f blocks,
// and sets b.current to nil.
func (b *builder) ifelse(t, f *Block) {
	b.current.Succs = append(b.current.Succs, t, f)
	b.current = nil
}
