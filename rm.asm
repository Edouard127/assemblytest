section .data
        folder db 'epicfolder', 0

section .text
    global _start

    _start:
        mov rax, 84
        mov rdi, folder
        syscall

        call exit

exit:
        mov rax, 60
        mov rdi, 0
        syscall