// Project Name: Aixt, https://github.com/fermarsan/aixt.git
// Author: Fernando M. Santa
// Date: 2024
// License: MIT
module aixt_cgen

import v.ast

// enum_val is the code generation function for enum values.
fn (mut gen Gen) comptime_selector(node ast.ComptimeSelector) []string {
	// println('${'='.repeat(50)}\n${node}\n${'='.repeat(50)}')
	// return ['${node.enum_name.after('.')}.${node.val}']
	return ['${node.str()}']
}