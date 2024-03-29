%include "io.inc"
section .data
    i dd 2
    j dd 1
    contador dd 0
    N dd 10 ; replace 100 with your desired value of n

section .text
    global main

main:
    mov eax, [i]
    cmp eax, [N]
    jg end_main

loop_i:
    mov eax, [j]
    cmp eax, [i]
    jg increment_i

loop_j:
    mov eax, [i]
    cdq
    idiv dword [j]
    cmp edx, 0
    jne increment_j

    add dword [contador], 1

increment_j:
    add dword [j], 1
    jmp loop_i

increment_i:
    cmp dword [contador], 2
    jne skip_print

    PRINT_UDEC 4, i
    NEWLINE

skip_print:
    mov dword [j], 1
    mov dword [contador], 0
    add dword [i], 1
    jmp main

end_main:
    xor eax, eax
    ret
