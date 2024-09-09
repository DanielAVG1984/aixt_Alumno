// Project Name: Aixt project, https://gitlab.com/fermarsan/aixt-project.git
// File Name: uart print.c.v
// Author: Luis Alfredo Pinto Medina and Fernando M. Santa
// Date: 2024
// License: MIT
//
// Description: Pin management functions
//              (PIC16F886 port)

module uart

#define uart__write(DATA)   while (TRMT == 0);    TXREG = DATA
