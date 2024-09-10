// Project Nme : Aixt project : http://gitlab.com/fermansan/aixt-project.git

// Author: Farith Ochoa Leon, Felipe Cardozo and Fernando M. Santa
// Date: 2024
// License : MIT

module uart 

#define uart__print_0(MESSAGE)	Serial.print(MESSAGE)

#define uart__print_1(MESSAGE)	Serial1.print(MESSAGE)

#define uart__print_x(UART_NUMBER, MESSAGE)		uart__print_ ## UART_NUMBER (MESSAGE) 			

// macro with 1 or 2 arguments
#define SEL_uart.print(_1, _2, MACRO_NAME, ...) MACRO_NAME
#define uart__print(...) SEL_uart.print(__VA_ARGS__, uart__print_x, uart__print_0)(__VA_ARGS__)

