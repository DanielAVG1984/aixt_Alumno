// Project Name: Aixt, https://github.com/fermarsan/aixt.git
// Author: Fernando Martínez Santa
// Date: 2024
// License: MIT
module port

#define port__setup(PORT_NAME, VALUE)   TRIS ## PORT_NAME = VALUE
