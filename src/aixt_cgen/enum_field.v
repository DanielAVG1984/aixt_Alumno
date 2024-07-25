// Project Name: Aixt, https://github.com/fermarsan/aixt.git
// Author: Fernando Martínez Santa
// Date: 2024
// License: MIT
module aixt_cgen

import v.ast

// enum_field is code generation function for enum fields.
fn (mut gen Gen) enum_field(node ast.EnumField) []string {
	expr := gen.ast_node(node.expr).join('')
	name := node.name
	match node.expr {
		ast.EmptyExpr {
			return ['${name},']
		} 
		else {
			return ['${name} = ${expr},']  // '${node.name} = ${node.expr},\n'
		}
	}
}