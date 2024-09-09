// Project Name: Aixt, https://github.com/fermarsan/aixt.git
// Author: Fernando M. Santa
// Date: 2023-2024
// License: MIT
module aixt_cgen

import v.ast

// global_decl is the code generation function for global declarations.
fn (mut gen Gen) global_decl(node ast.GlobalDecl) []string {

	mut c_line := ''
	for f in node.fields {
		// c_line += '\n${gen.ast_node(f)}'
		c_line += if node.attrs.len != 0 && node.attrs[0].name == 'mutex' {
			'mutex ${f.name};'		// for NXC backend
		} else {
			'${gen.ast_node(f).join('')}'
		}
	}
	gen.definitions << c_line

	return []
}