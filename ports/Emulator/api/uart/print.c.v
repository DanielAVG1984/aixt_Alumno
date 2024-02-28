// Project Name: Aixt, https://github.com/fermarsan/aixt.git
// Author: Fernando Martínez Santa
// Date: 2023-2024
// License: MIT
module uart

#define uart__print_0(STR)		printf("\033[0;32m");	printf("%s", STR)	// in green

#define uart__print_1(STR)		printf("\033[0;31m");	printf("%s", STR)	// in red

#define uart__print_2(STR)		printf("\033[0;34m");	printf("%s", STR)	// in blue

#define uart__print_x(UART_NUMBER, STR)		uart__print_ ## UART_NUMBER (STR) 			

// macro with 1 or 2 arguments
#define SEL_UART_PRINT(_1, _2, MACRO_NAME, ...) MACRO_NAME
#define uart__print(...) SEL_UART_PRINT(__VA_ARGS__, uart__print_x, uart__print_0)(__VA_ARGS__)

