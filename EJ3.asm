%include "io.inc"
section .data
    i dd 2
    j dd 1
    contador dd 0
    cDiv dd 0
    N dd 5

section .text
    global main

main:
    mov eax, [contador]
    cmp eax, [N]
    jge end_main

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

    add dword [cDiv], 1

increment_j:
    add dword [j], 1
    jmp loop_i

increment_i:
    cmp dword [cDiv], 2
    jne skip_print

    add dword [contador], 1
    mov eax, [contador]
    cmp eax, [N]
    jne skip_print
    PRINT_UDEC 4, i
    NEWLINE

skip_print:
    mov dword [j], 1
    mov dword [cDiv], 0
    add dword [i], 1
    jmp main

end_main:
    xor eax, eax
    ret