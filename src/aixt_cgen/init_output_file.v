// Project Name: Aixt, https://github.com/fermarsan/aixt.git
// Author: Fernando M. Santa
// Date: 2023-2024
// License: MIT
module aixt_cgen

// init_output_file initializes the output file stream.
fn (mut gen Gen) init_output_file() {
	mut c_line := ''
	c_line += '// This '
    c_line += match gen.setup.backend {
		'nxc' 		{ 'NXC ' }
		'arduino'	{ 'Arduino ' }  
		else 		{ 'C ' }
	}
    gen.out << c_line + 'code was automatically generated by Aixt Project'
	gen.out << '// Device = ${gen.setup.device}'
	gen.out << '// Board = ${gen.setup.board}'
	gen.out << '// Backend = ${gen.setup.backend}\n'

	gen.out << '\n___preprocessor_block___' 
	// gen.out += '\n___includes_block___\n'
	// gen.out += '\n___macros_block___\n' 
	gen.out << '\n___definitions_block___\n'

	for v_type, c_type in gen.setup.compiler_types {
		if c_type != v_type {
			gen.out << 'typedef ${c_type} ${v_type};'
		}
	} 

}