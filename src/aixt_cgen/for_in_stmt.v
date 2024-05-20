// Project Name: Aixt, https://github.com/fermarsan/aixt.git
// Author: Fernando Martínez Santa
// Date: 2023-2024
// License: MIT
module aixt_cgen

import v.ast

// for_in_stmt is the code generation function for the 'for in' statements.
fn (mut gen Gen) for_in_stmt(node ast.ForInStmt) []string {
	mut out := []string{}
	mut c_line := ''
	if node.kind.str() == 'array' {	// node.high.type_name() == 'v.ast.EmptyExpr' { // in an array
	// println('=============== ${node} ===============')
		gen.level_count++
		index_name := '__t${gen.level_count}'	// temporal variables (indexes) by levels
		if !gen.files[gen.file_count].scope.known_var(index_name) {	//if doesn't exits, create it
			mut temp_var := ast.Var {
				name: index_name
				typ: ast.Type(ast.Kind.int)
			}
			gen.files[gen.file_count].scope.objects[index_name] = temp_var //
			gen.definitions << 'int ${index_name};'
		}
		var := *gen.files[gen.file_count].scope.children[0].find_var(node.cond.str()) or { }
		c_line += 'for(int ${index_name} = 0;'
		c_line += ' ${index_name} < ${(var.expr as ast.ArrayInit).exprs.len};'
		out << c_line + ' ${index_name}++) {'
		val_var_kind := gen.table.type_kind(node.val_type).str()
		out << '${gen.setup.value(val_var_kind).string()} ${node.val_var};'	// declare the element variable
		out << '${node.val_var} = ${gen.ast_node(node.cond).join('')}[${index_name}];'	// read the element by index
		for st in node.stmts {
			out << gen.ast_node(st)
		}
	} else { // in a range
		c_line += 'for(int ${node.val_var}=${gen.ast_node(node.cond).join('')}; '
		out << c_line + '${node.val_var}<${gen.ast_node(node.high).join('')}; ${node.val_var}++) {'
		for st in node.stmts {
			out << gen.ast_node(st)
		}
	}
	gen.level_count--
	out << '}'
	return out
}