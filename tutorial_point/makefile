# Makefile for NASM program with arguments

PROGRAM_NAME ?= default_program

all: compile run cleanup

compile:
	@nasm -felf64 $(PROGRAM_NAME).asm
	@ld $(PROGRAM_NAME).o

run:
	@./a.out

cleanup:
	@rm -f a.out $(PROGRAM_NAME).o

.PHONY: all compile run cleanup

