# x86_asm

This repo contains guides and resources I am using to learn [x86 assembly](https://en.wikipedia.org/wiki/X86_assembly_language) 64 bit.

## Registers
x86 has registers which are used to store values and addresses. They come in various sizes: 64 bits, 32 bits, 16 bits. My primary focus is the 64 bit registers.

## General purpose registers
- **rax**
- **rbx**
- **rcx**
- **rdx**
- **rsi**

## Special purpose registers
- **rbp**: This register stores the base pointer in the stack.
- **rsp**: This register stores the stack pointer. It represents the top of the stack.
- **rip**: This register stores the current working address.

## Istruction set
- **mov**: Moves values to a register. *mov rax, 0x2*
- **add**: Performs addition. *add arg1, arg2 == arg1 = arg1 + arg2*
- **sub**: Performs subtraction. *sub arg1, arg2 == arg1 = arg1 - arg2*
- **push**: Decrements the stack pointer and add a value to the stack. 
- **pop**: Increments the stack pointer and removes a value and adds it to a register.
- **lea**: Load effective address. Adds an address to a register.
- **cmp**: Compare its arguments and sets a flag.
- **jmp**: Jump to a particular address. 
- **je**: Jump if equal to.
- **jne**: Jump not equal to.
- **jg**: JUmp if greater than.
- **call**: Call a function.
- **ret**
- **leave**

## Tools for reverse engineering
- **strings**
- **objdump**
- **radare2**
- **gdb**
- **l/strace**
- **hexdump**




## References
- [x86 Assembly Guide](https://www.cs.virginia.edu/~evans/cs216/guides/x86.html)
- [registes in x86 assembly](https://www.cs.uaf.edu/2017/fall/cs301/lecture/09_11_registers.html)
