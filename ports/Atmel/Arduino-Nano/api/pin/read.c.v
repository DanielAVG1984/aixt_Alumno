// Project Name: Aixt, https://github.com/fermarsan/aixt.git
// Author: Fabián A. Rojas Acosta, Alberto Pinzón Valero and Fernando Martínez Santa
// Date: 2024
// License: MIT
module pin

//Reads the value from a specified digital pin, either HIGH or LOW
@[inline]
pub fn read(name int) int {
	return C.digitalRead(name)
}