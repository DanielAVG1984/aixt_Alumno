// Project Name: Aixt, https://github.com/fermarsan/aixt.git
// Author: Fernando M. Santa
// Date: 2023-2024
// License: MIT
module aixt_cgen

import v.ast

// match_expr is the code generation function for 'match' expressions.
fn (mut gen Gen) match_expr(node ast.MatchExpr) []string {
	println('????????????????????\n${node}\n????????????????????')
	mut out := []string{}
	mut stmts := []string{}
	if node.is_expr {
		mut total := ''
		for br in node.branches.reverse() {
			if br.is_else {
				total += '(${gen.ast_node(br.stmts[0]).join('')#[..-1]})'
			} else {
				cond := '${node.cond} == ${gen.ast_node(br.exprs[0]).join('')}'
				if_true := gen.ast_node(br.stmts[0]).join('')#[..-1]
				if_false := total
				total = $tmpl('c_templates/ternary_op.c')#[..-1]
			}
		}
		mut assign := gen.single_assign( gen.cur_left, 
									 	 gen.cur_left_type, 
									 	 gen.cur_op, 
									 	 ast.empty_expr ).join('')
		// println('${assign}')
		assign = '${assign#[..-3]}( ${total} );'
		out << assign
		// println('${out}')
	} else {
		gen.cur_cond = node.cond
		for br in node.branches {
			stmts << gen.ast_node(br).join('')
		}
		match node.branches[0].exprs[0] {
			ast.InfixExpr {
				out << stmts	// match as nested if
			}
			else {
				cond := node.cond
				out << $tmpl('c_templates/match.c')#[..-1]
			}
		}
	}
	return out
} 