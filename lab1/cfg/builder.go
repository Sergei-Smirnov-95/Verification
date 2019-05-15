package main

import (
	"fmt"
	"go/ast"
	"go/token"
)

type builder struct {
	cfg     *CFG
	current *Block
}

func (b *builder) stmt(_s ast.Stmt) {
	switch s := _s.(type) {
	case *ast.BadStmt,
		*ast.SendStmt,
		*ast.IncDecStmt,
		*ast.GoStmt,
		*ast.DeferStmt,
		*ast.EmptyStmt,
		*ast.AssignStmt,
		*ast.ExprStmt:
		b.add(s)
	case *ast.DeclStmt:
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
		b.current = b.newUnreachableBlock("")
	case *ast.BlockStmt:
		b.stmtList(s.List)

	case *ast.IfStmt:
		if s.Init != nil {
			b.stmt(s.Init)
		}
		then := b.newBlock("[if.then]")
		done := b.newBlock("[if.done]")
		_else := done
		if s.Else != nil {
			_else = b.newBlock("[if.else]")
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
	case *ast.ForStmt:
		b.forStmt(s)

	default:
		panic(fmt.Sprintf("unexpected statement kind: %T", s))
	}
}

func (b *builder) stmtList(list []ast.Stmt) {
	for _, s := range list {
		b.stmt(s)
	}
}

func (b *builder) forStmt(s *ast.ForStmt) {
	if s.Init != nil {
		b.stmt(s.Init)
	}
	body := b.newBlock("[for.body]")
	done := b.newBlock("[for.done]")
	loop := body
	if s.Cond != nil {
		loop = b.newBlock("[for.loop]")
	}
	cont := loop
	if s.Post != nil {
		cont = b.newBlock("[for.post]")
	}

	b.jump(loop)
	b.current = loop
	if loop != body {
		b.add(s.Cond)
		b.ifelse(body, done)
		b.current = body
	}

	b.stmt(s.Body)
	b.jump(cont)

	if s.Post != nil {
		b.current = cont
		b.stmt(s.Post)
		b.jump(loop)
	}
	b.current = done
}

func (b *builder) newBlock(nodeType string) *Block {
	g := b.cfg
	block := &Block{
		Index:    int32(len(g.Blocks)),
		nodeType: nodeType,
	}
	g.Blocks = append(g.Blocks, block)
	return block
}

func (b *builder) newUnreachableBlock(nodeType string) *Block {
	block := b.newBlock(nodeType)
	block.unreachable = true 
	return block
}

func (b *builder) add(n ast.Node) {
	b.current.Nodes = append(b.current.Nodes, n)
}

func (b *builder) jump(target *Block) {
	b.current.Succs = append(b.current.Succs, target)
	b.current = nil
}

func (b *builder) ifelse(t, f *Block) {
	b.current.Succs = append(b.current.Succs, t, f)
	b.current = nil
}
