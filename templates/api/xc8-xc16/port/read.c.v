// Project Name: Aixt, https://github.com/fermarsan/aixt.git
// Author: 
// Date: 
// License: MIT
module port

// read macro reads the value of a complete pin port. This is expanded in this way:
//   x = port.read(a)
//     |
//	   +-->	x = PORTa
//            |
//	          +-->	x = PORTA
#define port__read(PORT_NAME)  PORT ## PORT_NAME