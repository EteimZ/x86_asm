section .data
    name db "Zara Ali "

section .text
    global _start

_start:
    ; Writing the name "Zari Ali"
    mov rax, 1
    mov rdi, 1
    mov rsi, name
    mov rdx, 9

    syscall

    mov	[name],  dword "Nuha"    ; Changed the name to Nuha Ali

    ; Writing the name "Zari Ali"
    mov rax, 1
    mov rdi, 1
    mov rsi, name
    mov rdx, 8

    syscall
    
    mov rax, 60 ; Call the exit system call
    mov rdi, 0  ; Set the return value to zero to indicate success
    syscall

