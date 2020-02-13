#!/bin/sh

# author: Shardul Vaidya

as -g -o $1.o $1.s
echo "Assembled"
ld -o $1 $1.o 
echo "Linked"
gdb $1