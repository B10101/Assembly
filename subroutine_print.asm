section .data
    text1 db "Hello there", 10, 0

section .text
    global _start

    _start:
        
        mov rax, text1
        call _print

        mov rax, 60
        mov rdi, 0
        syscall
    
    _print:
        
        push rax
        mov rbx, 0

    _printLoop:
        inc rax
        inc rbx
        mov cl, [rax]
        cmp cl, 0
        jne _printLoop

        mov rax, 1
        mov rdi, 1
        pop rsi
        mov rdx, rbx
        syscall 
        ret

