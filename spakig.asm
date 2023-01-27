format ELF64
section '.text' executable
public _start
; headptr_isnull:
; headcstr_len:
; headcstr_print:
; headcstr_cr:
; headcstr_println:
; headcstr_eq:
; headcstr_cpy:
; headcstr_last:
; headcstr_clear:
; headcstr_cat:
; headcstr_isnum:
; headcstr_int:
; headcstr_split:
; headcstr_iter:
proc_cstr_len:
    pop rax
    push rax
    push rax
    pop rax
    xor rbx, rbx
    mov bl, [rax]
    push rbx
    push qword 0
    xor rcx, rcx
    mov rdx, 1
    pop rax
    pop rbx
    cmp rax, rbx
    cmove rcx, rdx
    push rcx
    pop rbx
    test rbx, rbx
.blockstart_0: ; if
    jz .blockend_0
    add rsp, 8
    push qword 0
    mov rax, [ret_stack_rsp]
    mov rax, [rax - 8]
    mov [loc_stack_rsp], rax
    mov rax, [ret_stack_rsp]
    sub rax, 16
    mov qword [ret_stack_rsp], rax
    add rax, 16
    jmp qword [rax]
.blockend_0: ; if
    pop rax
    push rax
    push rax
.blockstart_1: ; do
    push qword 1
    pop rax
    pop rbx
    add rax, rbx
    push rax
    pop rax
    push rax
    push rax
    pop rax
    xor rbx, rbx
    mov bl, [rax]
    push rbx
    pop rbx
    test rbx, rbx
    jnz .blockstart_1
.blockend_1: ; do
    pop rax
    pop rbx
    push rbx
    push rax
    push rbx
    pop rbx
    pop rax
    sub rax, rbx
    push rax
    pop rax
    pop rbx
    push rax
    push rbx
    add rsp, 8
    mov rax, [ret_stack_rsp]
    mov rax, [rax - 8]
    mov [loc_stack_rsp], rax
    mov rax, [ret_stack_rsp]
    sub rax, 16
    mov qword [ret_stack_rsp], rax
    add rax, 16
    jmp qword [rax]
proc_cstr_print:
    pop rax
    push rax
    push rax
.blockstart_0: ; call
    mov rax, [ret_stack_rsp]
    add rax, 16
    mov rbx, [loc_stack_rsp]
    mov qword [rax - 8], rbx
    mov qword [ret_stack_rsp], rax
    mov qword [rax], .blockend_0
    jmp proc_cstr_len
.blockend_0: ; call
    pop rax
    pop rbx
    push rax
    push rbx
    push qword 1
    push qword 1
    pop rax
    pop rdi
    pop rsi
    pop rdx
    syscall
    push rax
    add rsp, 8
    mov rax, [ret_stack_rsp]
    mov rax, [rax - 8]
    mov [loc_stack_rsp], rax
    mov rax, [ret_stack_rsp]
    sub rax, 16
    mov qword [ret_stack_rsp], rax
    add rax, 16
    jmp qword [rax]
proc_cstr_cr:
    push qword 1
    push str_0
    push qword 1
    push qword 1
    pop rax
    pop rdi
    pop rsi
    pop rdx
    syscall
    push rax
    add rsp, 8
    mov rax, [ret_stack_rsp]
    mov rax, [rax - 8]
    mov [loc_stack_rsp], rax
    mov rax, [ret_stack_rsp]
    sub rax, 16
    mov qword [ret_stack_rsp], rax
    add rax, 16
    jmp qword [rax]
proc_cstr_println:
.blockstart_0: ; call
    mov rax, [ret_stack_rsp]
    add rax, 16
    mov rbx, [loc_stack_rsp]
    mov qword [rax - 8], rbx
    mov qword [ret_stack_rsp], rax
    mov qword [rax], .blockend_0
    jmp proc_cstr_print
.blockend_0: ; call
.blockstart_1: ; call
    mov rax, [ret_stack_rsp]
    add rax, 16
    mov rbx, [loc_stack_rsp]
    mov qword [rax - 8], rbx
    mov qword [ret_stack_rsp], rax
    mov qword [rax], .blockend_1
    jmp proc_cstr_cr
.blockend_1: ; call
    mov rax, [ret_stack_rsp]
    mov rax, [rax - 8]
    mov [loc_stack_rsp], rax
    mov rax, [ret_stack_rsp]
    sub rax, 16
    mov qword [ret_stack_rsp], rax
    add rax, 16
    jmp qword [rax]
proc_cstr_eq:
    push qword 1
    pop rbx
    pop rax
    sub rax, rbx
    push rax
    pop rax
    pop rbx
    push rax
    push rbx
    push qword 1
    pop rbx
    pop rax
    sub rax, rbx
    push rax
.blockstart_0: ; do
    push qword 1
    pop rax
    pop rbx
    add rax, rbx
    push rax
    pop rax
    pop rbx
    push rax
    push rbx
    push qword 1
    pop rax
    pop rbx
    add rax, rbx
    push rax
    pop rax
    pop rbx
    push rbx
    push rax
    push rbx
    pop rax
    xor rbx, rbx
    mov bl, [rax]
    push rbx
    pop rax
    pop rbx
    push rbx
    push rax
    push rbx
    pop rax
    xor rbx, rbx
    mov bl, [rax]
    push rbx
    pop rax
    pop rbx
    push rbx
    push rax
    push rbx
    push qword 0
    xor rcx, rcx
    mov rdx, 1
    pop rax
    pop rbx
    cmp rax, rbx
    cmove rcx, rdx
    push rcx
    pop rax
    pop rbx
    push rbx
    push rax
    push rbx
    push qword 0
    xor rcx, rcx
    mov rdx, 1
    pop rax
    pop rbx
    cmp rax, rbx
    cmove rcx, rdx
    push rcx
    pop rax
    pop rbx
    and rax, rbx
    push rax
    pop rbx
    test rbx, rbx
.blockstart_1: ; if
    jz .blockend_1
    add rsp, 8
    add rsp, 8
    add rsp, 8
    add rsp, 8
    push qword 1
    mov rax, [ret_stack_rsp]
    mov rax, [rax - 8]
    mov [loc_stack_rsp], rax
    mov rax, [ret_stack_rsp]
    sub rax, 16
    mov qword [ret_stack_rsp], rax
    add rax, 16
    jmp qword [rax]
.blockend_1: ; if
    pop rax
    pop rbx
    push rbx
    push rax
    push rbx
    push qword 0
    xor rcx, rcx
    mov rdx, 1
    pop rax
    pop rbx
    cmp rax, rbx
    cmove rcx, rdx
    push rcx
    pop rax
    pop rbx
    push rbx
    push rax
    push rbx
    push qword 0
    xor rcx, rcx
    mov rdx, 1
    pop rax
    pop rbx
    cmp rax, rbx
    cmove rcx, rdx
    push rcx
    pop rax
    pop rbx
    or rax, rbx
    push rax
    pop rbx
    test rbx, rbx
.blockstart_2: ; if
    jz .blockend_2
    add rsp, 8
    add rsp, 8
    add rsp, 8
    add rsp, 8
    push qword 0
    mov rax, [ret_stack_rsp]
    mov rax, [rax - 8]
    mov [loc_stack_rsp], rax
    mov rax, [ret_stack_rsp]
    sub rax, 16
    mov qword [ret_stack_rsp], rax
    add rax, 16
    jmp qword [rax]
.blockend_2: ; if
    xor rcx, rcx
    mov rdx, 1
    pop rax
    pop rbx
    cmp rax, rbx
    cmove rcx, rdx
    push rcx
    pop rbx
    test rbx, rbx
    jnz .blockstart_0
.blockend_0: ; do
    add rsp, 8
    add rsp, 8
    push qword 0
    mov rax, [ret_stack_rsp]
    mov rax, [rax - 8]
    mov [loc_stack_rsp], rax
    mov rax, [ret_stack_rsp]
    sub rax, 16
    mov qword [ret_stack_rsp], rax
    add rax, 16
    jmp qword [rax]
proc_cstr_cpy:
    pop rax
    pop rbx
    push rbx
    push rax
    push rbx
    pop rax
    pop rbx
    push rbx
    push rax
    push rbx
.blockstart_0: ; do
    pop rax
    pop rbx
    push rbx
    push rax
    push rbx
    pop rax
    pop rbx
    push rbx
    push rax
    push rbx
    pop rax
    xor rbx, rbx
    mov bl, [rax]
    push rbx
    pop rbx
    pop rax
    mov byte [rax], bl
    push rax
    add rsp, 8
    pop rax
    pop rbx
    push rax
    push rbx
    push qword 1
    pop rax
    pop rbx
    add rax, rbx
    push rax
    pop rax
    pop rbx
    push rax
    push rbx
    push qword 1
    pop rax
    pop rbx
    add rax, rbx
    push rax
    pop rax
    push rax
    push rax
    pop rax
    xor rbx, rbx
    mov bl, [rax]
    push rbx
    push qword 0
    xor rcx, rcx
    mov rdx, 1
    pop rax
    pop rbx
    cmp rax, rbx
    cmovne rcx, rdx
    push rcx
    pop rbx
    test rbx, rbx
    jnz .blockstart_0
.blockend_0: ; do
    pop rax
    pop rbx
    push rax
    push rbx
    push qword 1
    pop rax
    pop rbx
    add rax, rbx
    push rax
    push qword 0
    pop rbx
    pop rax
    mov byte [rax], bl
    push rax
    add rsp, 8
    add rsp, 8
    mov rax, [ret_stack_rsp]
    mov rax, [rax - 8]
    mov [loc_stack_rsp], rax
    mov rax, [ret_stack_rsp]
    sub rax, 16
    mov qword [ret_stack_rsp], rax
    add rax, 16
    jmp qword [rax]
proc_cstr_last:
    push qword 1
    pop rbx
    pop rax
    sub rax, rbx
    push rax
.blockstart_0: ; do
    push qword 1
    pop rax
    pop rbx
    add rax, rbx
    push rax
    pop rax
    push rax
    push rax
    pop rax
    xor rbx, rbx
    mov bl, [rax]
    push rbx
    push qword 0
    xor rcx, rcx
    mov rdx, 1
    pop rax
    pop rbx
    cmp rax, rbx
    cmovne rcx, rdx
    push rcx
    pop rbx
    test rbx, rbx
    jnz .blockstart_0
.blockend_0: ; do
    push qword 1
    pop rbx
    pop rax
    sub rax, rbx
    push rax
    pop rax
    xor rbx, rbx
    mov bl, [rax]
    push rbx
    mov rax, [ret_stack_rsp]
    mov rax, [rax - 8]
    mov [loc_stack_rsp], rax
    mov rax, [ret_stack_rsp]
    sub rax, 16
    mov qword [ret_stack_rsp], rax
    add rax, 16
    jmp qword [rax]
proc_cstr_clear:
    pop rax
    push rax
    push rax
    pop rax
    xor rbx, rbx
    mov bl, [rax]
    push rbx
    push qword 0
    xor rcx, rcx
    mov rdx, 1
    pop rax
    pop rbx
    cmp rax, rbx
    cmove rcx, rdx
    push rcx
    pop rbx
    test rbx, rbx
.blockstart_0: ; if
    jz .blockend_0
    mov rax, [ret_stack_rsp]
    mov rax, [rax - 8]
    mov [loc_stack_rsp], rax
    mov rax, [ret_stack_rsp]
    sub rax, 16
    mov qword [ret_stack_rsp], rax
    add rax, 16
    jmp qword [rax]
.blockend_0: ; if
    pop rax
    push rax
    push rax
.blockstart_1: ; do
    pop rax
    push rax
    push rax
    push qword 0
    pop rbx
    pop rax
    mov byte [rax], bl
    push rax
    add rsp, 8
    push qword 1
    pop rax
    pop rbx
    add rax, rbx
    push rax
    pop rax
    push rax
    push rax
    pop rax
    xor rbx, rbx
    mov bl, [rax]
    push rbx
    pop rbx
    test rbx, rbx
    jnz .blockstart_1
.blockend_1: ; do
    add rsp, 8
    mov rax, [ret_stack_rsp]
    mov rax, [rax - 8]
    mov [loc_stack_rsp], rax
    mov rax, [ret_stack_rsp]
    sub rax, 16
    mov qword [ret_stack_rsp], rax
    add rax, 16
    jmp qword [rax]
proc_cstr_cat:
    pop rax
    pop rbx
    push rbx
    push rax
    push rbx
    pop rax
    push rax
    push rax
.blockstart_0: ; call
    mov rax, [ret_stack_rsp]
    add rax, 16
    mov rbx, [loc_stack_rsp]
    mov qword [rax - 8], rbx
    mov qword [ret_stack_rsp], rax
    mov qword [rax], .blockend_0
    jmp proc_cstr_len
.blockend_0: ; call
    pop rax
    pop rbx
    add rax, rbx
    push rax
    pop rax
    pop rbx
    push rax
    push rbx
.blockstart_1: ; call
    mov rax, [ret_stack_rsp]
    add rax, 16
    mov rbx, [loc_stack_rsp]
    mov qword [rax - 8], rbx
    mov qword [ret_stack_rsp], rax
    mov qword [rax], .blockend_1
    jmp proc_cstr_cpy
.blockend_1: ; call
    add rsp, 8
    add rsp, 8
    mov rax, [ret_stack_rsp]
    mov rax, [rax - 8]
    mov [loc_stack_rsp], rax
    mov rax, [ret_stack_rsp]
    sub rax, 16
    mov qword [ret_stack_rsp], rax
    add rax, 16
    jmp qword [rax]
proc_cstr_isnum:
    mov rax, [loc_stack_rsp]
    add rax, 1
    mov [loc_stack_rsp], rax
    mov rax, [loc_stack_rsp]
    add rax, 1
    mov [loc_stack_rsp], rax
    mov rax, [ret_stack_rsp]
    mov rax, [rax-8]
    add rax, 0
    push rax
    push qword 48
    pop rbx
    pop rax
    mov byte [rax], bl
    push rax
    add rsp, 8
    mov rax, [ret_stack_rsp]
    mov rax, [rax-8]
    add rax, 1
    push rax
    push qword 57
    pop rbx
    pop rax
    mov byte [rax], bl
    push rax
    add rsp, 8
    pop rax
    push rax
    push rax
    pop rax
    push rax
    push rax
.blockstart_0: ; call
    mov rax, [ret_stack_rsp]
    add rax, 16
    mov rbx, [loc_stack_rsp]
    mov qword [rax - 8], rbx
    mov qword [ret_stack_rsp], rax
    mov qword [rax], .blockend_0
    jmp proc_cstr_len
.blockend_0: ; call
    pop rax
    pop rbx
    add rax, rbx
    push rax
    push qword 1
    pop rbx
    pop rax
    sub rax, rbx
    push rax
    pop rax
    xor rbx, rbx
    mov bl, [rax]
    push rbx
    pop rax
    push rax
    push rax
    push qword 98
    xor rcx, rcx
    mov rdx, 1
    pop rax
    pop rbx
    cmp rax, rbx
    cmove rcx, rdx
    push rcx
    pop rbx
    test rbx, rbx
.blockstart_1: ; if
    jz .blockend_1
    mov rax, [ret_stack_rsp]
    mov rax, [rax-8]
    add rax, 1
    push rax
    push qword 49
    pop rbx
    pop rax
    mov byte [rax], bl
    push rax
    add rsp, 8
.blockend_1: ; if
    pop rax
    push rax
    push rax
    push qword 104
    xor rcx, rcx
    mov rdx, 1
    pop rax
    pop rbx
    cmp rax, rbx
    cmove rcx, rdx
    push rcx
    pop rbx
    test rbx, rbx
.blockstart_2: ; if
    jz .blockend_2
    mov rax, [ret_stack_rsp]
    mov rax, [rax-8]
    add rax, 1
    push rax
    push qword 102
    pop rbx
    pop rax
    mov byte [rax], bl
    push rax
    add rsp, 8
.blockend_2: ; if
    add rsp, 8
    pop rax
    push rax
    push rax
    pop rax
    xor rbx, rbx
    mov bl, [rax]
    push rbx
    push qword 45
    xor rcx, rcx
    mov rdx, 1
    pop rax
    pop rbx
    cmp rax, rbx
    cmove rcx, rdx
    push rcx
    pop rbx
    test rbx, rbx
.blockstart_3: ; if
    jz .blockend_3
    push qword 1
    pop rax
    pop rbx
    add rax, rbx
    push rax
.blockend_3: ; if
.blockstart_4: ; do
    pop rax
    push rax
    push rax
    pop rax
    xor rbx, rbx
    mov bl, [rax]
    push rbx
    pop rax
    push rax
    push rax
    mov rax, [ret_stack_rsp]
    mov rax, [rax-8]
    add rax, 0
    push rax
    pop rax
    xor rbx, rbx
    mov bl, [rax]
    push rbx
    xor rcx, rcx
    mov rdx, 1
    pop rbx
    pop rax
    cmp rax, rbx
    cmovl rcx, rdx
    push rcx
    pop rax
    pop rbx
    push rbx
    push rax
    push rbx
    mov rax, [ret_stack_rsp]
    mov rax, [rax-8]
    add rax, 1
    push rax
    pop rax
    xor rbx, rbx
    mov bl, [rax]
    push rbx
    xor rcx, rcx
    mov rdx, 1
    pop rbx
    pop rax
    cmp rax, rbx
    cmovg rcx, rdx
    push rcx
    pop rax
    pop rbx
    or rax, rbx
    push rax
    pop rbx
    test rbx, rbx
.blockstart_5: ; if
    jz .blockend_5
    add rsp, 8
    pop rax
    push rax
    push rax
    pop rax
    xor rbx, rbx
    mov bl, [rax]
    push rbx
    push qword 98
    xor rcx, rcx
    mov rdx, 1
    pop rax
    pop rbx
    cmp rax, rbx
    cmove rcx, rdx
    push rcx
    pop rax
    pop rbx
    push rbx
    push rax
    push rbx
    pop rax
    xor rbx, rbx
    mov bl, [rax]
    push rbx
    push qword 104
    xor rcx, rcx
    mov rdx, 1
    pop rax
    pop rbx
    cmp rax, rbx
    cmove rcx, rdx
    push rcx
    pop rax
    pop rbx
    or rax, rbx
    push rax
    pop rax
    pop rbx
    push rbx
    push rax
    push rbx
.blockstart_6: ; call
    mov rax, [ret_stack_rsp]
    add rax, 16
    mov rbx, [loc_stack_rsp]
    mov qword [rax - 8], rbx
    mov qword [ret_stack_rsp], rax
    mov qword [rax], .blockend_6
    jmp proc_cstr_len
.blockend_6: ; call
    push qword 1
    xor rcx, rcx
    mov rdx, 1
    pop rax
    pop rbx
    cmp rax, rbx
    cmove rcx, rdx
    push rcx
    pop rax
    pop rbx
    and rax, rbx
    push rax
    pop rax
    pop rbx
    push rax
    push rbx
    add rsp, 8
    mov rax, [ret_stack_rsp]
    mov rax, [rax - 8]
    mov [loc_stack_rsp], rax
    mov rax, [ret_stack_rsp]
    sub rax, 16
    mov qword [ret_stack_rsp], rax
    add rax, 16
    jmp qword [rax]
.blockend_5: ; if
    add rsp, 8
    push qword 1
    pop rax
    pop rbx
    add rax, rbx
    push rax
    pop rax
    push rax
    push rax
    pop rax
    xor rbx, rbx
    mov bl, [rax]
    push rbx
    push qword 0
    xor rcx, rcx
    mov rdx, 1
    pop rax
    pop rbx
    cmp rax, rbx
    cmovne rcx, rdx
    push rcx
    pop rbx
    test rbx, rbx
    jnz .blockstart_4
.blockend_4: ; do
    add rsp, 8
    push qword 1
    mov rax, [ret_stack_rsp]
    mov rax, [rax - 8]
    mov [loc_stack_rsp], rax
    mov rax, [ret_stack_rsp]
    sub rax, 16
    mov qword [ret_stack_rsp], rax
    add rax, 16
    jmp qword [rax]
proc_cstr_int:
    mov rax, [loc_stack_rsp]
    add rax, 8
    mov [loc_stack_rsp], rax
    mov rax, [ret_stack_rsp]
    mov rax, [rax-8]
    add rax, 0
    push rax
    push qword 10
    pop rbx
    pop rax
    mov byte [rax], bl
    push rax
    add rsp, 8
    pop rax
    push rax
    push rax
.blockstart_0: ; call
    mov rax, [ret_stack_rsp]
    add rax, 16
    mov rbx, [loc_stack_rsp]
    mov qword [rax - 8], rbx
    mov qword [ret_stack_rsp], rax
    mov qword [rax], .blockend_0
    jmp proc_cstr_isnum
.blockend_0: ; call
    pop rax
    xor rax, 1
    push rax
    pop rbx
    test rbx, rbx
.blockstart_1: ; if
    jz .blockend_1
    add rsp, 8
    push qword 0
    mov rax, [ret_stack_rsp]
    mov rax, [rax - 8]
    mov [loc_stack_rsp], rax
    mov rax, [ret_stack_rsp]
    sub rax, 16
    mov qword [ret_stack_rsp], rax
    add rax, 16
    jmp qword [rax]
.blockend_1: ; if
    pop rax
    push rax
    push rax
    pop rax
    push rax
    push rax
.blockstart_2: ; call
    mov rax, [ret_stack_rsp]
    add rax, 16
    mov rbx, [loc_stack_rsp]
    mov qword [rax - 8], rbx
    mov qword [ret_stack_rsp], rax
    mov qword [rax], .blockend_2
    jmp proc_cstr_len
.blockend_2: ; call
    pop rax
    pop rbx
    add rax, rbx
    push rax
    push qword 1
    pop rbx
    pop rax
    sub rax, rbx
    push rax
    pop rax
    push rax
    push rax
    pop rax
    xor rbx, rbx
    mov bl, [rax]
    push rbx
    push qword 98
    xor rcx, rcx
    mov rdx, 1
    pop rax
    pop rbx
    cmp rax, rbx
    cmove rcx, rdx
    push rcx
    pop rbx
    test rbx, rbx
.blockstart_3: ; if
    jz .blockend_3
    mov rax, [ret_stack_rsp]
    mov rax, [rax-8]
    add rax, 0
    push rax
    push qword 2
    pop rbx
    pop rax
    mov byte [rax], bl
    push rax
    add rsp, 8
.blockend_3: ; if
    pop rax
    push rax
    push rax
    pop rax
    xor rbx, rbx
    mov bl, [rax]
    push rbx
    push qword 104
    xor rcx, rcx
    mov rdx, 1
    pop rax
    pop rbx
    cmp rax, rbx
    cmove rcx, rdx
    push rcx
    pop rbx
    test rbx, rbx
.blockstart_4: ; if
    jz .blockend_4
    mov rax, [ret_stack_rsp]
    mov rax, [rax-8]
    add rax, 0
    push rax
    push qword 16
    pop rbx
    pop rax
    mov byte [rax], bl
    push rax
    add rsp, 8
.blockend_4: ; if
    add rsp, 8
    push qword 0
.blockstart_5: ; do
    mov rax, [ret_stack_rsp]
    mov rax, [rax-8]
    add rax, 0
    push rax
    pop rax
    xor rbx, rbx
    mov bl, [rax]
    push rbx
    pop rax
    pop rbx
    imul rax, rbx
    push rax
    pop rax
    pop rbx
    push rbx
    push rax
    push rbx
    pop rax
    xor rbx, rbx
    mov bl, [rax]
    push rbx
    pop rax
    push rax
    push rax
    push qword 70
    push qword 1
    pop rax
    pop rbx
    add rax, rbx
    push rax
    xor rcx, rcx
    mov rdx, 1
    pop rbx
    pop rax
    cmp rax, rbx
    cmovl rcx, rdx
    push rcx
    pop rax
    pop rbx
    push rbx
    push rax
    push rbx
    push qword 65
    push qword 1
    pop rbx
    pop rax
    sub rax, rbx
    push rax
    xor rcx, rcx
    mov rdx, 1
    pop rbx
    pop rax
    cmp rax, rbx
    cmovg rcx, rdx
    push rcx
    pop rax
    pop rbx
    and rax, rbx
    push rax
    pop rbx
    test rbx, rbx
.blockstart_6: ; if
    jz .blockend_6
    push qword 65
    push qword 10
    pop rbx
    pop rax
    sub rax, rbx
    push rax
    pop rbx
    pop rax
    sub rax, rbx
    push rax
    push qword 48
    pop rax
    pop rbx
    add rax, rbx
    push rax
.blockend_6: ; if
    push qword 48
    pop rbx
    pop rax
    sub rax, rbx
    push rax
    pop rax
    pop rbx
    add rax, rbx
    push rax
    pop rax
    pop rbx
    push rax
    push rbx
    push qword 1
    pop rax
    pop rbx
    add rax, rbx
    push rax
    pop rax
    pop rbx
    push rax
    push rbx
    pop rax
    pop rbx
    push rbx
    push rax
    push rbx
    pop rax
    xor rbx, rbx
    mov bl, [rax]
    push rbx
    pop rax
    push rax
    push rax
    push qword 0
    xor rcx, rcx
    mov rdx, 1
    pop rax
    pop rbx
    cmp rax, rbx
    cmovne rcx, rdx
    push rcx
    pop rax
    pop rbx
    push rbx
    push rax
    push rbx
    push qword 98
    xor rcx, rcx
    mov rdx, 1
    pop rax
    pop rbx
    cmp rax, rbx
    cmovne rcx, rdx
    push rcx
    pop rax
    pop rbx
    and rax, rbx
    push rax
    pop rax
    pop rbx
    push rbx
    push rax
    push rbx
    push qword 104
    xor rcx, rcx
    mov rdx, 1
    pop rax
    pop rbx
    cmp rax, rbx
    cmovne rcx, rdx
    push rcx
    pop rax
    pop rbx
    and rax, rbx
    push rax
    pop rax
    pop rbx
    push rax
    push rbx
    add rsp, 8
    pop rbx
    test rbx, rbx
    jnz .blockstart_5
.blockend_5: ; do
    pop rax
    pop rbx
    push rax
    push rbx
    add rsp, 8
    mov rax, [ret_stack_rsp]
    mov rax, [rax - 8]
    mov [loc_stack_rsp], rax
    mov rax, [ret_stack_rsp]
    sub rax, 16
    mov qword [ret_stack_rsp], rax
    add rax, 16
    jmp qword [rax]
proc_cstr_split:
    mov rax, [loc_stack_rsp]
    add rax, 8
    mov [loc_stack_rsp], rax
    mov rax, [loc_stack_rsp]
    add rax, 8
    mov [loc_stack_rsp], rax
    mov rax, [ret_stack_rsp]
    mov rax, [rax-8]
    add rax, 8
    push rax
    pop rax
    pop rbx
    push rax
    push rbx
    pop rbx
    pop rax
    mov qword [rax], rbx
    push rax
    add rsp, 8
    mov rax, [ret_stack_rsp]
    mov rax, [rax-8]
    add rax, 0
    push rax
    pop rax
    pop rbx
    push rax
    push rbx
    pop rbx
    pop rax
    mov byte [rax], bl
    push rax
    add rsp, 8
    mov rax, [ret_stack_rsp]
    mov rax, [rax-8]
    add rax, 8
    push rax
    pop rax
    mov rbx, [rax]
    push rbx
.blockstart_0: ; call
    mov rax, [ret_stack_rsp]
    add rax, 16
    mov rbx, [loc_stack_rsp]
    mov qword [rax - 8], rbx
    mov qword [ret_stack_rsp], rax
    mov qword [rax], .blockend_0
    jmp proc_cstr_clear
.blockend_0: ; call
.blockstart_1: ; do
    pop rax
    pop rbx
    push rbx
    push rax
    push rbx
    pop rax
    xor rbx, rbx
    mov bl, [rax]
    push rbx
    mov rax, [ret_stack_rsp]
    mov rax, [rax-8]
    add rax, 0
    push rax
    pop rax
    xor rbx, rbx
    mov bl, [rax]
    push rbx
    xor rcx, rcx
    mov rdx, 1
    pop rax
    pop rbx
    cmp rax, rbx
    cmove rcx, rdx
    push rcx
    pop rbx
    test rbx, rbx
.blockstart_2: ; if
    jz .blockend_2
    add rsp, 8
    push qword 1
    pop rax
    pop rbx
    add rax, rbx
    push rax
    mov rax, [ret_stack_rsp]
    mov rax, [rax-8]
    add rax, 8
    push rax
    pop rax
    mov rbx, [rax]
    push rbx
    mov rax, [ret_stack_rsp]
    mov rax, [rax - 8]
    mov [loc_stack_rsp], rax
    mov rax, [ret_stack_rsp]
    sub rax, 16
    mov qword [ret_stack_rsp], rax
    add rax, 16
    jmp qword [rax]
.blockend_2: ; if
    pop rax
    pop rbx
    push rbx
    push rax
    push rbx
    pop rax
    xor rbx, rbx
    mov bl, [rax]
    push rbx
    pop rax
    pop rbx
    push rbx
    push rax
    push rbx
    pop rax
    pop rbx
    push rax
    push rbx
    pop rbx
    pop rax
    mov byte [rax], bl
    push rax
    add rsp, 8
    pop rax
    pop rbx
    push rax
    push rbx
    push qword 1
    pop rax
    pop rbx
    add rax, rbx
    push rax
    pop rax
    pop rbx
    push rax
    push rbx
    push qword 1
    pop rax
    pop rbx
    add rax, rbx
    push rax
    pop rax
    pop rbx
    push rbx
    push rax
    push rbx
    pop rax
    mov rbx, [rax]
    push rbx
    push qword 0
    xor rcx, rcx
    mov rdx, 1
    pop rax
    pop rbx
    cmp rax, rbx
    cmovne rcx, rdx
    push rcx
    pop rbx
    test rbx, rbx
    jnz .blockstart_1
.blockend_1: ; do
    mov rax, [ret_stack_rsp]
    mov rax, [rax - 8]
    mov [loc_stack_rsp], rax
    mov rax, [ret_stack_rsp]
    sub rax, 16
    mov qword [ret_stack_rsp], rax
    add rax, 16
    jmp qword [rax]
proc_cstr_iter:
    mov rax, [loc_stack_rsp]
    add rax, 8
    mov [loc_stack_rsp], rax
    mov rax, [ret_stack_rsp]
    mov rax, [rax-8]
    add rax, 0
    push rax
    pop rax
    pop rbx
    push rax
    push rbx
    pop rbx
    pop rax
    mov qword [rax], rbx
    push rax
    add rsp, 8
    mov rax, [ret_stack_rsp]
    mov rax, [rax-8]
    add rax, 0
    push rax
    pop rax
    mov rbx, [rax]
    push rbx
    pop rax
    xor rbx, rbx
    mov bl, [rax]
    push rbx
    push qword 0
    xor rcx, rcx
    mov rdx, 1
    pop rax
    pop rbx
    cmp rax, rbx
    cmove rcx, rdx
    push rcx
    pop rbx
    test rbx, rbx
.blockstart_0: ; if
    jz .blockend_0
    push qword 0
    push qword 0
    mov rax, [ret_stack_rsp]
    mov rax, [rax - 8]
    mov [loc_stack_rsp], rax
    mov rax, [ret_stack_rsp]
    sub rax, 16
    mov qword [ret_stack_rsp], rax
    add rax, 16
    jmp qword [rax]
.blockend_0: ; if
    mov rax, [ret_stack_rsp]
    mov rax, [rax-8]
    add rax, 0
    push rax
    pop rax
    mov rbx, [rax]
    push rbx
    push qword 1
    pop rax
    pop rbx
    add rax, rbx
    push rax
    mov rax, [ret_stack_rsp]
    mov rax, [rax-8]
    add rax, 0
    push rax
    pop rax
    mov rbx, [rax]
    push rbx
    mov rax, [ret_stack_rsp]
    mov rax, [rax - 8]
    mov [loc_stack_rsp], rax
    mov rax, [ret_stack_rsp]
    sub rax, 16
    mov qword [ret_stack_rsp], rax
    add rax, 16
    jmp qword [rax]
; headint_gettmp:
; headint_inctmpidx:
; headint_cstr:
; headint_cstrhex:
; headint_print:
; headint_printhex:
proc_int_gettmp:
    push mem+8; int_tmpresult
    push qword 30
    pop rax
    pop rbx
    add rax, rbx
    push rax
    push mem+0; int_tmpidx
    pop rax
    mov rbx, [rax]
    push rbx
    pop rbx
    pop rax
    sub rax, rbx
    push rax
    mov rax, [ret_stack_rsp]
    mov rax, [rax - 8]
    mov [loc_stack_rsp], rax
    mov rax, [ret_stack_rsp]
    sub rax, 16
    mov qword [ret_stack_rsp], rax
    add rax, 16
    jmp qword [rax]
proc_int_inctmpidx:
    push mem+0; int_tmpidx
    push mem+0; int_tmpidx
    pop rax
    mov rbx, [rax]
    push rbx
    push qword 1
    pop rax
    pop rbx
    add rax, rbx
    push rax
    pop rbx
    pop rax
    mov byte [rax], bl
    push rax
    add rsp, 8
    mov rax, [ret_stack_rsp]
    mov rax, [rax - 8]
    mov [loc_stack_rsp], rax
    mov rax, [ret_stack_rsp]
    sub rax, 16
    mov qword [ret_stack_rsp], rax
    add rax, 16
    jmp qword [rax]
proc_int_cstr:
.blockstart_0: ; do
    push qword 10
    xor rdx, rdx
    pop rbx
    pop rax
    idiv rbx
    push rax
    push rdx
    push qword 48
    pop rax
    pop rbx
    add rax, rbx
    push rax
.blockstart_1: ; call
    mov rax, [ret_stack_rsp]
    add rax, 16
    mov rbx, [loc_stack_rsp]
    mov qword [rax - 8], rbx
    mov qword [ret_stack_rsp], rax
    mov qword [rax], .blockend_1
    jmp proc_int_gettmp
.blockend_1: ; call
    pop rax
    pop rbx
    push rax
    push rbx
    pop rbx
    pop rax
    mov byte [rax], bl
    push rax
    add rsp, 8
.blockstart_2: ; call
    mov rax, [ret_stack_rsp]
    add rax, 16
    mov rbx, [loc_stack_rsp]
    mov qword [rax - 8], rbx
    mov qword [ret_stack_rsp], rax
    mov qword [rax], .blockend_2
    jmp proc_int_inctmpidx
.blockend_2: ; call
    pop rax
    push rax
    push rax
    push qword 0
    xor rcx, rcx
    mov rdx, 1
    pop rax
    pop rbx
    cmp rax, rbx
    cmovne rcx, rdx
    push rcx
    pop rbx
    test rbx, rbx
    jnz .blockstart_0
.blockend_0: ; do
    add rsp, 8
.blockstart_3: ; call
    mov rax, [ret_stack_rsp]
    add rax, 16
    mov rbx, [loc_stack_rsp]
    mov qword [rax - 8], rbx
    mov qword [ret_stack_rsp], rax
    mov qword [rax], .blockend_3
    jmp proc_int_gettmp
.blockend_3: ; call
    push qword 1
    pop rax
    pop rbx
    add rax, rbx
    push rax
    push mem+0; int_tmpidx
    push qword 0
    pop rbx
    pop rax
    mov byte [rax], bl
    push rax
    add rsp, 8
    mov rax, [ret_stack_rsp]
    mov rax, [rax - 8]
    mov [loc_stack_rsp], rax
    mov rax, [ret_stack_rsp]
    sub rax, 16
    mov qword [ret_stack_rsp], rax
    add rax, 16
    jmp qword [rax]
proc_int_cstrhex:
.blockstart_0: ; do
    push qword 16
    xor rdx, rdx
    pop rbx
    pop rax
    idiv rbx
    push rax
    push rdx
    pop rax
    push rax
    push rax
    push qword 9
    xor rcx, rcx
    mov rdx, 1
    pop rbx
    pop rax
    cmp rax, rbx
    cmovg rcx, rdx
    push rcx
    pop rbx
    test rbx, rbx
.blockstart_1: ; if
    jz .blockend_1
    push qword 97
    push qword 10
    pop rbx
    pop rax
    sub rax, rbx
    push rax
    pop rax
    pop rbx
    add rax, rbx
    push rax
.blockend_1: ; if
    pop rax
    push rax
    push rax
    push qword 10
    xor rcx, rcx
    mov rdx, 1
    pop rbx
    pop rax
    cmp rax, rbx
    cmovl rcx, rdx
    push rcx
    pop rbx
    test rbx, rbx
.blockstart_2: ; if
    jz .blockend_2
    push qword 48
    pop rax
    pop rbx
    add rax, rbx
    push rax
.blockend_2: ; if
.blockstart_3: ; call
    mov rax, [ret_stack_rsp]
    add rax, 16
    mov rbx, [loc_stack_rsp]
    mov qword [rax - 8], rbx
    mov qword [ret_stack_rsp], rax
    mov qword [rax], .blockend_3
    jmp proc_int_gettmp
.blockend_3: ; call
    pop rax
    pop rbx
    push rax
    push rbx
    pop rbx
    pop rax
    mov byte [rax], bl
    push rax
    add rsp, 8
.blockstart_4: ; call
    mov rax, [ret_stack_rsp]
    add rax, 16
    mov rbx, [loc_stack_rsp]
    mov qword [rax - 8], rbx
    mov qword [ret_stack_rsp], rax
    mov qword [rax], .blockend_4
    jmp proc_int_inctmpidx
.blockend_4: ; call
    pop rax
    push rax
    push rax
    push qword 0
    xor rcx, rcx
    mov rdx, 1
    pop rax
    pop rbx
    cmp rax, rbx
    cmovne rcx, rdx
    push rcx
    pop rbx
    test rbx, rbx
    jnz .blockstart_0
.blockend_0: ; do
    add rsp, 8
.blockstart_5: ; call
    mov rax, [ret_stack_rsp]
    add rax, 16
    mov rbx, [loc_stack_rsp]
    mov qword [rax - 8], rbx
    mov qword [ret_stack_rsp], rax
    mov qword [rax], .blockend_5
    jmp proc_int_gettmp
.blockend_5: ; call
    push qword 36
    pop rbx
    pop rax
    mov byte [rax], bl
    push rax
    add rsp, 8
.blockstart_6: ; call
    mov rax, [ret_stack_rsp]
    add rax, 16
    mov rbx, [loc_stack_rsp]
    mov qword [rax - 8], rbx
    mov qword [ret_stack_rsp], rax
    mov qword [rax], .blockend_6
    jmp proc_int_inctmpidx
.blockend_6: ; call
.blockstart_7: ; call
    mov rax, [ret_stack_rsp]
    add rax, 16
    mov rbx, [loc_stack_rsp]
    mov qword [rax - 8], rbx
    mov qword [ret_stack_rsp], rax
    mov qword [rax], .blockend_7
    jmp proc_int_gettmp
.blockend_7: ; call
    push qword 1
    pop rax
    pop rbx
    add rax, rbx
    push rax
    push mem+0; int_tmpidx
    push qword 0
    pop rbx
    pop rax
    mov byte [rax], bl
    push rax
    add rsp, 8
    mov rax, [ret_stack_rsp]
    mov rax, [rax - 8]
    mov [loc_stack_rsp], rax
    mov rax, [ret_stack_rsp]
    sub rax, 16
    mov qword [ret_stack_rsp], rax
    add rax, 16
    jmp qword [rax]
proc_int_print:
.blockstart_0: ; call
    mov rax, [ret_stack_rsp]
    add rax, 16
    mov rbx, [loc_stack_rsp]
    mov qword [rax - 8], rbx
    mov qword [ret_stack_rsp], rax
    mov qword [rax], .blockend_0
    jmp proc_int_cstr
.blockend_0: ; call
.blockstart_1: ; call
    mov rax, [ret_stack_rsp]
    add rax, 16
    mov rbx, [loc_stack_rsp]
    mov qword [rax - 8], rbx
    mov qword [ret_stack_rsp], rax
    mov qword [rax], .blockend_1
    jmp proc_cstr_print
.blockend_1: ; call
    push mem+0; int_tmpidx
    push qword 0
    pop rbx
    pop rax
    mov byte [rax], bl
    push rax
    add rsp, 8
    mov rax, [ret_stack_rsp]
    mov rax, [rax - 8]
    mov [loc_stack_rsp], rax
    mov rax, [ret_stack_rsp]
    sub rax, 16
    mov qword [ret_stack_rsp], rax
    add rax, 16
    jmp qword [rax]
proc_int_printhex:
.blockstart_0: ; do
    push qword 16
    xor rdx, rdx
    pop rbx
    pop rax
    idiv rbx
    push rax
    push rdx
    pop rax
    push rax
    push rax
    push qword 9
    xor rcx, rcx
    mov rdx, 1
    pop rbx
    pop rax
    cmp rax, rbx
    cmovg rcx, rdx
    push rcx
    pop rbx
    test rbx, rbx
.blockstart_1: ; if
    jz .blockend_1
    push qword 97
    push qword 10
    pop rbx
    pop rax
    sub rax, rbx
    push rax
    pop rax
    pop rbx
    add rax, rbx
    push rax
.blockend_1: ; if
    pop rax
    push rax
    push rax
    push qword 10
    xor rcx, rcx
    mov rdx, 1
    pop rbx
    pop rax
    cmp rax, rbx
    cmovl rcx, rdx
    push rcx
    pop rbx
    test rbx, rbx
.blockstart_2: ; if
    jz .blockend_2
    push qword 48
    pop rax
    pop rbx
    add rax, rbx
    push rax
.blockend_2: ; if
.blockstart_3: ; call
    mov rax, [ret_stack_rsp]
    add rax, 16
    mov rbx, [loc_stack_rsp]
    mov qword [rax - 8], rbx
    mov qword [ret_stack_rsp], rax
    mov qword [rax], .blockend_3
    jmp proc_int_gettmp
.blockend_3: ; call
    pop rax
    pop rbx
    push rax
    push rbx
    pop rbx
    pop rax
    mov byte [rax], bl
    push rax
    add rsp, 8
.blockstart_4: ; call
    mov rax, [ret_stack_rsp]
    add rax, 16
    mov rbx, [loc_stack_rsp]
    mov qword [rax - 8], rbx
    mov qword [ret_stack_rsp], rax
    mov qword [rax], .blockend_4
    jmp proc_int_inctmpidx
.blockend_4: ; call
    pop rax
    push rax
    push rax
    push qword 0
    xor rcx, rcx
    mov rdx, 1
    pop rax
    pop rbx
    cmp rax, rbx
    cmovne rcx, rdx
    push rcx
    pop rbx
    test rbx, rbx
    jnz .blockstart_0
.blockend_0: ; do
    add rsp, 8
.blockstart_5: ; call
    mov rax, [ret_stack_rsp]
    add rax, 16
    mov rbx, [loc_stack_rsp]
    mov qword [rax - 8], rbx
    mov qword [ret_stack_rsp], rax
    mov qword [rax], .blockend_5
    jmp proc_int_gettmp
.blockend_5: ; call
    push qword 120
    pop rbx
    pop rax
    mov byte [rax], bl
    push rax
    add rsp, 8
.blockstart_6: ; call
    mov rax, [ret_stack_rsp]
    add rax, 16
    mov rbx, [loc_stack_rsp]
    mov qword [rax - 8], rbx
    mov qword [ret_stack_rsp], rax
    mov qword [rax], .blockend_6
    jmp proc_int_inctmpidx
.blockend_6: ; call
.blockstart_7: ; call
    mov rax, [ret_stack_rsp]
    add rax, 16
    mov rbx, [loc_stack_rsp]
    mov qword [rax - 8], rbx
    mov qword [ret_stack_rsp], rax
    mov qword [rax], .blockend_7
    jmp proc_int_gettmp
.blockend_7: ; call
    push qword 48
    pop rbx
    pop rax
    mov byte [rax], bl
    push rax
    add rsp, 8
.blockstart_8: ; call
    mov rax, [ret_stack_rsp]
    add rax, 16
    mov rbx, [loc_stack_rsp]
    mov qword [rax - 8], rbx
    mov qword [ret_stack_rsp], rax
    mov qword [rax], .blockend_8
    jmp proc_int_inctmpidx
.blockend_8: ; call
.blockstart_9: ; call
    mov rax, [ret_stack_rsp]
    add rax, 16
    mov rbx, [loc_stack_rsp]
    mov qword [rax - 8], rbx
    mov qword [ret_stack_rsp], rax
    mov qword [rax], .blockend_9
    jmp proc_int_gettmp
.blockend_9: ; call
    push qword 1
    pop rax
    pop rbx
    add rax, rbx
    push rax
.blockstart_10: ; call
    mov rax, [ret_stack_rsp]
    add rax, 16
    mov rbx, [loc_stack_rsp]
    mov qword [rax - 8], rbx
    mov qword [ret_stack_rsp], rax
    mov qword [rax], .blockend_10
    jmp proc_cstr_print
.blockend_10: ; call
    push mem+0; int_tmpidx
    push qword 0
    pop rbx
    pop rax
    mov byte [rax], bl
    push rax
    add rsp, 8
    mov rax, [ret_stack_rsp]
    mov rax, [rax - 8]
    mov [loc_stack_rsp], rax
    mov rax, [ret_stack_rsp]
    sub rax, 16
    mov qword [ret_stack_rsp], rax
    add rax, 16
    jmp qword [rax]
; headmem_cpy:
; headmem_eq:
; headmem_zero:
; headmem_set:
; headmem_mov:
; headheapentry_isentry:
; headheapentry_setfree:
; headheapentry_create:
; headheap_newpage:
; headheap_init:
; headheap_alloc:
; headheap_zalloc:
; headheap_realloc:
; headheap_free:
proc_heapentry_isentry:
    pop rax
    push rax
    push rax
    pop rax
    push rax
    push rax
    push qword 0
    pop rax
    pop rbx
    add rax, rbx
    mov rbx, [rax]
    push rbx
    xor rcx, rcx
    mov rdx, 1
    pop rax
    pop rbx
    cmp rax, rbx
    cmove rcx, rdx
    push rcx
    pop rax
    pop rbx
    push rbx
    push rax
    push rbx
    push qword 8
    pop rax
    pop rbx
    add rax, rbx
    push rax
    pop rax
    xor rbx, rbx
    mov bl, [rax]
    push rbx
    push qword 1
    pop rax
    pop rbx
    and rax, rbx
    push rax
    push qword 0
    xor rcx, rcx
    mov rdx, 1
    pop rax
    pop rbx
    cmp rax, rbx
    cmovne rcx, rdx
    push rcx
    pop rax
    pop rbx
    and rax, rbx
    push rax
    pop rax
    pop rbx
    push rax
    push rbx
    add rsp, 8
    mov rax, [ret_stack_rsp]
    mov rax, [rax - 8]
    mov [loc_stack_rsp], rax
    mov rax, [ret_stack_rsp]
    sub rax, 16
    mov qword [ret_stack_rsp], rax
    add rax, 16
    jmp qword [rax]
proc_heapentry_setfree:
    pop rax
    push rax
    push rax
    push mem+48; heap_allocstart
    pop rax
    pop rbx
    push rax
    push rbx
    pop rbx
    pop rax
    mov qword [rax], rbx
    push rax
    add rsp, 8
    pop rax
    push rax
    push rax
    push qword 0
    pop rax
    pop rbx
    add rax, rbx
    push rax
    push qword 0
    pop rbx
    pop rax
    mov qword [rax], rbx
    push rax
    add rsp, 8
    push qword 8
    pop rax
    pop rbx
    add rax, rbx
    push rax
    pop rax
    push rax
    push rax
    pop rax
    xor rbx, rbx
    mov bl, [rax]
    push rbx
    push qword 1
    pop rax
    not rax
    push rax
    pop rax
    pop rbx
    and rax, rbx
    push rax
    pop rbx
    pop rax
    mov byte [rax], bl
    push rax
    add rsp, 8
    mov rax, [ret_stack_rsp]
    mov rax, [rax - 8]
    mov [loc_stack_rsp], rax
    mov rax, [ret_stack_rsp]
    sub rax, 16
    mov qword [ret_stack_rsp], rax
    add rax, 16
    jmp qword [rax]
proc_heapentry_create:
    pop rax
    push rax
    push rax
    push mem+48; heap_allocstart
    pop rax
    pop rbx
    push rax
    push rbx
    pop rbx
    pop rax
    mov qword [rax], rbx
    push rax
    add rsp, 8
    pop rax
    push rax
    push rax
    push qword 0
    pop rax
    pop rbx
    add rax, rbx
    push rax
    pop rax
    pop rbx
    push rbx
    push rax
    push rbx
    pop rbx
    pop rax
    mov qword [rax], rbx
    push rax
    add rsp, 8
    push qword 8
    pop rax
    pop rbx
    add rax, rbx
    push rax
    pop rax
    push rax
    push rax
    pop rax
    xor rbx, rbx
    mov bl, [rax]
    push rbx
    push qword 1
    pop rax
    pop rbx
    or rax, rbx
    push rax
    pop rbx
    pop rax
    mov byte [rax], bl
    push rax
    add rsp, 8
    mov rax, [ret_stack_rsp]
    mov rax, [rax - 8]
    mov [loc_stack_rsp], rax
    mov rax, [ret_stack_rsp]
    sub rax, 16
    mov qword [ret_stack_rsp], rax
    add rax, 16
    jmp qword [rax]
proc_heap_newpage:
    push mem+56; heap_endaddr
    pop rax
    mov rbx, [rax]
    push rbx
    push qword 640000
    pop rax
    pop rbx
    add rax, rbx
    push rax
    pop rax
    push rax
    push rax
    push mem+56; heap_endaddr
    pop rax
    pop rbx
    push rax
    push rbx
    pop rbx
    pop rax
    mov qword [rax], rbx
    push rax
    add rsp, 8
    push qword 12
    pop rax
    pop rdi
    syscall
    push rax
    pop rax
    push rax
    push rax
    push mem+56; heap_endaddr
    pop rax
    pop rbx
    push rax
    push rbx
    pop rbx
    pop rax
    mov qword [rax], rbx
    push rax
    add rsp, 8
    push qword 0
    xor rcx, rcx
    mov rdx, 1
    pop rbx
    pop rax
    cmp rax, rbx
    cmovl rcx, rdx
    push rcx
    pop rbx
    test rbx, rbx
.blockstart_0: ; if
    jz .blockend_0
    push str_1
.blockstart_1: ; call
    mov rax, [ret_stack_rsp]
    add rax, 16
    mov rbx, [loc_stack_rsp]
    mov qword [rax - 8], rbx
    mov qword [ret_stack_rsp], rax
    mov qword [rax], .blockend_1
    jmp proc_cstr_println
.blockend_1: ; call
    push qword 1
    mov rax, 60
    pop rdi
    syscall
.blockend_0: ; if
    mov rax, [ret_stack_rsp]
    mov rax, [rax - 8]
    mov [loc_stack_rsp], rax
    mov rax, [ret_stack_rsp]
    sub rax, 16
    mov qword [ret_stack_rsp], rax
    add rax, 16
    jmp qword [rax]
proc_heap_init:
    push mem+64; heap_isinit
    pop rax
    xor rbx, rbx
    mov bl, [rax]
    push rbx
    pop rbx
    test rbx, rbx
.blockstart_0: ; if
    jz .blockend_0
    mov rax, [ret_stack_rsp]
    mov rax, [rax - 8]
    mov [loc_stack_rsp], rax
    mov rax, [ret_stack_rsp]
    sub rax, 16
    mov qword [ret_stack_rsp], rax
    add rax, 16
    jmp qword [rax]
.blockend_0: ; if
    push mem+64; heap_isinit
    push qword 1
    pop rbx
    pop rax
    mov byte [rax], bl
    push rax
    add rsp, 8
    push mem+40; heap_startaddr
    push qword 0
    push qword 12
    pop rax
    pop rdi
    syscall
    push rax
    pop rbx
    pop rax
    mov qword [rax], rbx
    push rax
    add rsp, 8
    push mem+56; heap_endaddr
    push mem+40; heap_startaddr
    pop rax
    mov rbx, [rax]
    push rbx
    pop rbx
    pop rax
    mov qword [rax], rbx
    push rax
    add rsp, 8
    push mem+48; heap_allocstart
    push mem+40; heap_startaddr
    pop rax
    mov rbx, [rax]
    push rbx
    pop rbx
    pop rax
    mov qword [rax], rbx
    push rax
    add rsp, 8
.blockstart_1: ; call
    mov rax, [ret_stack_rsp]
    add rax, 16
    mov rbx, [loc_stack_rsp]
    mov qword [rax - 8], rbx
    mov qword [ret_stack_rsp], rax
    mov qword [rax], .blockend_1
    jmp proc_heap_newpage
.blockend_1: ; call
    mov rax, [ret_stack_rsp]
    mov rax, [rax - 8]
    mov [loc_stack_rsp], rax
    mov rax, [ret_stack_rsp]
    sub rax, 16
    mov qword [ret_stack_rsp], rax
    add rax, 16
    jmp qword [rax]
proc_heap_alloc:
    mov rax, [loc_stack_rsp]
    add rax, 8
    mov [loc_stack_rsp], rax
.blockstart_0: ; call
    mov rax, [ret_stack_rsp]
    add rax, 16
    mov rbx, [loc_stack_rsp]
    mov qword [rax - 8], rbx
    mov qword [ret_stack_rsp], rax
    mov qword [rax], .blockend_0
    jmp proc_heap_init
.blockend_0: ; call
    push qword 17
    pop rax
    pop rbx
    add rax, rbx
    push rax
    pop rax
    push rax
    push rax
    push qword 64
    xor rdx, rdx
    pop rbx
    pop rax
    idiv rbx
    push rax
    push rdx
    pop rax
    pop rbx
    push rax
    push rbx
    add rsp, 8
    pop rbx
    pop rax
    sub rax, rbx
    push rax
    push qword 64
    pop rax
    pop rbx
    add rax, rbx
    push rax
    mov rax, [ret_stack_rsp]
    mov rax, [rax-8]
    add rax, 0
    push rax
    pop rax
    pop rbx
    push rax
    push rbx
    pop rbx
    pop rax
    mov qword [rax], rbx
    push rax
    add rsp, 8
    push qword 0
    push mem+48; heap_allocstart
    pop rax
    mov rbx, [rax]
    push rbx
    pop rax
    pop rbx
    push rax
    push rbx
    push qword 64
    pop rbx
    pop rax
    sub rax, rbx
    push rax
    pop rax
    pop rbx
    push rax
    push rbx
    push qword 64
    pop rbx
    pop rax
    sub rax, rbx
    push rax
.blockstart_1: ; do
    pop rax
    pop rbx
    push rax
    push rbx
    push qword 64
    pop rax
    pop rbx
    add rax, rbx
    push rax
    pop rax
    pop rbx
    push rax
    push rbx
    push qword 64
    pop rax
    pop rbx
    add rax, rbx
    push rax
    pop rax
    push rax
    push rax
    push mem+56; heap_endaddr
    pop rax
    mov rbx, [rax]
    push rbx
    xor rcx, rcx
    mov rdx, 1
    pop rbx
    pop rax
    cmp rax, rbx
    cmovl rcx, rdx
    push rcx
    pop rax
    xor rax, 1
    push rax
    pop rbx
    test rbx, rbx
.blockstart_2: ; if
    jz .blockend_2
.blockstart_3: ; call
    mov rax, [ret_stack_rsp]
    add rax, 16
    mov rbx, [loc_stack_rsp]
    mov qword [rax - 8], rbx
    mov qword [ret_stack_rsp], rax
    mov qword [rax], .blockend_3
    jmp proc_heap_newpage
.blockend_3: ; call
.blockend_2: ; if
    pop rax
    push rax
    push rax
.blockstart_4: ; call
    mov rax, [ret_stack_rsp]
    add rax, 16
    mov rbx, [loc_stack_rsp]
    mov qword [rax - 8], rbx
    mov qword [ret_stack_rsp], rax
    mov qword [rax], .blockend_4
    jmp proc_heapentry_isentry
.blockend_4: ; call
    pop rbx
    test rbx, rbx
.blockstart_5: ; if
    jz .blockend_5
    pop rax
    push rax
    push rax
    push qword 9
    pop rax
    pop rbx
    add rax, rbx
    mov rbx, [rax]
    push rbx
    pop rax
    pop rbx
    add rax, rbx
    push rax
    pop rax
    pop rbx
    push rax
    push rbx
    add rsp, 8
    push qword 0
    push qword 64
    pop rbx
    pop rax
    sub rax, rbx
    push rax
    pop rax
    pop rbx
    push rax
    push rbx
    push qword 64
    pop rbx
    pop rax
    sub rax, rbx
    push rax
.blockend_5: ; if
    pop rax
    pop rbx
    push rbx
    push rax
    push rbx
    mov rax, [ret_stack_rsp]
    mov rax, [rax-8]
    add rax, 0
    push rax
    pop rax
    mov rbx, [rax]
    push rbx
    xor rcx, rcx
    mov rdx, 1
    pop rbx
    pop rax
    cmp rax, rbx
    cmovl rcx, rdx
    push rcx
    pop rbx
    test rbx, rbx
    jnz .blockstart_1
.blockend_1: ; do
    pop rax
    pop rbx
    push rax
    push rbx
    add rsp, 8
    mov rax, [ret_stack_rsp]
    mov rax, [rax-8]
    add rax, 0
    push rax
    pop rax
    mov rbx, [rax]
    push rbx
    pop rbx
    pop rax
    sub rax, rbx
    push rax
    pop rax
    push rax
    push rax
    push qword 9
    pop rax
    pop rbx
    add rax, rbx
    push rax
    mov rax, [ret_stack_rsp]
    mov rax, [rax-8]
    add rax, 0
    push rax
    pop rax
    mov rbx, [rax]
    push rbx
    pop rbx
    pop rax
    mov qword [rax], rbx
    push rax
    add rsp, 8
    pop rax
    push rax
    push rax
.blockstart_6: ; call
    mov rax, [ret_stack_rsp]
    add rax, 16
    mov rbx, [loc_stack_rsp]
    mov qword [rax - 8], rbx
    mov qword [ret_stack_rsp], rax
    mov qword [rax], .blockend_6
    jmp proc_heapentry_create
.blockend_6: ; call
    push qword 17
    pop rax
    pop rbx
    add rax, rbx
    push rax
    mov rax, [ret_stack_rsp]
    mov rax, [rax - 8]
    mov [loc_stack_rsp], rax
    mov rax, [ret_stack_rsp]
    sub rax, 16
    mov qword [ret_stack_rsp], rax
    add rax, 16
    jmp qword [rax]
proc_heap_zalloc:
.blockstart_0: ; call
    mov rax, [ret_stack_rsp]
    add rax, 16
    mov rbx, [loc_stack_rsp]
    mov qword [rax - 8], rbx
    mov qword [ret_stack_rsp], rax
    mov qword [rax], .blockend_0
    jmp proc_heap_init
.blockend_0: ; call
.blockstart_1: ; call
    mov rax, [ret_stack_rsp]
    add rax, 16
    mov rbx, [loc_stack_rsp]
    mov qword [rax - 8], rbx
    mov qword [ret_stack_rsp], rax
    mov qword [rax], .blockend_1
    jmp proc_heap_alloc
.blockend_1: ; call
    pop rax
    push rax
    push rax
    pop rax
    push rax
    push rax
    push qword 17
    pop rbx
    pop rax
    sub rax, rbx
    push rax
    push qword 9
    pop rax
    pop rbx
    add rax, rbx
    push rax
    pop rax
    mov rbx, [rax]
    push rbx
.blockstart_2: ; call
    mov rax, [ret_stack_rsp]
    add rax, 16
    mov rbx, [loc_stack_rsp]
    mov qword [rax - 8], rbx
    mov qword [ret_stack_rsp], rax
    mov qword [rax], .blockend_2
    jmp proc_mem_zero
.blockend_2: ; call
    mov rax, [ret_stack_rsp]
    mov rax, [rax - 8]
    mov [loc_stack_rsp], rax
    mov rax, [ret_stack_rsp]
    sub rax, 16
    mov qword [ret_stack_rsp], rax
    add rax, 16
    jmp qword [rax]
proc_heap_free:
    push qword 17
    pop rbx
    pop rax
    sub rax, rbx
    push rax
    pop rax
    push rax
    push rax
.blockstart_0: ; call
    mov rax, [ret_stack_rsp]
    add rax, 16
    mov rbx, [loc_stack_rsp]
    mov qword [rax - 8], rbx
    mov qword [ret_stack_rsp], rax
    mov qword [rax], .blockend_0
    jmp proc_heapentry_isentry
.blockend_0: ; call
    pop rax
    xor rax, 1
    push rax
    pop rbx
    test rbx, rbx
.blockstart_1: ; if
    jz .blockend_1
    add rsp, 8
    mov rax, [ret_stack_rsp]
    mov rax, [rax - 8]
    mov [loc_stack_rsp], rax
    mov rax, [ret_stack_rsp]
    sub rax, 16
    mov qword [ret_stack_rsp], rax
    add rax, 16
    jmp qword [rax]
.blockend_1: ; if
.blockstart_2: ; call
    mov rax, [ret_stack_rsp]
    add rax, 16
    mov rbx, [loc_stack_rsp]
    mov qword [rax - 8], rbx
    mov qword [ret_stack_rsp], rax
    mov qword [rax], .blockend_2
    jmp proc_heapentry_setfree
.blockend_2: ; call
    mov rax, [ret_stack_rsp]
    mov rax, [rax - 8]
    mov [loc_stack_rsp], rax
    mov rax, [ret_stack_rsp]
    sub rax, 16
    mov qword [ret_stack_rsp], rax
    add rax, 16
    jmp qword [rax]
proc_heap_realloc:
    mov rax, [loc_stack_rsp]
    add rax, 8
    mov [loc_stack_rsp], rax
    mov rax, [loc_stack_rsp]
    add rax, 8
    mov [loc_stack_rsp], rax
    mov rax, [loc_stack_rsp]
    add rax, 8
    mov [loc_stack_rsp], rax
    mov rax, [loc_stack_rsp]
    add rax, 8
    mov [loc_stack_rsp], rax
    mov rax, [ret_stack_rsp]
    mov rax, [rax-8]
    add rax, 0
    push rax
    pop rax
    pop rbx
    push rax
    push rbx
    pop rbx
    pop rax
    mov qword [rax], rbx
    push rax
    add rsp, 8
    mov rax, [ret_stack_rsp]
    mov rax, [rax-8]
    add rax, 24
    push rax
    pop rax
    pop rbx
    push rax
    push rbx
    pop rbx
    pop rax
    mov qword [rax], rbx
    push rax
    add rsp, 8
    mov rax, [ret_stack_rsp]
    mov rax, [rax-8]
    add rax, 24
    push rax
    pop rax
    mov rbx, [rax]
    push rbx
    push qword 17
    pop rbx
    pop rax
    sub rax, rbx
    push rax
.blockstart_0: ; call
    mov rax, [ret_stack_rsp]
    add rax, 16
    mov rbx, [loc_stack_rsp]
    mov qword [rax - 8], rbx
    mov qword [ret_stack_rsp], rax
    mov qword [rax], .blockend_0
    jmp proc_heapentry_isentry
.blockend_0: ; call
    pop rax
    xor rax, 1
    push rax
    pop rbx
    test rbx, rbx
.blockstart_1: ; if
    jz .blockend_1
    push str_2
.blockstart_2: ; call
    mov rax, [ret_stack_rsp]
    add rax, 16
    mov rbx, [loc_stack_rsp]
    mov qword [rax - 8], rbx
    mov qword [ret_stack_rsp], rax
    mov qword [rax], .blockend_2
    jmp proc_cstr_println
.blockend_2: ; call
.blockend_1: ; if
    mov rax, [ret_stack_rsp]
    mov rax, [rax-8]
    add rax, 16
    push rax
    mov rax, [ret_stack_rsp]
    mov rax, [rax-8]
    add rax, 24
    push rax
    pop rax
    mov rbx, [rax]
    push rbx
    push qword 17
    pop rbx
    pop rax
    sub rax, rbx
    push rax
    push qword 9
    pop rax
    pop rbx
    add rax, rbx
    mov rbx, [rax]
    push rbx
    pop rbx
    pop rax
    mov qword [rax], rbx
    push rax
    add rsp, 8
    mov rax, [ret_stack_rsp]
    mov rax, [rax-8]
    add rax, 24
    push rax
    pop rax
    mov rbx, [rax]
    push rbx
.blockstart_3: ; call
    mov rax, [ret_stack_rsp]
    add rax, 16
    mov rbx, [loc_stack_rsp]
    mov qword [rax - 8], rbx
    mov qword [ret_stack_rsp], rax
    mov qword [rax], .blockend_3
    jmp proc_heap_free
.blockend_3: ; call
    mov rax, [ret_stack_rsp]
    mov rax, [rax-8]
    add rax, 8
    push rax
    mov rax, [ret_stack_rsp]
    mov rax, [rax-8]
    add rax, 0
    push rax
    pop rax
    mov rbx, [rax]
    push rbx
.blockstart_4: ; call
    mov rax, [ret_stack_rsp]
    add rax, 16
    mov rbx, [loc_stack_rsp]
    mov qword [rax - 8], rbx
    mov qword [ret_stack_rsp], rax
    mov qword [rax], .blockend_4
    jmp proc_heap_alloc
.blockend_4: ; call
    pop rbx
    pop rax
    mov qword [rax], rbx
    push rax
    add rsp, 8
    mov rax, [ret_stack_rsp]
    mov rax, [rax-8]
    add rax, 8
    push rax
    pop rax
    mov rbx, [rax]
    push rbx
    mov rax, [ret_stack_rsp]
    mov rax, [rax-8]
    add rax, 24
    push rax
    pop rax
    mov rbx, [rax]
    push rbx
    mov rax, [ret_stack_rsp]
    mov rax, [rax-8]
    add rax, 16
    push rax
    pop rax
    mov rbx, [rax]
    push rbx
.blockstart_5: ; call
    mov rax, [ret_stack_rsp]
    add rax, 16
    mov rbx, [loc_stack_rsp]
    mov qword [rax - 8], rbx
    mov qword [ret_stack_rsp], rax
    mov qword [rax], .blockend_5
    jmp proc_mem_cpy
.blockend_5: ; call
    mov rax, [ret_stack_rsp]
    mov rax, [rax-8]
    add rax, 8
    push rax
    pop rax
    mov rbx, [rax]
    push rbx
    mov rax, [ret_stack_rsp]
    mov rax, [rax - 8]
    mov [loc_stack_rsp], rax
    mov rax, [ret_stack_rsp]
    sub rax, 16
    mov qword [ret_stack_rsp], rax
    add rax, 16
    jmp qword [rax]
proc_mem_cpy:
    mov rax, [loc_stack_rsp]
    add rax, 8
    mov [loc_stack_rsp], rax
    mov rax, [ret_stack_rsp]
    mov rax, [rax-8]
    add rax, 0
    push rax
    pop rax
    pop rbx
    push rax
    push rbx
    pop rbx
    pop rax
    mov qword [rax], rbx
    push rax
    add rsp, 8
    pop rax
    pop rbx
    push rbx
    push rax
    push rbx
    pop rax
    pop rbx
    push rbx
    push rax
    push rbx
    xor rcx, rcx
    mov rdx, 1
    pop rax
    pop rbx
    cmp rax, rbx
    cmove rcx, rdx
    push rcx
    pop rbx
    test rbx, rbx
.blockstart_0: ; if
    jz .blockend_0
    add rsp, 8
    add rsp, 8
    mov rax, [ret_stack_rsp]
    mov rax, [rax - 8]
    mov [loc_stack_rsp], rax
    mov rax, [ret_stack_rsp]
    sub rax, 16
    mov qword [ret_stack_rsp], rax
    add rax, 16
    jmp qword [rax]
.blockend_0: ; if
.blockstart_1: ; do
    pop rax
    pop rbx
    push rbx
    push rax
    push rbx
    pop rax
    pop rbx
    push rbx
    push rax
    push rbx
    pop rax
    xor rbx, rbx
    mov bl, [rax]
    push rbx
    pop rbx
    pop rax
    mov byte [rax], bl
    push rax
    add rsp, 8
    pop rax
    pop rbx
    push rax
    push rbx
    push qword 1
    pop rax
    pop rbx
    add rax, rbx
    push rax
    pop rax
    pop rbx
    push rax
    push rbx
    push qword 1
    pop rax
    pop rbx
    add rax, rbx
    push rax
    mov rax, [ret_stack_rsp]
    mov rax, [rax-8]
    add rax, 0
    push rax
    pop rax
    push rax
    push rax
    pop rax
    mov rbx, [rax]
    push rbx
    push qword 1
    pop rbx
    pop rax
    sub rax, rbx
    push rax
    pop rbx
    pop rax
    mov qword [rax], rbx
    push rax
    add rsp, 8
    mov rax, [ret_stack_rsp]
    mov rax, [rax-8]
    add rax, 0
    push rax
    pop rax
    mov rbx, [rax]
    push rbx
    push qword 0
    xor rcx, rcx
    mov rdx, 1
    pop rbx
    pop rax
    cmp rax, rbx
    cmovg rcx, rdx
    push rcx
    pop rbx
    test rbx, rbx
    jnz .blockstart_1
.blockend_1: ; do
    add rsp, 8
    add rsp, 8
    mov rax, [ret_stack_rsp]
    mov rax, [rax - 8]
    mov [loc_stack_rsp], rax
    mov rax, [ret_stack_rsp]
    sub rax, 16
    mov qword [ret_stack_rsp], rax
    add rax, 16
    jmp qword [rax]
proc_mem_eq:
    mov rax, [loc_stack_rsp]
    add rax, 8
    mov [loc_stack_rsp], rax
    pop rax
    pop rbx
    push rax
    push rbx
    mov rax, [ret_stack_rsp]
    mov rax, [rax-8]
    add rax, 0
    push rax
    pop rax
    pop rbx
    push rax
    push rbx
    pop rbx
    pop rax
    mov qword [rax], rbx
    push rax
    add rsp, 8
.blockstart_0: ; do
    pop rax
    pop rbx
    push rbx
    push rax
    push rbx
    pop rax
    xor rbx, rbx
    mov bl, [rax]
    push rbx
    mov rax, [ret_stack_rsp]
    mov rax, [rax-8]
    add rax, 0
    push rax
    pop rax
    mov rbx, [rax]
    push rbx
    pop rax
    xor rbx, rbx
    mov bl, [rax]
    push rbx
    xor rcx, rcx
    mov rdx, 1
    pop rax
    pop rbx
    cmp rax, rbx
    cmovne rcx, rdx
    push rcx
    pop rbx
    test rbx, rbx
.blockstart_1: ; if
    jz .blockend_1
    add rsp, 8
    add rsp, 8
    push qword 0
    mov rax, [ret_stack_rsp]
    mov rax, [rax - 8]
    mov [loc_stack_rsp], rax
    mov rax, [ret_stack_rsp]
    sub rax, 16
    mov qword [ret_stack_rsp], rax
    add rax, 16
    jmp qword [rax]
.blockend_1: ; if
    pop rax
    pop rbx
    push rax
    push rbx
    push qword 1
    pop rax
    pop rbx
    add rax, rbx
    push rax
    pop rax
    pop rbx
    push rax
    push rbx
    push qword 1
    pop rbx
    pop rax
    sub rax, rbx
    push rax
    mov rax, [ret_stack_rsp]
    mov rax, [rax-8]
    add rax, 0
    push rax
    pop rax
    push rax
    push rax
    pop rax
    mov rbx, [rax]
    push rbx
    push qword 1
    pop rax
    pop rbx
    add rax, rbx
    push rax
    pop rbx
    pop rax
    mov qword [rax], rbx
    push rax
    add rsp, 8
    pop rax
    push rax
    push rax
    push qword 0
    xor rcx, rcx
    mov rdx, 1
    pop rbx
    pop rax
    cmp rax, rbx
    cmovg rcx, rdx
    push rcx
    pop rbx
    test rbx, rbx
    jnz .blockstart_0
.blockend_0: ; do
    add rsp, 8
    add rsp, 8
    push qword 1
    mov rax, [ret_stack_rsp]
    mov rax, [rax - 8]
    mov [loc_stack_rsp], rax
    mov rax, [ret_stack_rsp]
    sub rax, 16
    mov qword [ret_stack_rsp], rax
    add rax, 16
    jmp qword [rax]
proc_mem_zero:
    mov rax, [loc_stack_rsp]
    add rax, 8
    mov [loc_stack_rsp], rax
    mov rax, [ret_stack_rsp]
    mov rax, [rax-8]
    add rax, 0
    push rax
    pop rax
    pop rbx
    push rax
    push rbx
    pop rbx
    pop rax
    mov qword [rax], rbx
    push rax
    add rsp, 8
.blockstart_0: ; do
    pop rax
    push rax
    push rax
    push qword 0
    pop rbx
    pop rax
    mov byte [rax], bl
    push rax
    add rsp, 8
    push qword 1
    pop rax
    pop rbx
    add rax, rbx
    push rax
    mov rax, [ret_stack_rsp]
    mov rax, [rax-8]
    add rax, 0
    push rax
    mov rax, [ret_stack_rsp]
    mov rax, [rax-8]
    add rax, 0
    push rax
    pop rax
    mov rbx, [rax]
    push rbx
    push qword 1
    pop rbx
    pop rax
    sub rax, rbx
    push rax
    pop rbx
    pop rax
    mov qword [rax], rbx
    push rax
    add rsp, 8
    mov rax, [ret_stack_rsp]
    mov rax, [rax-8]
    add rax, 0
    push rax
    pop rax
    mov rbx, [rax]
    push rbx
    push qword 0
    xor rcx, rcx
    mov rdx, 1
    pop rbx
    pop rax
    cmp rax, rbx
    cmovg rcx, rdx
    push rcx
    pop rbx
    test rbx, rbx
    jnz .blockstart_0
.blockend_0: ; do
    add rsp, 8
    mov rax, [ret_stack_rsp]
    mov rax, [rax - 8]
    mov [loc_stack_rsp], rax
    mov rax, [ret_stack_rsp]
    sub rax, 16
    mov qword [ret_stack_rsp], rax
    add rax, 16
    jmp qword [rax]
proc_mem_set:
    mov rax, [loc_stack_rsp]
    add rax, 8
    mov [loc_stack_rsp], rax
    mov rax, [loc_stack_rsp]
    add rax, 1
    mov [loc_stack_rsp], rax
    mov rax, [ret_stack_rsp]
    mov rax, [rax-8]
    add rax, 0
    push rax
    pop rax
    pop rbx
    push rax
    push rbx
    pop rbx
    pop rax
    mov qword [rax], rbx
    push rax
    add rsp, 8
    mov rax, [ret_stack_rsp]
    mov rax, [rax-8]
    add rax, 8
    push rax
    pop rax
    pop rbx
    push rax
    push rbx
    pop rbx
    pop rax
    mov byte [rax], bl
    push rax
    add rsp, 8
.blockstart_0: ; do
    pop rax
    push rax
    push rax
    mov rax, [ret_stack_rsp]
    mov rax, [rax-8]
    add rax, 8
    push rax
    pop rax
    xor rbx, rbx
    mov bl, [rax]
    push rbx
    pop rbx
    pop rax
    mov byte [rax], bl
    push rax
    add rsp, 8
    push qword 1
    pop rax
    pop rbx
    add rax, rbx
    push rax
    mov rax, [ret_stack_rsp]
    mov rax, [rax-8]
    add rax, 0
    push rax
    mov rax, [ret_stack_rsp]
    mov rax, [rax-8]
    add rax, 0
    push rax
    pop rax
    mov rbx, [rax]
    push rbx
    push qword 1
    pop rbx
    pop rax
    sub rax, rbx
    push rax
    pop rbx
    pop rax
    mov qword [rax], rbx
    push rax
    add rsp, 8
    mov rax, [ret_stack_rsp]
    mov rax, [rax-8]
    add rax, 0
    push rax
    pop rax
    mov rbx, [rax]
    push rbx
    push qword 0
    xor rcx, rcx
    mov rdx, 1
    pop rbx
    pop rax
    cmp rax, rbx
    cmovg rcx, rdx
    push rcx
    pop rbx
    test rbx, rbx
    jnz .blockstart_0
.blockend_0: ; do
    add rsp, 8
    mov rax, [ret_stack_rsp]
    mov rax, [rax - 8]
    mov [loc_stack_rsp], rax
    mov rax, [ret_stack_rsp]
    sub rax, 16
    mov qword [ret_stack_rsp], rax
    add rax, 16
    jmp qword [rax]
proc_mem_mov:
    mov rax, [loc_stack_rsp]
    add rax, 8
    mov [loc_stack_rsp], rax
    mov rax, [loc_stack_rsp]
    add rax, 8
    mov [loc_stack_rsp], rax
    mov rax, [ret_stack_rsp]
    mov rax, [rax-8]
    add rax, 0
    push rax
    pop rax
    pop rbx
    push rax
    push rbx
    pop rbx
    pop rax
    mov qword [rax], rbx
    push rax
    add rsp, 8
    pop rax
    pop rbx
    push rax
    push rbx
    mov rax, [ret_stack_rsp]
    mov rax, [rax-8]
    add rax, 0
    push rax
    pop rax
    mov rbx, [rax]
    push rbx
.blockstart_0: ; call
    mov rax, [ret_stack_rsp]
    add rax, 16
    mov rbx, [loc_stack_rsp]
    mov qword [rax - 8], rbx
    mov qword [ret_stack_rsp], rax
    mov qword [rax], .blockend_0
    jmp proc_heap_alloc
.blockend_0: ; call
    mov rax, [ret_stack_rsp]
    mov rax, [rax-8]
    add rax, 8
    push rax
    pop rax
    pop rbx
    push rax
    push rbx
    pop rbx
    pop rax
    mov qword [rax], rbx
    push rax
    add rsp, 8
    mov rax, [ret_stack_rsp]
    mov rax, [rax-8]
    add rax, 8
    push rax
    pop rax
    mov rbx, [rax]
    push rbx
    pop rax
    pop rbx
    push rax
    push rbx
    mov rax, [ret_stack_rsp]
    mov rax, [rax-8]
    add rax, 0
    push rax
    pop rax
    mov rbx, [rax]
    push rbx
.blockstart_1: ; call
    mov rax, [ret_stack_rsp]
    add rax, 16
    mov rbx, [loc_stack_rsp]
    mov qword [rax - 8], rbx
    mov qword [ret_stack_rsp], rax
    mov qword [rax], .blockend_1
    jmp proc_mem_cpy
.blockend_1: ; call
    mov rax, [ret_stack_rsp]
    mov rax, [rax-8]
    add rax, 8
    push rax
    pop rax
    mov rbx, [rax]
    push rbx
    mov rax, [ret_stack_rsp]
    mov rax, [rax-8]
    add rax, 0
    push rax
    pop rax
    mov rbx, [rax]
    push rbx
.blockstart_2: ; call
    mov rax, [ret_stack_rsp]
    add rax, 16
    mov rbx, [loc_stack_rsp]
    mov qword [rax - 8], rbx
    mov qword [ret_stack_rsp], rax
    mov qword [rax], .blockend_2
    jmp proc_mem_cpy
.blockend_2: ; call
    mov rax, [ret_stack_rsp]
    mov rax, [rax-8]
    add rax, 8
    push rax
    pop rax
    mov rbx, [rax]
    push rbx
.blockstart_3: ; call
    mov rax, [ret_stack_rsp]
    add rax, 16
    mov rbx, [loc_stack_rsp]
    mov qword [rax - 8], rbx
    mov qword [ret_stack_rsp], rax
    mov qword [rax], .blockend_3
    jmp proc_heap_free
.blockend_3: ; call
    mov rax, [ret_stack_rsp]
    mov rax, [rax - 8]
    mov [loc_stack_rsp], rax
    mov rax, [ret_stack_rsp]
    sub rax, 16
    mov qword [ret_stack_rsp], rax
    add rax, 16
    jmp qword [rax]
; heados_fork:
; heados_execcmd:
; heados_execcmdloud:
; heados_execcmdecho:
; heados_execcmdecholoud:
; heados_args:
; heados_env:
; heados_cwd:
; heados_existsf:
; heados_openf:
; heados_writef:
; heados_readf:
; heados_closef:
proc_os_fork:
    push qword 57
    pop rax
    syscall
    push rax
    mov rax, [ret_stack_rsp]
    mov rax, [rax - 8]
    mov [loc_stack_rsp], rax
    mov rax, [ret_stack_rsp]
    sub rax, 16
    mov qword [ret_stack_rsp], rax
    add rax, 16
    jmp qword [rax]
proc_os_execcmd:
    mov rax, [loc_stack_rsp]
    add rax, 8
    mov [loc_stack_rsp], rax
.blockstart_0: ; call
    mov rax, [ret_stack_rsp]
    add rax, 16
    mov rbx, [loc_stack_rsp]
    mov qword [rax - 8], rbx
    mov qword [ret_stack_rsp], rax
    mov qword [rax], .blockend_0
    jmp proc_os_fork
.blockend_0: ; call
    pop rax
    push rax
    push rax
    push qword 0
    xor rcx, rcx
    mov rdx, 1
    pop rax
    pop rbx
    cmp rax, rbx
    cmove rcx, rdx
    push rcx
    pop rbx
    test rbx, rbx
.blockstart_1: ; if
    jz .blockend_1
    push qword 1
    push qword 0
    push qword 0
    push str_3
    push qword -100
    push qword 257
    pop rax
    pop rdi
    pop rsi
    pop rdx
    pop r10
    syscall
    push rax
    pop rax
    push rax
    push rax
    push qword 0
    xor rcx, rcx
    mov rdx, 1
    pop rbx
    pop rax
    cmp rax, rbx
    cmovl rcx, rdx
    push rcx
    pop rbx
    test rbx, rbx
.blockstart_2: ; if
    jz .blockend_2
    push str_4
.blockstart_3: ; call
    mov rax, [ret_stack_rsp]
    add rax, 16
    mov rbx, [loc_stack_rsp]
    mov qword [rax - 8], rbx
    mov qword [ret_stack_rsp], rax
    mov qword [rax], .blockend_3
    jmp proc_cstr_println
.blockend_3: ; call
    push qword -1
    mov rax, 60
    pop rdi
    syscall
.blockend_2: ; if
    push qword 33
    pop rax
    pop rdi
    pop rsi
    syscall
    push rax
    push qword 0
    xor rcx, rcx
    mov rdx, 1
    pop rbx
    pop rax
    cmp rax, rbx
    cmovl rcx, rdx
    push rcx
    pop rbx
    test rbx, rbx
.blockstart_4: ; if
    jz .blockend_4
    push str_5
.blockstart_5: ; call
    mov rax, [ret_stack_rsp]
    add rax, 16
    mov rbx, [loc_stack_rsp]
    mov qword [rax - 8], rbx
    mov qword [ret_stack_rsp], rax
    mov qword [rax], .blockend_5
    jmp proc_cstr_println
.blockend_5: ; call
    push qword -1
    mov rax, 60
    pop rdi
    syscall
.blockend_4: ; if
    pop rax
    pop rbx
    push rbx
    push rax
    push rbx
    mov rax, [args_ptr]
    mov rax, [rax]
    add rax, 2
    shl rax, 3
    mov rbx, [args_ptr]
    add rbx, rax
    push rbx
    pop rax
    pop rbx
    push rax
    push rbx
    pop rax
    push rax
    push rax
    pop rax
    mov rbx, [rax]
    push rbx
    push qword 59
    pop rax
    pop rdi
    pop rsi
    pop rdx
    syscall
    push rax
    add rsp, 8
    add rsp, 8
    add rsp, 8
    push qword -1
    mov rax, 60
    pop rdi
    syscall
.blockend_1: ; if
    pop rax
    push rax
    push rax
    push qword 0
    xor rcx, rcx
    mov rdx, 1
    pop rbx
    pop rax
    cmp rax, rbx
    cmovg rcx, rdx
    push rcx
    pop rbx
    test rbx, rbx
.blockstart_6: ; if
    jz .blockend_6
    push qword 0
    push qword 0
    mov rax, [ret_stack_rsp]
    mov rax, [rax-8]
    add rax, 0
    push rax
    push qword -1
    push qword 61
    pop rax
    pop rdi
    pop rsi
    pop rdx
    pop r10
    syscall
    push rax
    push qword 0
    xor rcx, rcx
    mov rdx, 1
    pop rbx
    pop rax
    cmp rax, rbx
    cmovl rcx, rdx
    push rcx
    pop rbx
    test rbx, rbx
.blockstart_7: ; if
    jz .blockend_7
    push str_6
.blockstart_8: ; call
    mov rax, [ret_stack_rsp]
    add rax, 16
    mov rbx, [loc_stack_rsp]
    mov qword [rax - 8], rbx
    mov qword [ret_stack_rsp], rax
    mov qword [rax], .blockend_8
    jmp proc_cstr_println
.blockend_8: ; call
    push qword -1
    mov rax, 60
    pop rdi
    syscall
.blockend_7: ; if
    add rsp, 8
    add rsp, 8
    mov rax, [ret_stack_rsp]
    mov rax, [rax-8]
    add rax, 0
    push rax
    pop rax
    mov rbx, [rax]
    push rbx
    mov rax, [ret_stack_rsp]
    mov rax, [rax - 8]
    mov [loc_stack_rsp], rax
    mov rax, [ret_stack_rsp]
    sub rax, 16
    mov qword [ret_stack_rsp], rax
    add rax, 16
    jmp qword [rax]
.blockend_6: ; if
    add rsp, 8
    add rsp, 8
    push qword 0
    mov rax, [ret_stack_rsp]
    mov rax, [rax - 8]
    mov [loc_stack_rsp], rax
    mov rax, [ret_stack_rsp]
    sub rax, 16
    mov qword [ret_stack_rsp], rax
    add rax, 16
    jmp qword [rax]
proc_os_execcmdloud:
    mov rax, [loc_stack_rsp]
    add rax, 8
    mov [loc_stack_rsp], rax
.blockstart_0: ; call
    mov rax, [ret_stack_rsp]
    add rax, 16
    mov rbx, [loc_stack_rsp]
    mov qword [rax - 8], rbx
    mov qword [ret_stack_rsp], rax
    mov qword [rax], .blockend_0
    jmp proc_os_fork
.blockend_0: ; call
    pop rax
    push rax
    push rax
    push qword 0
    xor rcx, rcx
    mov rdx, 1
    pop rax
    pop rbx
    cmp rax, rbx
    cmove rcx, rdx
    push rcx
    pop rbx
    test rbx, rbx
.blockstart_1: ; if
    jz .blockend_1
    pop rax
    pop rbx
    push rbx
    push rax
    push rbx
    mov rax, [args_ptr]
    mov rax, [rax]
    add rax, 2
    shl rax, 3
    mov rbx, [args_ptr]
    add rbx, rax
    push rbx
    pop rax
    pop rbx
    push rax
    push rbx
    pop rax
    push rax
    push rax
    pop rax
    mov rbx, [rax]
    push rbx
    push qword 59
    pop rax
    pop rdi
    pop rsi
    pop rdx
    syscall
    push rax
    add rsp, 8
    add rsp, 8
    add rsp, 8
    push qword -1
    mov rax, 60
    pop rdi
    syscall
.blockend_1: ; if
    pop rax
    push rax
    push rax
    push qword 0
    xor rcx, rcx
    mov rdx, 1
    pop rbx
    pop rax
    cmp rax, rbx
    cmovg rcx, rdx
    push rcx
    pop rbx
    test rbx, rbx
.blockstart_2: ; if
    jz .blockend_2
    push qword 0
    push qword 0
    mov rax, [ret_stack_rsp]
    mov rax, [rax-8]
    add rax, 0
    push rax
    push qword -1
    push qword 61
    pop rax
    pop rdi
    pop rsi
    pop rdx
    pop r10
    syscall
    push rax
    push qword 0
    xor rcx, rcx
    mov rdx, 1
    pop rbx
    pop rax
    cmp rax, rbx
    cmovl rcx, rdx
    push rcx
    pop rbx
    test rbx, rbx
.blockstart_3: ; if
    jz .blockend_3
    push str_7
.blockstart_4: ; call
    mov rax, [ret_stack_rsp]
    add rax, 16
    mov rbx, [loc_stack_rsp]
    mov qword [rax - 8], rbx
    mov qword [ret_stack_rsp], rax
    mov qword [rax], .blockend_4
    jmp proc_cstr_println
.blockend_4: ; call
    push qword -1
    mov rax, 60
    pop rdi
    syscall
.blockend_3: ; if
    add rsp, 8
    add rsp, 8
    mov rax, [ret_stack_rsp]
    mov rax, [rax-8]
    add rax, 0
    push rax
    pop rax
    mov rbx, [rax]
    push rbx
    mov rax, [ret_stack_rsp]
    mov rax, [rax - 8]
    mov [loc_stack_rsp], rax
    mov rax, [ret_stack_rsp]
    sub rax, 16
    mov qword [ret_stack_rsp], rax
    add rax, 16
    jmp qword [rax]
.blockend_2: ; if
    push qword 0
    xor rcx, rcx
    mov rdx, 1
    pop rbx
    pop rax
    cmp rax, rbx
    cmovl rcx, rdx
    push rcx
    pop rbx
    test rbx, rbx
.blockstart_5: ; if
    jz .blockend_5
    push str_8
.blockstart_6: ; call
    mov rax, [ret_stack_rsp]
    add rax, 16
    mov rbx, [loc_stack_rsp]
    mov qword [rax - 8], rbx
    mov qword [ret_stack_rsp], rax
    mov qword [rax], .blockend_6
    jmp proc_cstr_println
.blockend_6: ; call
.blockend_5: ; if
    add rsp, 8
    push qword 0
    mov rax, [ret_stack_rsp]
    mov rax, [rax - 8]
    mov [loc_stack_rsp], rax
    mov rax, [ret_stack_rsp]
    sub rax, 16
    mov qword [ret_stack_rsp], rax
    add rax, 16
    jmp qword [rax]
proc_os_execcmdecho:
    push str_9
.blockstart_0: ; call
    mov rax, [ret_stack_rsp]
    add rax, 16
    mov rbx, [loc_stack_rsp]
    mov qword [rax - 8], rbx
    mov qword [ret_stack_rsp], rax
    mov qword [rax], .blockend_0
    jmp proc_cstr_print
.blockend_0: ; call
    pop rax
    push rax
    push rax
.blockstart_1: ; do
    pop rax
    push rax
    push rax
    pop rax
    mov rbx, [rax]
    push rbx
.blockstart_2: ; call
    mov rax, [ret_stack_rsp]
    add rax, 16
    mov rbx, [loc_stack_rsp]
    mov qword [rax - 8], rbx
    mov qword [ret_stack_rsp], rax
    mov qword [rax], .blockend_2
    jmp proc_cstr_print
.blockend_2: ; call
    push qword 8
    pop rax
    pop rbx
    add rax, rbx
    push rax
    pop rax
    push rax
    push rax
    pop rbx
    test rbx, rbx
.blockstart_3: ; if
    jz .blockend_3
    push str_10
.blockstart_4: ; call
    mov rax, [ret_stack_rsp]
    add rax, 16
    mov rbx, [loc_stack_rsp]
    mov qword [rax - 8], rbx
    mov qword [ret_stack_rsp], rax
    mov qword [rax], .blockend_4
    jmp proc_cstr_print
.blockend_4: ; call
.blockend_3: ; if
    pop rax
    push rax
    push rax
    pop rax
    mov rbx, [rax]
    push rbx
    push qword 0
    xor rcx, rcx
    mov rdx, 1
    pop rax
    pop rbx
    cmp rax, rbx
    cmovne rcx, rdx
    push rcx
    pop rbx
    test rbx, rbx
    jnz .blockstart_1
.blockend_1: ; do
    add rsp, 8
.blockstart_5: ; call
    mov rax, [ret_stack_rsp]
    add rax, 16
    mov rbx, [loc_stack_rsp]
    mov qword [rax - 8], rbx
    mov qword [ret_stack_rsp], rax
    mov qword [rax], .blockend_5
    jmp proc_cstr_cr
.blockend_5: ; call
.blockstart_6: ; call
    mov rax, [ret_stack_rsp]
    add rax, 16
    mov rbx, [loc_stack_rsp]
    mov qword [rax - 8], rbx
    mov qword [ret_stack_rsp], rax
    mov qword [rax], .blockend_6
    jmp proc_os_execcmd
.blockend_6: ; call
    mov rax, [ret_stack_rsp]
    mov rax, [rax - 8]
    mov [loc_stack_rsp], rax
    mov rax, [ret_stack_rsp]
    sub rax, 16
    mov qword [ret_stack_rsp], rax
    add rax, 16
    jmp qword [rax]
proc_os_execcmdecholoud:
    push str_11
.blockstart_0: ; call
    mov rax, [ret_stack_rsp]
    add rax, 16
    mov rbx, [loc_stack_rsp]
    mov qword [rax - 8], rbx
    mov qword [ret_stack_rsp], rax
    mov qword [rax], .blockend_0
    jmp proc_cstr_print
.blockend_0: ; call
    pop rax
    push rax
    push rax
.blockstart_1: ; do
    pop rax
    push rax
    push rax
    pop rax
    mov rbx, [rax]
    push rbx
.blockstart_2: ; call
    mov rax, [ret_stack_rsp]
    add rax, 16
    mov rbx, [loc_stack_rsp]
    mov qword [rax - 8], rbx
    mov qword [ret_stack_rsp], rax
    mov qword [rax], .blockend_2
    jmp proc_cstr_print
.blockend_2: ; call
    push qword 8
    pop rax
    pop rbx
    add rax, rbx
    push rax
    pop rax
    push rax
    push rax
    pop rbx
    test rbx, rbx
.blockstart_3: ; if
    jz .blockend_3
    push str_12
.blockstart_4: ; call
    mov rax, [ret_stack_rsp]
    add rax, 16
    mov rbx, [loc_stack_rsp]
    mov qword [rax - 8], rbx
    mov qword [ret_stack_rsp], rax
    mov qword [rax], .blockend_4
    jmp proc_cstr_print
.blockend_4: ; call
.blockend_3: ; if
    pop rax
    push rax
    push rax
    pop rax
    mov rbx, [rax]
    push rbx
    push qword 0
    xor rcx, rcx
    mov rdx, 1
    pop rax
    pop rbx
    cmp rax, rbx
    cmovne rcx, rdx
    push rcx
    pop rbx
    test rbx, rbx
    jnz .blockstart_1
.blockend_1: ; do
    add rsp, 8
.blockstart_5: ; call
    mov rax, [ret_stack_rsp]
    add rax, 16
    mov rbx, [loc_stack_rsp]
    mov qword [rax - 8], rbx
    mov qword [ret_stack_rsp], rax
    mov qword [rax], .blockend_5
    jmp proc_cstr_cr
.blockend_5: ; call
.blockstart_6: ; call
    mov rax, [ret_stack_rsp]
    add rax, 16
    mov rbx, [loc_stack_rsp]
    mov qword [rax - 8], rbx
    mov qword [ret_stack_rsp], rax
    mov qword [rax], .blockend_6
    jmp proc_os_execcmdloud
.blockend_6: ; call
    mov rax, [ret_stack_rsp]
    mov rax, [rax - 8]
    mov [loc_stack_rsp], rax
    mov rax, [ret_stack_rsp]
    sub rax, 16
    mov qword [ret_stack_rsp], rax
    add rax, 16
    jmp qword [rax]
proc_os_args:
    pop rax
    push rax
    push rax
    mov rax, [args_ptr]
    mov rax, [rax]
    push rax
    pop rbx
    pop rax
    sub rax, rbx
    push rax
    push qword 0
    xor rcx, rcx
    mov rdx, 1
    pop rbx
    pop rax
    cmp rax, rbx
    cmovl rcx, rdx
    push rcx
    pop rax
    xor rax, 1
    push rax
    pop rbx
    test rbx, rbx
.blockstart_0: ; if
    jz .blockend_0
    add rsp, 8
    push qword 0
    mov rax, [ret_stack_rsp]
    mov rax, [rax - 8]
    mov [loc_stack_rsp], rax
    mov rax, [ret_stack_rsp]
    sub rax, 16
    mov qword [ret_stack_rsp], rax
    add rax, 16
    jmp qword [rax]
.blockend_0: ; if
    push qword 8
    pop rax
    pop rbx
    imul rax, rbx
    push rax
    mov rax, [args_ptr]
    add rax, 8
    push rax
    pop rax
    pop rbx
    add rax, rbx
    push rax
    pop rax
    mov rbx, [rax]
    push rbx
    mov rax, [ret_stack_rsp]
    mov rax, [rax - 8]
    mov [loc_stack_rsp], rax
    mov rax, [ret_stack_rsp]
    sub rax, 16
    mov qword [ret_stack_rsp], rax
    add rax, 16
    jmp qword [rax]
    mov rax, [ret_stack_rsp]
    mov rax, [rax - 8]
    mov [loc_stack_rsp], rax
    mov rax, [ret_stack_rsp]
    sub rax, 16
    mov qword [ret_stack_rsp], rax
    add rax, 16
    jmp qword [rax]
proc_os_env:
    mov rax, [loc_stack_rsp]
    add rax, 8
    mov [loc_stack_rsp], rax
    mov rax, [loc_stack_rsp]
    add rax, 64
    mov [loc_stack_rsp], rax
    mov rax, [ret_stack_rsp]
    mov rax, [rax-8]
    add rax, 0
    push rax
    pop rax
    pop rbx
    push rax
    push rbx
    pop rbx
    pop rax
    mov qword [rax], rbx
    push rax
    add rsp, 8
    mov rax, [args_ptr]
    mov rax, [rax]
    add rax, 2
    shl rax, 3
    mov rbx, [args_ptr]
    add rbx, rax
    push rbx
.blockstart_0: ; do
    pop rax
    push rax
    push rax
    pop rax
    mov rbx, [rax]
    push rbx
    push qword 61
    mov rax, [ret_stack_rsp]
    mov rax, [rax-8]
    add rax, 8
    push rax
.blockstart_1: ; call
    mov rax, [ret_stack_rsp]
    add rax, 16
    mov rbx, [loc_stack_rsp]
    mov qword [rax - 8], rbx
    mov qword [ret_stack_rsp], rax
    mov qword [rax], .blockend_1
    jmp proc_cstr_split
.blockend_1: ; call
    mov rax, [ret_stack_rsp]
    mov rax, [rax-8]
    add rax, 0
    push rax
    pop rax
    mov rbx, [rax]
    push rbx
.blockstart_2: ; call
    mov rax, [ret_stack_rsp]
    add rax, 16
    mov rbx, [loc_stack_rsp]
    mov qword [rax - 8], rbx
    mov qword [ret_stack_rsp], rax
    mov qword [rax], .blockend_2
    jmp proc_cstr_eq
.blockend_2: ; call
    pop rbx
    test rbx, rbx
.blockstart_3: ; if
    jz .blockend_3
    pop rax
    pop rbx
    push rax
    push rbx
    add rsp, 8
    mov rax, [ret_stack_rsp]
    mov rax, [rax - 8]
    mov [loc_stack_rsp], rax
    mov rax, [ret_stack_rsp]
    sub rax, 16
    mov qword [ret_stack_rsp], rax
    add rax, 16
    jmp qword [rax]
.blockend_3: ; if
    add rsp, 8
    push qword 8
    pop rax
    pop rbx
    add rax, rbx
    push rax
    pop rax
    push rax
    push rax
    pop rax
    mov rbx, [rax]
    push rbx
    push qword 0
    xor rcx, rcx
    mov rdx, 1
    pop rax
    pop rbx
    cmp rax, rbx
    cmovne rcx, rdx
    push rcx
    pop rbx
    test rbx, rbx
    jnz .blockstart_0
.blockend_0: ; do
    add rsp, 8
    push qword 0
    mov rax, [ret_stack_rsp]
    mov rax, [rax - 8]
    mov [loc_stack_rsp], rax
    mov rax, [ret_stack_rsp]
    sub rax, 16
    mov qword [ret_stack_rsp], rax
    add rax, 16
    jmp qword [rax]
proc_os_openf:
    push qword 257
    pop rax
    pop rdi
    pop rsi
    pop rdx
    pop r10
    syscall
    push rax
    mov rax, [ret_stack_rsp]
    mov rax, [rax - 8]
    mov [loc_stack_rsp], rax
    mov rax, [ret_stack_rsp]
    sub rax, 16
    mov qword [ret_stack_rsp], rax
    add rax, 16
    jmp qword [rax]
proc_os_writef:
    push qword 1
    pop rax
    pop rdi
    pop rsi
    pop rdx
    syscall
    push rax
    push qword 0
    xor rcx, rcx
    mov rdx, 1
    pop rbx
    pop rax
    cmp rax, rbx
    cmovl rcx, rdx
    push rcx
    pop rbx
    test rbx, rbx
.blockstart_0: ; if
    jz .blockend_0
    push str_13
.blockstart_1: ; call
    mov rax, [ret_stack_rsp]
    add rax, 16
    mov rbx, [loc_stack_rsp]
    mov qword [rax - 8], rbx
    mov qword [ret_stack_rsp], rax
    mov qword [rax], .blockend_1
    jmp proc_cstr_println
.blockend_1: ; call
    push qword -1
    mov rax, 60
    pop rdi
    syscall
.blockend_0: ; if
    mov rax, [ret_stack_rsp]
    mov rax, [rax - 8]
    mov [loc_stack_rsp], rax
    mov rax, [ret_stack_rsp]
    sub rax, 16
    mov qword [ret_stack_rsp], rax
    add rax, 16
    jmp qword [rax]
proc_os_readf:
    push qword 0
    pop rax
    pop rdi
    pop rsi
    pop rdx
    syscall
    push rax
    pop rax
    push rax
    push rax
    push qword 0
    xor rcx, rcx
    mov rdx, 1
    pop rbx
    pop rax
    cmp rax, rbx
    cmovl rcx, rdx
    push rcx
    pop rbx
    test rbx, rbx
.blockstart_0: ; if
    jz .blockend_0
    push str_14
.blockstart_1: ; call
    mov rax, [ret_stack_rsp]
    add rax, 16
    mov rbx, [loc_stack_rsp]
    mov qword [rax - 8], rbx
    mov qword [ret_stack_rsp], rax
    mov qword [rax], .blockend_1
    jmp proc_cstr_println
.blockend_1: ; call
    add rsp, 8
    push qword -1
    mov rax, 60
    pop rdi
    syscall
.blockend_0: ; if
    mov rax, [ret_stack_rsp]
    mov rax, [rax - 8]
    mov [loc_stack_rsp], rax
    mov rax, [ret_stack_rsp]
    sub rax, 16
    mov qword [ret_stack_rsp], rax
    add rax, 16
    jmp qword [rax]
proc_os_closef:
    push qword 3
    pop rax
    pop rdi
    syscall
    push rax
    push qword 0
    xor rcx, rcx
    mov rdx, 1
    pop rbx
    pop rax
    cmp rax, rbx
    cmovl rcx, rdx
    push rcx
    pop rbx
    test rbx, rbx
.blockstart_0: ; if
    jz .blockend_0
    push str_15
.blockstart_1: ; call
    mov rax, [ret_stack_rsp]
    add rax, 16
    mov rbx, [loc_stack_rsp]
    mov qword [rax - 8], rbx
    mov qword [ret_stack_rsp], rax
    mov qword [rax], .blockend_1
    jmp proc_cstr_println
.blockend_1: ; call
    push qword -1
    mov rax, 60
    pop rdi
    syscall
.blockend_0: ; if
    mov rax, [ret_stack_rsp]
    mov rax, [rax - 8]
    mov [loc_stack_rsp], rax
    mov rax, [ret_stack_rsp]
    sub rax, 16
    mov qword [ret_stack_rsp], rax
    add rax, 16
    jmp qword [rax]
proc_os_existsf:
    mov rax, [loc_stack_rsp]
    add rax, 144
    mov [loc_stack_rsp], rax
    mov rax, [ret_stack_rsp]
    mov rax, [rax-8]
    add rax, 0
    push rax
    pop rax
    pop rbx
    push rax
    push rbx
    push qword 4
    pop rax
    pop rdi
    pop rsi
    syscall
    push rax
    push qword 0
    xor rcx, rcx
    mov rdx, 1
    pop rbx
    pop rax
    cmp rax, rbx
    cmovl rcx, rdx
    push rcx
    pop rax
    xor rax, 1
    push rax
    mov rax, [ret_stack_rsp]
    mov rax, [rax - 8]
    mov [loc_stack_rsp], rax
    mov rax, [ret_stack_rsp]
    sub rax, 16
    mov qword [ret_stack_rsp], rax
    add rax, 16
    jmp qword [rax]
proc_os_cwd:
    push str_16
.blockstart_0: ; call
    mov rax, [ret_stack_rsp]
    add rax, 16
    mov rbx, [loc_stack_rsp]
    mov qword [rax - 8], rbx
    mov qword [ret_stack_rsp], rax
    mov qword [rax], .blockend_0
    jmp proc_os_env
.blockend_0: ; call
    mov rax, [ret_stack_rsp]
    mov rax, [rax - 8]
    mov [loc_stack_rsp], rax
    mov rax, [ret_stack_rsp]
    sub rax, 16
    mov qword [ret_stack_rsp], rax
    add rax, 16
    jmp qword [rax]
proc_VERSION:
    push str_17
    mov rax, [ret_stack_rsp]
    mov rax, [rax - 8]
    mov [loc_stack_rsp], rax
    mov rax, [ret_stack_rsp]
    sub rax, 16
    mov qword [ret_stack_rsp], rax
    add rax, 16
    jmp qword [rax]
proc_inner:
    push qword 1
    pop rax
    pop rbx
    add rax, rbx
    push rax
    pop rax
    push rax
    push rax
    pop rax
    push rax
    push rax
.blockstart_0: ; call
    mov rax, [ret_stack_rsp]
    add rax, 16
    mov rbx, [loc_stack_rsp]
    mov qword [rax - 8], rbx
    mov qword [ret_stack_rsp], rax
    mov qword [rax], .blockend_0
    jmp proc_cstr_len
.blockend_0: ; call
    push qword 1
    pop rbx
    pop rax
    sub rax, rbx
    push rax
    pop rax
    pop rbx
    add rax, rbx
    push rax
    push qword 0
    pop rbx
    pop rax
    mov byte [rax], bl
    push rax
    add rsp, 8
    mov rax, [ret_stack_rsp]
    mov rax, [rax - 8]
    mov [loc_stack_rsp], rax
    mov rax, [ret_stack_rsp]
    sub rax, 16
    mov qword [ret_stack_rsp], rax
    add rax, 16
    jmp qword [rax]
proc_pushstack:
.blockstart_0: ; call
    mov rax, [ret_stack_rsp]
    add rax, 16
    mov rbx, [loc_stack_rsp]
    mov qword [rax - 8], rbx
    mov qword [ret_stack_rsp], rax
    mov qword [rax], .blockend_0
    jmp proc_inner
.blockend_0: ; call
    pop rax
    push rax
    push rax
.blockstart_1: ; call
    mov rax, [ret_stack_rsp]
    add rax, 16
    mov rbx, [loc_stack_rsp]
    mov qword [rax - 8], rbx
    mov qword [ret_stack_rsp], rax
    mov qword [rax], .blockend_1
    jmp proc_cstr_len
.blockend_1: ; call
    push qword 1
    pop rax
    pop rbx
    add rax, rbx
    push rax
.blockstart_2: ; call
    mov rax, [ret_stack_rsp]
    add rax, 16
    mov rbx, [loc_stack_rsp]
    mov qword [rax - 8], rbx
    mov qword [ret_stack_rsp], rax
    mov qword [rax], .blockend_2
    jmp proc_heap_zalloc
.blockend_2: ; call
    pop rax
    pop rbx
    push rax
    push rbx
.blockstart_3: ; call
    mov rax, [ret_stack_rsp]
    add rax, 16
    mov rbx, [loc_stack_rsp]
    mov qword [rax - 8], rbx
    mov qword [ret_stack_rsp], rax
    mov qword [rax], .blockend_3
    jmp proc_cstr_cpy
.blockend_3: ; call
.blockstart_4: ; call
    mov rax, [ret_stack_rsp]
    add rax, 16
    mov rbx, [loc_stack_rsp]
    mov qword [rax - 8], rbx
    mov qword [ret_stack_rsp], rax
    mov qword [rax], .blockend_4
    jmp proc_cstr_len
.blockend_4: ; call
    pop rax
    pop rbx
    push rbx
    push rax
    push rbx
    pop rax
    pop rbx
    add rax, rbx
    push rax
    push qword 1
    pop rax
    pop rbx
    add rax, rbx
    push rax
    push qword 0
    pop rbx
    pop rax
    mov byte [rax], bl
    push rax
    add rsp, 8
    push mem+2514; stack
    pop rax
    mov rbx, [rax]
    push rbx
    push mem+2522; stacktop
    pop rax
    mov rbx, [rax]
    push rbx
    pop rax
    pop rbx
    add rax, rbx
    push rax
    pop rax
    push rax
    push rax
    pop rax
    mov rbx, [rax]
    push rbx
    push qword 0
    xor rcx, rcx
    mov rdx, 1
    pop rax
    pop rbx
    cmp rax, rbx
    cmovne rcx, rdx
    push rcx
    pop rbx
    test rbx, rbx
.blockstart_5: ; if
    jz .blockend_5
    pop rax
    push rax
    push rax
    pop rax
    mov rbx, [rax]
    push rbx
.blockstart_6: ; call
    mov rax, [ret_stack_rsp]
    add rax, 16
    mov rbx, [loc_stack_rsp]
    mov qword [rax - 8], rbx
    mov qword [ret_stack_rsp], rax
    mov qword [rax], .blockend_6
    jmp proc_heap_free
.blockend_6: ; call
.blockend_5: ; if
    pop rax
    pop rbx
    push rax
    push rbx
    pop rbx
    pop rax
    mov qword [rax], rbx
    push rax
    add rsp, 8
    push mem+2522; stacktop
    pop rax
    push rax
    push rax
    pop rax
    mov rbx, [rax]
    push rbx
    push qword 8
    pop rax
    pop rbx
    add rax, rbx
    push rax
    pop rbx
    pop rax
    mov qword [rax], rbx
    push rax
    add rsp, 8
    mov rax, [ret_stack_rsp]
    mov rax, [rax - 8]
    mov [loc_stack_rsp], rax
    mov rax, [ret_stack_rsp]
    sub rax, 16
    mov qword [ret_stack_rsp], rax
    add rax, 16
    jmp qword [rax]
proc_popstack:
    push mem+2522; stacktop
    pop rax
    push rax
    push rax
    pop rax
    mov rbx, [rax]
    push rbx
    push qword 8
    pop rbx
    pop rax
    sub rax, rbx
    push rax
    pop rbx
    pop rax
    mov qword [rax], rbx
    push rax
    add rsp, 8
    push mem+2514; stack
    pop rax
    mov rbx, [rax]
    push rbx
    push mem+2522; stacktop
    pop rax
    mov rbx, [rax]
    push rbx
    pop rax
    pop rbx
    add rax, rbx
    push rax
    pop rax
    mov rbx, [rax]
    push rbx
    mov rax, [ret_stack_rsp]
    mov rax, [rax - 8]
    mov [loc_stack_rsp], rax
    mov rax, [ret_stack_rsp]
    sub rax, 16
    mov qword [ret_stack_rsp], rax
    add rax, 16
    jmp qword [rax]
proc_help:
    pop rax
    push rax
    push rax
    push qword 0
    xor rcx, rcx
    mov rdx, 1
    pop rax
    pop rbx
    cmp rax, rbx
    cmove rcx, rdx
    push rcx
    pop rbx
    test rbx, rbx
.blockstart_0: ; if
    jz .blockend_0
    push str_18
.blockstart_1: ; call
    mov rax, [ret_stack_rsp]
    add rax, 16
    mov rbx, [loc_stack_rsp]
    mov qword [rax - 8], rbx
    mov qword [ret_stack_rsp], rax
    mov qword [rax], .blockend_1
    jmp proc_cstr_print
.blockend_1: ; call
.blockstart_2: ; call
    mov rax, [ret_stack_rsp]
    add rax, 16
    mov rbx, [loc_stack_rsp]
    mov qword [rax - 8], rbx
    mov qword [ret_stack_rsp], rax
    mov qword [rax], .blockend_2
    jmp proc_VERSION
.blockend_2: ; call
.blockstart_3: ; call
    mov rax, [ret_stack_rsp]
    add rax, 16
    mov rbx, [loc_stack_rsp]
    mov qword [rax - 8], rbx
    mov qword [ret_stack_rsp], rax
    mov qword [rax], .blockend_3
    jmp proc_cstr_println
.blockend_3: ; call
    add rsp, 8
    push qword 0
    mov rax, 60
    pop rdi
    syscall
.blockend_0: ; if
    pop rax
    push rax
    push rax
    push qword 1
    xor rcx, rcx
    mov rdx, 1
    pop rax
    pop rbx
    cmp rax, rbx
    cmove rcx, rdx
    push rcx
    pop rbx
    test rbx, rbx
.blockstart_4: ; if
    jz .blockend_4
    push str_19
.blockstart_5: ; call
    mov rax, [ret_stack_rsp]
    add rax, 16
    mov rbx, [loc_stack_rsp]
    mov qword [rax - 8], rbx
    mov qword [ret_stack_rsp], rax
    mov qword [rax], .blockend_5
    jmp proc_cstr_println
.blockend_5: ; call
.blockend_4: ; if
    pop rax
    push rax
    push rax
    push qword 2
    xor rcx, rcx
    mov rdx, 1
    pop rax
    pop rbx
    cmp rax, rbx
    cmove rcx, rdx
    push rcx
    pop rbx
    test rbx, rbx
.blockstart_6: ; if
    jz .blockend_6
    push str_20
.blockstart_7: ; call
    mov rax, [ret_stack_rsp]
    add rax, 16
    mov rbx, [loc_stack_rsp]
    mov qword [rax - 8], rbx
    mov qword [ret_stack_rsp], rax
    mov qword [rax], .blockend_7
    jmp proc_cstr_print
.blockend_7: ; call
    push qword 1
.blockstart_8: ; call
    mov rax, [ret_stack_rsp]
    add rax, 16
    mov rbx, [loc_stack_rsp]
    mov qword [rax - 8], rbx
    mov qword [ret_stack_rsp], rax
    mov qword [rax], .blockend_8
    jmp proc_os_args
.blockend_8: ; call
.blockstart_9: ; call
    mov rax, [ret_stack_rsp]
    add rax, 16
    mov rbx, [loc_stack_rsp]
    mov qword [rax - 8], rbx
    mov qword [ret_stack_rsp], rax
    mov qword [rax], .blockend_9
    jmp proc_cstr_print
.blockend_9: ; call
    push str_21
.blockstart_10: ; call
    mov rax, [ret_stack_rsp]
    add rax, 16
    mov rbx, [loc_stack_rsp]
    mov qword [rax - 8], rbx
    mov qword [ret_stack_rsp], rax
    mov qword [rax], .blockend_10
    jmp proc_cstr_println
.blockend_10: ; call
.blockend_6: ; if
    pop rax
    push rax
    push rax
    push qword 3
    xor rcx, rcx
    mov rdx, 1
    pop rax
    pop rbx
    cmp rax, rbx
    cmove rcx, rdx
    push rcx
    pop rbx
    test rbx, rbx
.blockstart_11: ; if
    jz .blockend_11
    push str_22
.blockstart_12: ; call
    mov rax, [ret_stack_rsp]
    add rax, 16
    mov rbx, [loc_stack_rsp]
    mov qword [rax - 8], rbx
    mov qword [ret_stack_rsp], rax
    mov qword [rax], .blockend_12
    jmp proc_cstr_println
.blockend_12: ; call
.blockend_11: ; if
    add rsp, 8
    push str_23
.blockstart_13: ; call
    mov rax, [ret_stack_rsp]
    add rax, 16
    mov rbx, [loc_stack_rsp]
    mov qword [rax - 8], rbx
    mov qword [ret_stack_rsp], rax
    mov qword [rax], .blockend_13
    jmp proc_cstr_print
.blockend_13: ; call
.blockstart_14: ; call
    mov rax, [ret_stack_rsp]
    add rax, 16
    mov rbx, [loc_stack_rsp]
    mov qword [rax - 8], rbx
    mov qword [ret_stack_rsp], rax
    mov qword [rax], .blockend_14
    jmp proc_VERSION
.blockend_14: ; call
.blockstart_15: ; call
    mov rax, [ret_stack_rsp]
    add rax, 16
    mov rbx, [loc_stack_rsp]
    mov qword [rax - 8], rbx
    mov qword [ret_stack_rsp], rax
    mov qword [rax], .blockend_15
    jmp proc_cstr_print
.blockend_15: ; call
    push str_24
.blockstart_16: ; call
    mov rax, [ret_stack_rsp]
    add rax, 16
    mov rbx, [loc_stack_rsp]
    mov qword [rax - 8], rbx
    mov qword [ret_stack_rsp], rax
    mov qword [rax], .blockend_16
    jmp proc_cstr_println
.blockend_16: ; call
.blockstart_17: ; call
    mov rax, [ret_stack_rsp]
    add rax, 16
    mov rbx, [loc_stack_rsp]
    mov qword [rax - 8], rbx
    mov qword [ret_stack_rsp], rax
    mov qword [rax], .blockend_17
    jmp proc_cstr_cr
.blockend_17: ; call
    push str_25
.blockstart_18: ; call
    mov rax, [ret_stack_rsp]
    add rax, 16
    mov rbx, [loc_stack_rsp]
    mov qword [rax - 8], rbx
    mov qword [ret_stack_rsp], rax
    mov qword [rax], .blockend_18
    jmp proc_cstr_println
.blockend_18: ; call
    push str_26
.blockstart_19: ; call
    mov rax, [ret_stack_rsp]
    add rax, 16
    mov rbx, [loc_stack_rsp]
    mov qword [rax - 8], rbx
    mov qword [ret_stack_rsp], rax
    mov qword [rax], .blockend_19
    jmp proc_cstr_println
.blockend_19: ; call
    push str_27
.blockstart_20: ; call
    mov rax, [ret_stack_rsp]
    add rax, 16
    mov rbx, [loc_stack_rsp]
    mov qword [rax - 8], rbx
    mov qword [ret_stack_rsp], rax
    mov qword [rax], .blockend_20
    jmp proc_cstr_println
.blockend_20: ; call
    push str_28
.blockstart_21: ; call
    mov rax, [ret_stack_rsp]
    add rax, 16
    mov rbx, [loc_stack_rsp]
    mov qword [rax - 8], rbx
    mov qword [ret_stack_rsp], rax
    mov qword [rax], .blockend_21
    jmp proc_cstr_println
.blockend_21: ; call
.blockstart_22: ; call
    mov rax, [ret_stack_rsp]
    add rax, 16
    mov rbx, [loc_stack_rsp]
    mov qword [rax - 8], rbx
    mov qword [ret_stack_rsp], rax
    mov qword [rax], .blockend_22
    jmp proc_cstr_cr
.blockend_22: ; call
    push qword 1
    mov rax, 60
    pop rdi
    syscall
    mov rax, [ret_stack_rsp]
    mov rax, [rax - 8]
    mov [loc_stack_rsp], rax
    mov rax, [ret_stack_rsp]
    sub rax, 16
    mov qword [ret_stack_rsp], rax
    add rax, 16
    jmp qword [rax]
proc_openinput:
    push qword 0
    pop rax
    pop rbx
    push rax
    push rbx
    push qword 0
    pop rax
    pop rbx
    push rax
    push rbx
    push qword 0
    pop rax
    pop rbx
    push rbx
    push rax
    push rbx
    pop rax
    xor rbx, rbx
    mov bl, [rax]
    push rbx
    push qword 47
    xor rcx, rcx
    mov rdx, 1
    pop rax
    pop rbx
    cmp rax, rbx
    cmovne rcx, rdx
    push rcx
    pop rbx
    test rbx, rbx
.blockstart_0: ; if
    jz .blockend_0
    add rsp, 8
    push qword -100
.blockend_0: ; if
.blockstart_1: ; call
    mov rax, [ret_stack_rsp]
    add rax, 16
    mov rbx, [loc_stack_rsp]
    mov qword [rax - 8], rbx
    mov qword [ret_stack_rsp], rax
    mov qword [rax], .blockend_1
    jmp proc_os_openf
.blockend_1: ; call
    push mem+1473; inputfd
    pop rax
    pop rbx
    push rax
    push rbx
    pop rbx
    pop rax
    mov qword [rax], rbx
    push rax
    add rsp, 8
    mov rax, [ret_stack_rsp]
    mov rax, [rax - 8]
    mov [loc_stack_rsp], rax
    mov rax, [ret_stack_rsp]
    sub rax, 16
    mov qword [ret_stack_rsp], rax
    add rax, 16
    jmp qword [rax]
proc_clonerepo:
    push mem+129; tempclone
.blockstart_0: ; call
    mov rax, [ret_stack_rsp]
    add rax, 16
    mov rbx, [loc_stack_rsp]
    mov qword [rax - 8], rbx
    mov qword [ret_stack_rsp], rax
    mov qword [rax], .blockend_0
    jmp proc_cstr_clear
.blockend_0: ; call
    push str_29
.blockstart_1: ; call
    mov rax, [ret_stack_rsp]
    add rax, 16
    mov rbx, [loc_stack_rsp]
    mov qword [rax - 8], rbx
    mov qword [ret_stack_rsp], rax
    mov qword [rax], .blockend_1
    jmp proc_cstr_cpy
.blockend_1: ; call
    add rsp, 8
    push qword 2
.blockstart_2: ; call
    mov rax, [ret_stack_rsp]
    add rax, 16
    mov rbx, [loc_stack_rsp]
    mov qword [rax - 8], rbx
    mov qword [ret_stack_rsp], rax
    mov qword [rax], .blockend_2
    jmp proc_os_args
.blockend_2: ; call
.blockstart_3: ; call
    mov rax, [ret_stack_rsp]
    add rax, 16
    mov rbx, [loc_stack_rsp]
    mov qword [rax - 8], rbx
    mov qword [ret_stack_rsp], rax
    mov qword [rax], .blockend_3
    jmp proc_cstr_cat
.blockend_3: ; call
    add rsp, 8
    push mem+193; temppath
.blockstart_4: ; call
    mov rax, [ret_stack_rsp]
    add rax, 16
    mov rbx, [loc_stack_rsp]
    mov qword [rax - 8], rbx
    mov qword [ret_stack_rsp], rax
    mov qword [rax], .blockend_4
    jmp proc_cstr_clear
.blockend_4: ; call
    push mem+449; cachepath
.blockstart_5: ; call
    mov rax, [ret_stack_rsp]
    add rax, 16
    mov rbx, [loc_stack_rsp]
    mov qword [rax - 8], rbx
    mov qword [ret_stack_rsp], rax
    mov qword [rax], .blockend_5
    jmp proc_cstr_cpy
.blockend_5: ; call
    add rsp, 8
    push qword 2
.blockstart_6: ; call
    mov rax, [ret_stack_rsp]
    add rax, 16
    mov rbx, [loc_stack_rsp]
    mov qword [rax - 8], rbx
    mov qword [ret_stack_rsp], rax
    mov qword [rax], .blockend_6
    jmp proc_os_args
.blockend_6: ; call
.blockstart_7: ; call
    mov rax, [ret_stack_rsp]
    add rax, 16
    mov rbx, [loc_stack_rsp]
    mov qword [rax - 8], rbx
    mov qword [ret_stack_rsp], rax
    mov qword [rax], .blockend_7
    jmp proc_cstr_cat
.blockend_7: ; call
    add rsp, 8
    push mem+65; tempcommand
    push str_30
    pop rbx
    pop rax
    mov qword [rax], rbx
    push rax
    push qword 8
    pop rax
    pop rbx
    add rax, rbx
    push rax
    push str_31
    pop rbx
    pop rax
    mov qword [rax], rbx
    push rax
    push qword 8
    pop rax
    pop rbx
    add rax, rbx
    push rax
    push mem+129; tempclone
    pop rbx
    pop rax
    mov qword [rax], rbx
    push rax
    push qword 8
    pop rax
    pop rbx
    add rax, rbx
    push rax
    push mem+193; temppath
    pop rbx
    pop rax
    mov qword [rax], rbx
    push rax
    push qword 8
    pop rax
    pop rbx
    add rax, rbx
    push rax
    push qword 0
    pop rbx
    pop rax
    mov qword [rax], rbx
    push rax
    add rsp, 8
    push mem+65; tempcommand
.blockstart_8: ; call
    mov rax, [ret_stack_rsp]
    add rax, 16
    mov rbx, [loc_stack_rsp]
    mov qword [rax - 8], rbx
    mov qword [ret_stack_rsp], rax
    mov qword [rax], .blockend_8
    jmp proc_os_execcmdecho
.blockend_8: ; call
    add rsp, 8
    mov rax, [ret_stack_rsp]
    mov rax, [rax - 8]
    mov [loc_stack_rsp], rax
    mov rax, [ret_stack_rsp]
    sub rax, 16
    mov qword [ret_stack_rsp], rax
    add rax, 16
    jmp qword [rax]
proc_pullrepo:
    push mem+65; tempcommand
.blockstart_0: ; call
    mov rax, [ret_stack_rsp]
    add rax, 16
    mov rbx, [loc_stack_rsp]
    mov qword [rax - 8], rbx
    mov qword [ret_stack_rsp], rax
    mov qword [rax], .blockend_0
    jmp proc_os_execcmdecho
.blockend_0: ; call
    add rsp, 8
    push mem+193; temppath
.blockstart_1: ; call
    mov rax, [ret_stack_rsp]
    add rax, 16
    mov rbx, [loc_stack_rsp]
    mov qword [rax - 8], rbx
    mov qword [ret_stack_rsp], rax
    mov qword [rax], .blockend_1
    jmp proc_cstr_clear
.blockend_1: ; call
    push mem+449; cachepath
.blockstart_2: ; call
    mov rax, [ret_stack_rsp]
    add rax, 16
    mov rbx, [loc_stack_rsp]
    mov qword [rax - 8], rbx
    mov qword [ret_stack_rsp], rax
    mov qword [rax], .blockend_2
    jmp proc_cstr_cpy
.blockend_2: ; call
    add rsp, 8
    push qword 2
.blockstart_3: ; call
    mov rax, [ret_stack_rsp]
    add rax, 16
    mov rbx, [loc_stack_rsp]
    mov qword [rax - 8], rbx
    mov qword [ret_stack_rsp], rax
    mov qword [rax], .blockend_3
    jmp proc_os_args
.blockend_3: ; call
.blockstart_4: ; call
    mov rax, [ret_stack_rsp]
    add rax, 16
    mov rbx, [loc_stack_rsp]
    mov qword [rax - 8], rbx
    mov qword [ret_stack_rsp], rax
    mov qword [rax], .blockend_4
    jmp proc_cstr_cat
.blockend_4: ; call
    add rsp, 8
    push mem+65; tempcommand
    push str_32
    pop rbx
    pop rax
    mov qword [rax], rbx
    push rax
    push qword 8
    pop rax
    pop rbx
    add rax, rbx
    push rax
    push str_33
    pop rbx
    pop rax
    mov qword [rax], rbx
    push rax
    push qword 8
    pop rax
    pop rbx
    add rax, rbx
    push rax
    push mem+193; temppath
    pop rbx
    pop rax
    mov qword [rax], rbx
    push rax
    push qword 8
    pop rax
    pop rbx
    add rax, rbx
    push rax
    push str_34
    pop rbx
    pop rax
    mov qword [rax], rbx
    push rax
    push qword 8
    pop rax
    pop rbx
    add rax, rbx
    push rax
    push str_35
    pop rbx
    pop rax
    mov qword [rax], rbx
    push rax
    push qword 8
    pop rax
    pop rbx
    add rax, rbx
    push rax
    push str_36
    pop rbx
    pop rax
    mov qword [rax], rbx
    push rax
    push qword 8
    pop rax
    pop rbx
    add rax, rbx
    push rax
    push qword 0
    pop rbx
    pop rax
    mov qword [rax], rbx
    push rax
    add rsp, 8
    push mem+65; tempcommand
.blockstart_5: ; call
    mov rax, [ret_stack_rsp]
    add rax, 16
    mov rbx, [loc_stack_rsp]
    mov qword [rax - 8], rbx
    mov qword [ret_stack_rsp], rax
    mov qword [rax], .blockend_5
    jmp proc_os_execcmdecho
.blockend_5: ; call
    add rsp, 8
    mov rax, [ret_stack_rsp]
    mov rax, [rax - 8]
    mov [loc_stack_rsp], rax
    mov rax, [ret_stack_rsp]
    sub rax, 16
    mov qword [ret_stack_rsp], rax
    add rax, 16
    jmp qword [rax]
proc_setsrc:
    push mem+705; srcpath
.blockstart_0: ; call
    mov rax, [ret_stack_rsp]
    add rax, 16
    mov rbx, [loc_stack_rsp]
    mov qword [rax - 8], rbx
    mov qword [ret_stack_rsp], rax
    mov qword [rax], .blockend_0
    jmp proc_cstr_clear
.blockend_0: ; call
    push mem+449; cachepath
.blockstart_1: ; call
    mov rax, [ret_stack_rsp]
    add rax, 16
    mov rbx, [loc_stack_rsp]
    mov qword [rax - 8], rbx
    mov qword [ret_stack_rsp], rax
    mov qword [rax], .blockend_1
    jmp proc_cstr_cpy
.blockend_1: ; call
    add rsp, 8
    push str_37
.blockstart_2: ; call
    mov rax, [ret_stack_rsp]
    add rax, 16
    mov rbx, [loc_stack_rsp]
    mov qword [rax - 8], rbx
    mov qword [ret_stack_rsp], rax
    mov qword [rax], .blockend_2
    jmp proc_cstr_cat
.blockend_2: ; call
.blockstart_3: ; call
    mov rax, [ret_stack_rsp]
    add rax, 16
    mov rbx, [loc_stack_rsp]
    mov qword [rax - 8], rbx
    mov qword [ret_stack_rsp], rax
    mov qword [rax], .blockend_3
    jmp proc_popstack
.blockend_3: ; call
.blockstart_4: ; call
    mov rax, [ret_stack_rsp]
    add rax, 16
    mov rbx, [loc_stack_rsp]
    mov qword [rax - 8], rbx
    mov qword [ret_stack_rsp], rax
    mov qword [rax], .blockend_4
    jmp proc_cstr_cat
.blockend_4: ; call
    push str_38
.blockstart_5: ; call
    mov rax, [ret_stack_rsp]
    add rax, 16
    mov rbx, [loc_stack_rsp]
    mov qword [rax - 8], rbx
    mov qword [ret_stack_rsp], rax
    mov qword [rax], .blockend_5
    jmp proc_cstr_cat
.blockend_5: ; call
    add rsp, 8
    mov rax, [ret_stack_rsp]
    mov rax, [rax - 8]
    mov [loc_stack_rsp], rax
    mov rax, [ret_stack_rsp]
    sub rax, 16
    mov qword [ret_stack_rsp], rax
    add rax, 16
    jmp qword [rax]
proc_addreq:
    push mem+193; temppath
.blockstart_0: ; call
    mov rax, [ret_stack_rsp]
    add rax, 16
    mov rbx, [loc_stack_rsp]
    mov qword [rax - 8], rbx
    mov qword [ret_stack_rsp], rax
    mov qword [rax], .blockend_0
    jmp proc_cstr_clear
.blockend_0: ; call
    push str_39
.blockstart_1: ; call
    mov rax, [ret_stack_rsp]
    add rax, 16
    mov rbx, [loc_stack_rsp]
    mov qword [rax - 8], rbx
    mov qword [ret_stack_rsp], rax
    mov qword [rax], .blockend_1
    jmp proc_os_env
.blockend_1: ; call
.blockstart_2: ; call
    mov rax, [ret_stack_rsp]
    add rax, 16
    mov rbx, [loc_stack_rsp]
    mov qword [rax - 8], rbx
    mov qword [ret_stack_rsp], rax
    mov qword [rax], .blockend_2
    jmp proc_cstr_cpy
.blockend_2: ; call
    add rsp, 8
    push str_40
.blockstart_3: ; call
    mov rax, [ret_stack_rsp]
    add rax, 16
    mov rbx, [loc_stack_rsp]
    mov qword [rax - 8], rbx
    mov qword [ret_stack_rsp], rax
    mov qword [rax], .blockend_3
    jmp proc_cstr_cat
.blockend_3: ; call
    add rsp, 8
    push mem+65; tempcommand
    push mem+193; temppath
    pop rbx
    pop rax
    mov qword [rax], rbx
    push rax
    push qword 8
    pop rax
    pop rbx
    add rax, rbx
    push rax
    push str_41
    pop rbx
    pop rax
    mov qword [rax], rbx
    push rax
    push qword 8
    pop rax
    pop rbx
    add rax, rbx
    push rax
.blockstart_4: ; call
    mov rax, [ret_stack_rsp]
    add rax, 16
    mov rbx, [loc_stack_rsp]
    mov qword [rax - 8], rbx
    mov qword [ret_stack_rsp], rax
    mov qword [rax], .blockend_4
    jmp proc_popstack
.blockend_4: ; call
    pop rbx
    pop rax
    mov qword [rax], rbx
    push rax
    push qword 8
    pop rax
    pop rbx
    add rax, rbx
    push rax
    push qword 0
    pop rbx
    pop rax
    mov qword [rax], rbx
    push rax
    add rsp, 8
    push mem+65; tempcommand
.blockstart_5: ; call
    mov rax, [ret_stack_rsp]
    add rax, 16
    mov rbx, [loc_stack_rsp]
    mov qword [rax - 8], rbx
    mov qword [ret_stack_rsp], rax
    mov qword [rax], .blockend_5
    jmp proc_os_execcmdecholoud
.blockend_5: ; call
    add rsp, 8
    mov rax, [ret_stack_rsp]
    mov rax, [rax - 8]
    mov [loc_stack_rsp], rax
    mov rax, [ret_stack_rsp]
    sub rax, 16
    mov qword [ret_stack_rsp], rax
    add rax, 16
    jmp qword [rax]
proc_addbin:
.blockstart_0: ; call
    mov rax, [ret_stack_rsp]
    add rax, 16
    mov rbx, [loc_stack_rsp]
    mov qword [rax - 8], rbx
    mov qword [ret_stack_rsp], rax
    mov qword [rax], .blockend_0
    jmp proc_popstack
.blockend_0: ; call
    push mem+193; temppath
.blockstart_1: ; call
    mov rax, [ret_stack_rsp]
    add rax, 16
    mov rbx, [loc_stack_rsp]
    mov qword [rax - 8], rbx
    mov qword [ret_stack_rsp], rax
    mov qword [rax], .blockend_1
    jmp proc_cstr_clear
.blockend_1: ; call
    push mem+705; srcpath
.blockstart_2: ; call
    mov rax, [ret_stack_rsp]
    add rax, 16
    mov rbx, [loc_stack_rsp]
    mov qword [rax - 8], rbx
    mov qword [ret_stack_rsp], rax
    mov qword [rax], .blockend_2
    jmp proc_cstr_cpy
.blockend_2: ; call
    add rsp, 8
    pop rax
    pop rbx
    push rbx
    push rax
    push rbx
.blockstart_3: ; call
    mov rax, [ret_stack_rsp]
    add rax, 16
    mov rbx, [loc_stack_rsp]
    mov qword [rax - 8], rbx
    mov qword [ret_stack_rsp], rax
    mov qword [rax], .blockend_3
    jmp proc_cstr_cat
.blockend_3: ; call
    push str_42
.blockstart_4: ; call
    mov rax, [ret_stack_rsp]
    add rax, 16
    mov rbx, [loc_stack_rsp]
    mov qword [rax - 8], rbx
    mov qword [ret_stack_rsp], rax
    mov qword [rax], .blockend_4
    jmp proc_cstr_cat
.blockend_4: ; call
    add rsp, 8
    push mem+961; libpath
.blockstart_5: ; call
    mov rax, [ret_stack_rsp]
    add rax, 16
    mov rbx, [loc_stack_rsp]
    mov qword [rax - 8], rbx
    mov qword [ret_stack_rsp], rax
    mov qword [rax], .blockend_5
    jmp proc_cstr_clear
.blockend_5: ; call
    push mem+1217; binpath
.blockstart_6: ; call
    mov rax, [ret_stack_rsp]
    add rax, 16
    mov rbx, [loc_stack_rsp]
    mov qword [rax - 8], rbx
    mov qword [ret_stack_rsp], rax
    mov qword [rax], .blockend_6
    jmp proc_cstr_cpy
.blockend_6: ; call
    add rsp, 8
    pop rax
    pop rbx
    push rax
    push rbx
.blockstart_7: ; call
    mov rax, [ret_stack_rsp]
    add rax, 16
    mov rbx, [loc_stack_rsp]
    mov qword [rax - 8], rbx
    mov qword [ret_stack_rsp], rax
    mov qword [rax], .blockend_7
    jmp proc_cstr_cat
.blockend_7: ; call
    add rsp, 8
    push mem+65; tempcommand
    push str_43
    pop rbx
    pop rax
    mov qword [rax], rbx
    push rax
    push qword 8
    pop rax
    pop rbx
    add rax, rbx
    push rax
    push str_44
    pop rbx
    pop rax
    mov qword [rax], rbx
    push rax
    push qword 8
    pop rax
    pop rbx
    add rax, rbx
    push rax
    push mem+961; libpath
    pop rbx
    pop rax
    mov qword [rax], rbx
    push rax
    push qword 8
    pop rax
    pop rbx
    add rax, rbx
    push rax
    push mem+193; temppath
    pop rbx
    pop rax
    mov qword [rax], rbx
    push rax
    push qword 8
    pop rax
    pop rbx
    add rax, rbx
    push rax
    push qword 0
    pop rbx
    pop rax
    mov qword [rax], rbx
    push rax
    add rsp, 8
    push mem+65; tempcommand
.blockstart_8: ; call
    mov rax, [ret_stack_rsp]
    add rax, 16
    mov rbx, [loc_stack_rsp]
    mov qword [rax - 8], rbx
    mov qword [ret_stack_rsp], rax
    mov qword [rax], .blockend_8
    jmp proc_os_execcmdecho
.blockend_8: ; call
    add rsp, 8
    mov rax, [ret_stack_rsp]
    mov rax, [rax - 8]
    mov [loc_stack_rsp], rax
    mov rax, [ret_stack_rsp]
    sub rax, 16
    mov qword [ret_stack_rsp], rax
    add rax, 16
    jmp qword [rax]
proc_addlibd:
    push mem+961; libpath
.blockstart_0: ; call
    mov rax, [ret_stack_rsp]
    add rax, 16
    mov rbx, [loc_stack_rsp]
    mov qword [rax - 8], rbx
    mov qword [ret_stack_rsp], rax
    mov qword [rax], .blockend_0
    jmp proc_cstr_clear
.blockend_0: ; call
    push mem+705; srcpath
.blockstart_1: ; call
    mov rax, [ret_stack_rsp]
    add rax, 16
    mov rbx, [loc_stack_rsp]
    mov qword [rax - 8], rbx
    mov qword [ret_stack_rsp], rax
    mov qword [rax], .blockend_1
    jmp proc_cstr_cpy
.blockend_1: ; call
    add rsp, 8
.blockstart_2: ; call
    mov rax, [ret_stack_rsp]
    add rax, 16
    mov rbx, [loc_stack_rsp]
    mov qword [rax - 8], rbx
    mov qword [ret_stack_rsp], rax
    mov qword [rax], .blockend_2
    jmp proc_popstack
.blockend_2: ; call
.blockstart_3: ; call
    mov rax, [ret_stack_rsp]
    add rax, 16
    mov rbx, [loc_stack_rsp]
    mov qword [rax - 8], rbx
    mov qword [ret_stack_rsp], rax
    mov qword [rax], .blockend_3
    jmp proc_cstr_cat
.blockend_3: ; call
    add rsp, 8
    push mem+193; temppath
.blockstart_4: ; call
    mov rax, [ret_stack_rsp]
    add rax, 16
    mov rbx, [loc_stack_rsp]
    mov qword [rax - 8], rbx
    mov qword [ret_stack_rsp], rax
    mov qword [rax], .blockend_4
    jmp proc_cstr_clear
.blockend_4: ; call
    push str_45
.blockstart_5: ; call
    mov rax, [ret_stack_rsp]
    add rax, 16
    mov rbx, [loc_stack_rsp]
    mov qword [rax - 8], rbx
    mov qword [ret_stack_rsp], rax
    mov qword [rax], .blockend_5
    jmp proc_os_env
.blockend_5: ; call
.blockstart_6: ; call
    mov rax, [ret_stack_rsp]
    add rax, 16
    mov rbx, [loc_stack_rsp]
    mov qword [rax - 8], rbx
    mov qword [ret_stack_rsp], rax
    mov qword [rax], .blockend_6
    jmp proc_cstr_cpy
.blockend_6: ; call
    add rsp, 8
    push str_46
.blockstart_7: ; call
    mov rax, [ret_stack_rsp]
    add rax, 16
    mov rbx, [loc_stack_rsp]
    mov qword [rax - 8], rbx
    mov qword [ret_stack_rsp], rax
    mov qword [rax], .blockend_7
    jmp proc_cstr_cat
.blockend_7: ; call
    add rsp, 8
    push mem+65; tempcommand
    push str_47
    pop rbx
    pop rax
    mov qword [rax], rbx
    push rax
    push qword 8
    pop rax
    pop rbx
    add rax, rbx
    push rax
    push str_48
    pop rbx
    pop rax
    mov qword [rax], rbx
    push rax
    push qword 8
    pop rax
    pop rbx
    add rax, rbx
    push rax
    push mem+961; libpath
    pop rbx
    pop rax
    mov qword [rax], rbx
    push rax
    push qword 8
    pop rax
    pop rbx
    add rax, rbx
    push rax
    push mem+193; temppath
    pop rbx
    pop rax
    mov qword [rax], rbx
    push rax
    push qword 8
    pop rax
    pop rbx
    add rax, rbx
    push rax
    push qword 0
    pop rbx
    pop rax
    mov qword [rax], rbx
    push rax
    add rsp, 8
    push mem+65; tempcommand
.blockstart_8: ; call
    mov rax, [ret_stack_rsp]
    add rax, 16
    mov rbx, [loc_stack_rsp]
    mov qword [rax - 8], rbx
    mov qword [ret_stack_rsp], rax
    mov qword [rax], .blockend_8
    jmp proc_os_execcmdecho
.blockend_8: ; call
    add rsp, 8
    mov rax, [ret_stack_rsp]
    mov rax, [rax - 8]
    mov [loc_stack_rsp], rax
    mov rax, [ret_stack_rsp]
    sub rax, 16
    mov qword [ret_stack_rsp], rax
    add rax, 16
    jmp qword [rax]
proc_addlib:
    push mem+961; libpath
.blockstart_0: ; call
    mov rax, [ret_stack_rsp]
    add rax, 16
    mov rbx, [loc_stack_rsp]
    mov qword [rax - 8], rbx
    mov qword [ret_stack_rsp], rax
    mov qword [rax], .blockend_0
    jmp proc_cstr_clear
.blockend_0: ; call
    push mem+705; srcpath
.blockstart_1: ; call
    mov rax, [ret_stack_rsp]
    add rax, 16
    mov rbx, [loc_stack_rsp]
    mov qword [rax - 8], rbx
    mov qword [ret_stack_rsp], rax
    mov qword [rax], .blockend_1
    jmp proc_cstr_cpy
.blockend_1: ; call
    add rsp, 8
.blockstart_2: ; call
    mov rax, [ret_stack_rsp]
    add rax, 16
    mov rbx, [loc_stack_rsp]
    mov qword [rax - 8], rbx
    mov qword [ret_stack_rsp], rax
    mov qword [rax], .blockend_2
    jmp proc_popstack
.blockend_2: ; call
.blockstart_3: ; call
    mov rax, [ret_stack_rsp]
    add rax, 16
    mov rbx, [loc_stack_rsp]
    mov qword [rax - 8], rbx
    mov qword [ret_stack_rsp], rax
    mov qword [rax], .blockend_3
    jmp proc_cstr_cat
.blockend_3: ; call
    add rsp, 8
    push mem+193; temppath
.blockstart_4: ; call
    mov rax, [ret_stack_rsp]
    add rax, 16
    mov rbx, [loc_stack_rsp]
    mov qword [rax - 8], rbx
    mov qword [ret_stack_rsp], rax
    mov qword [rax], .blockend_4
    jmp proc_cstr_clear
.blockend_4: ; call
    push str_49
.blockstart_5: ; call
    mov rax, [ret_stack_rsp]
    add rax, 16
    mov rbx, [loc_stack_rsp]
    mov qword [rax - 8], rbx
    mov qword [ret_stack_rsp], rax
    mov qword [rax], .blockend_5
    jmp proc_os_env
.blockend_5: ; call
.blockstart_6: ; call
    mov rax, [ret_stack_rsp]
    add rax, 16
    mov rbx, [loc_stack_rsp]
    mov qword [rax - 8], rbx
    mov qword [ret_stack_rsp], rax
    mov qword [rax], .blockend_6
    jmp proc_cstr_cpy
.blockend_6: ; call
    add rsp, 8
    push str_50
.blockstart_7: ; call
    mov rax, [ret_stack_rsp]
    add rax, 16
    mov rbx, [loc_stack_rsp]
    mov qword [rax - 8], rbx
    mov qword [ret_stack_rsp], rax
    mov qword [rax], .blockend_7
    jmp proc_cstr_cat
.blockend_7: ; call
    add rsp, 8
    push mem+65; tempcommand
    push str_51
    pop rbx
    pop rax
    mov qword [rax], rbx
    push rax
    push qword 8
    pop rax
    pop rbx
    add rax, rbx
    push rax
    push mem+961; libpath
    pop rbx
    pop rax
    mov qword [rax], rbx
    push rax
    push qword 8
    pop rax
    pop rbx
    add rax, rbx
    push rax
    push mem+193; temppath
    pop rbx
    pop rax
    mov qword [rax], rbx
    push rax
    push qword 8
    pop rax
    pop rbx
    add rax, rbx
    push rax
    push qword 0
    pop rbx
    pop rax
    mov qword [rax], rbx
    push rax
    push qword 8
    pop rax
    pop rbx
    add rax, rbx
    push rax
    add rsp, 8
    push mem+65; tempcommand
.blockstart_8: ; call
    mov rax, [ret_stack_rsp]
    add rax, 16
    mov rbx, [loc_stack_rsp]
    mov qword [rax - 8], rbx
    mov qword [ret_stack_rsp], rax
    mov qword [rax], .blockend_8
    jmp proc_os_execcmdecho
.blockend_8: ; call
    add rsp, 8
    mov rax, [ret_stack_rsp]
    mov rax, [rax - 8]
    mov [loc_stack_rsp], rax
    mov rax, [ret_stack_rsp]
    sub rax, 16
    mov qword [ret_stack_rsp], rax
    add rax, 16
    jmp qword [rax]
proc_parsecmd:
    push mem+1489; cmdbuffer
    pop rax
    xor rbx, rbx
    mov bl, [rax]
    push rbx
    push qword 34
    xor rcx, rcx
    mov rdx, 1
    pop rax
    pop rbx
    cmp rax, rbx
    cmove rcx, rdx
    push rcx
    push mem+1489; cmdbuffer
.blockstart_0: ; call
    mov rax, [ret_stack_rsp]
    add rax, 16
    mov rbx, [loc_stack_rsp]
    mov qword [rax - 8], rbx
    mov qword [ret_stack_rsp], rax
    mov qword [rax], .blockend_0
    jmp proc_cstr_last
.blockend_0: ; call
    push qword 34
    xor rcx, rcx
    mov rdx, 1
    pop rax
    pop rbx
    cmp rax, rbx
    cmove rcx, rdx
    push rcx
    pop rax
    pop rbx
    and rax, rbx
    push rax
    pop rbx
    test rbx, rbx
.blockstart_1: ; if
    jz .blockend_1
    push mem+1489; cmdbuffer
.blockstart_2: ; call
    mov rax, [ret_stack_rsp]
    add rax, 16
    mov rbx, [loc_stack_rsp]
    mov qword [rax - 8], rbx
    mov qword [ret_stack_rsp], rax
    mov qword [rax], .blockend_2
    jmp proc_pushstack
.blockend_2: ; call
    push mem+1489; cmdbuffer
.blockstart_3: ; call
    mov rax, [ret_stack_rsp]
    add rax, 16
    mov rbx, [loc_stack_rsp]
    mov qword [rax - 8], rbx
    mov qword [ret_stack_rsp], rax
    mov qword [rax], .blockend_3
    jmp proc_cstr_clear
.blockend_3: ; call
    add rsp, 8
    mov rax, [ret_stack_rsp]
    mov rax, [rax - 8]
    mov [loc_stack_rsp], rax
    mov rax, [ret_stack_rsp]
    sub rax, 16
    mov qword [ret_stack_rsp], rax
    add rax, 16
    jmp qword [rax]
.blockend_1: ; if
    push mem+1489; cmdbuffer
    pop rax
    push rax
    push rax
    push str_52
.blockstart_4: ; call
    mov rax, [ret_stack_rsp]
    add rax, 16
    mov rbx, [loc_stack_rsp]
    mov qword [rax - 8], rbx
    mov qword [ret_stack_rsp], rax
    mov qword [rax], .blockend_4
    jmp proc_cstr_eq
.blockend_4: ; call
    pop rbx
    test rbx, rbx
.blockstart_5: ; if
    jz .blockend_5
.blockstart_6: ; call
    mov rax, [ret_stack_rsp]
    add rax, 16
    mov rbx, [loc_stack_rsp]
    mov qword [rax - 8], rbx
    mov qword [ret_stack_rsp], rax
    mov qword [rax], .blockend_6
    jmp proc_setsrc
.blockend_6: ; call
    add rsp, 8
    mov rax, [ret_stack_rsp]
    mov rax, [rax - 8]
    mov [loc_stack_rsp], rax
    mov rax, [ret_stack_rsp]
    sub rax, 16
    mov qword [ret_stack_rsp], rax
    add rax, 16
    jmp qword [rax]
.blockend_5: ; if
    pop rax
    push rax
    push rax
    push str_53
.blockstart_7: ; call
    mov rax, [ret_stack_rsp]
    add rax, 16
    mov rbx, [loc_stack_rsp]
    mov qword [rax - 8], rbx
    mov qword [ret_stack_rsp], rax
    mov qword [rax], .blockend_7
    jmp proc_cstr_eq
.blockend_7: ; call
    pop rbx
    test rbx, rbx
.blockstart_8: ; if
    jz .blockend_8
.blockstart_9: ; call
    mov rax, [ret_stack_rsp]
    add rax, 16
    mov rbx, [loc_stack_rsp]
    mov qword [rax - 8], rbx
    mov qword [ret_stack_rsp], rax
    mov qword [rax], .blockend_9
    jmp proc_addreq
.blockend_9: ; call
    add rsp, 8
    mov rax, [ret_stack_rsp]
    mov rax, [rax - 8]
    mov [loc_stack_rsp], rax
    mov rax, [ret_stack_rsp]
    sub rax, 16
    mov qword [ret_stack_rsp], rax
    add rax, 16
    jmp qword [rax]
.blockend_8: ; if
    pop rax
    push rax
    push rax
    push str_54
.blockstart_10: ; call
    mov rax, [ret_stack_rsp]
    add rax, 16
    mov rbx, [loc_stack_rsp]
    mov qword [rax - 8], rbx
    mov qword [ret_stack_rsp], rax
    mov qword [rax], .blockend_10
    jmp proc_cstr_eq
.blockend_10: ; call
    pop rbx
    test rbx, rbx
.blockstart_11: ; if
    jz .blockend_11
.blockstart_12: ; call
    mov rax, [ret_stack_rsp]
    add rax, 16
    mov rbx, [loc_stack_rsp]
    mov qword [rax - 8], rbx
    mov qword [ret_stack_rsp], rax
    mov qword [rax], .blockend_12
    jmp proc_addbin
.blockend_12: ; call
    add rsp, 8
    mov rax, [ret_stack_rsp]
    mov rax, [rax - 8]
    mov [loc_stack_rsp], rax
    mov rax, [ret_stack_rsp]
    sub rax, 16
    mov qword [ret_stack_rsp], rax
    add rax, 16
    jmp qword [rax]
.blockend_11: ; if
    pop rax
    push rax
    push rax
    push str_55
.blockstart_13: ; call
    mov rax, [ret_stack_rsp]
    add rax, 16
    mov rbx, [loc_stack_rsp]
    mov qword [rax - 8], rbx
    mov qword [ret_stack_rsp], rax
    mov qword [rax], .blockend_13
    jmp proc_cstr_eq
.blockend_13: ; call
    pop rbx
    test rbx, rbx
.blockstart_14: ; if
    jz .blockend_14
.blockstart_15: ; call
    mov rax, [ret_stack_rsp]
    add rax, 16
    mov rbx, [loc_stack_rsp]
    mov qword [rax - 8], rbx
    mov qword [ret_stack_rsp], rax
    mov qword [rax], .blockend_15
    jmp proc_addlib
.blockend_15: ; call
    add rsp, 8
    mov rax, [ret_stack_rsp]
    mov rax, [rax - 8]
    mov [loc_stack_rsp], rax
    mov rax, [ret_stack_rsp]
    sub rax, 16
    mov qword [ret_stack_rsp], rax
    add rax, 16
    jmp qword [rax]
.blockend_14: ; if
    pop rax
    push rax
    push rax
    push str_56
.blockstart_16: ; call
    mov rax, [ret_stack_rsp]
    add rax, 16
    mov rbx, [loc_stack_rsp]
    mov qword [rax - 8], rbx
    mov qword [ret_stack_rsp], rax
    mov qword [rax], .blockend_16
    jmp proc_cstr_eq
.blockend_16: ; call
    pop rbx
    test rbx, rbx
.blockstart_17: ; if
    jz .blockend_17
.blockstart_18: ; call
    mov rax, [ret_stack_rsp]
    add rax, 16
    mov rbx, [loc_stack_rsp]
    mov qword [rax - 8], rbx
    mov qword [ret_stack_rsp], rax
    mov qword [rax], .blockend_18
    jmp proc_addlibd
.blockend_18: ; call
    add rsp, 8
    mov rax, [ret_stack_rsp]
    mov rax, [rax - 8]
    mov [loc_stack_rsp], rax
    mov rax, [ret_stack_rsp]
    sub rax, 16
    mov qword [ret_stack_rsp], rax
    add rax, 16
    jmp qword [rax]
.blockend_17: ; if
    pop rax
    push rax
    push rax
    pop rax
    xor rbx, rbx
    mov bl, [rax]
    push rbx
    push qword 0
    xor rcx, rcx
    mov rdx, 1
    pop rax
    pop rbx
    cmp rax, rbx
    cmove rcx, rdx
    push rcx
    pop rbx
    test rbx, rbx
.blockstart_19: ; if
    jz .blockend_19
    add rsp, 8
    mov rax, [ret_stack_rsp]
    mov rax, [rax - 8]
    mov [loc_stack_rsp], rax
    mov rax, [ret_stack_rsp]
    sub rax, 16
    mov qword [ret_stack_rsp], rax
    add rax, 16
    jmp qword [rax]
.blockend_19: ; if
    add rsp, 8
    push str_57
.blockstart_20: ; call
    mov rax, [ret_stack_rsp]
    add rax, 16
    mov rbx, [loc_stack_rsp]
    mov qword [rax - 8], rbx
    mov qword [ret_stack_rsp], rax
    mov qword [rax], .blockend_20
    jmp proc_cstr_print
.blockend_20: ; call
    push mem+1489; cmdbuffer
.blockstart_21: ; call
    mov rax, [ret_stack_rsp]
    add rax, 16
    mov rbx, [loc_stack_rsp]
    mov qword [rax - 8], rbx
    mov qword [ret_stack_rsp], rax
    mov qword [rax], .blockend_21
    jmp proc_cstr_print
.blockend_21: ; call
    push str_58
.blockstart_22: ; call
    mov rax, [ret_stack_rsp]
    add rax, 16
    mov rbx, [loc_stack_rsp]
    mov qword [rax - 8], rbx
    mov qword [ret_stack_rsp], rax
    mov qword [rax], .blockend_22
    jmp proc_cstr_println
.blockend_22: ; call
    push qword 255
    mov rax, 60
    pop rdi
    syscall
proc_checkcmd:
    push mem+1489; cmdbuffer
    pop rax
    xor rbx, rbx
    mov bl, [rax]
    push rbx
    push qword 34
    xor rcx, rcx
    mov rdx, 1
    pop rax
    pop rbx
    cmp rax, rbx
    cmove rcx, rdx
    push rcx
    push mem+1489; cmdbuffer
.blockstart_0: ; call
    mov rax, [ret_stack_rsp]
    add rax, 16
    mov rbx, [loc_stack_rsp]
    mov qword [rax - 8], rbx
    mov qword [ret_stack_rsp], rax
    mov qword [rax], .blockend_0
    jmp proc_cstr_last
.blockend_0: ; call
    push qword 34
    xor rcx, rcx
    mov rdx, 1
    pop rax
    pop rbx
    cmp rax, rbx
    cmovne rcx, rdx
    push rcx
    pop rax
    pop rbx
    and rax, rbx
    push rax
    push mem+1489; cmdbuffer
    push str_59
.blockstart_1: ; call
    mov rax, [ret_stack_rsp]
    add rax, 16
    mov rbx, [loc_stack_rsp]
    mov qword [rax - 8], rbx
    mov qword [ret_stack_rsp], rax
    mov qword [rax], .blockend_1
    jmp proc_cstr_eq
.blockend_1: ; call
    pop rax
    pop rbx
    or rax, rbx
    push rax
    pop rax
    xor rax, 1
    push rax
    mov rax, [ret_stack_rsp]
    mov rax, [rax - 8]
    mov [loc_stack_rsp], rax
    mov rax, [ret_stack_rsp]
    sub rax, 16
    mov qword [ret_stack_rsp], rax
    add rax, 16
    jmp qword [rax]
proc_checkbuffer:
.blockstart_0: ; call
    mov rax, [ret_stack_rsp]
    add rax, 16
    mov rbx, [loc_stack_rsp]
    mov qword [rax - 8], rbx
    mov qword [ret_stack_rsp], rax
    mov qword [rax], .blockend_0
    jmp proc_checkcmd
.blockend_0: ; call
    pop rbx
    test rbx, rbx
.blockstart_1: ; if
    jz .blockend_1
.blockstart_2: ; call
    mov rax, [ret_stack_rsp]
    add rax, 16
    mov rbx, [loc_stack_rsp]
    mov qword [rax - 8], rbx
    mov qword [ret_stack_rsp], rax
    mov qword [rax], .blockend_2
    jmp proc_parsecmd
.blockend_2: ; call
    add rsp, 8
    add rsp, 8
    push mem+1489; cmdbuffer
    push qword 0
    mov rax, [ret_stack_rsp]
    mov rax, [rax - 8]
    mov [loc_stack_rsp], rax
    mov rax, [ret_stack_rsp]
    sub rax, 16
    mov qword [ret_stack_rsp], rax
    add rax, 16
    jmp qword [rax]
.blockend_1: ; if
    add rsp, 8
    push qword 32
    mov rax, [ret_stack_rsp]
    mov rax, [rax - 8]
    mov [loc_stack_rsp], rax
    mov rax, [ret_stack_rsp]
    sub rax, 16
    mov qword [ret_stack_rsp], rax
    add rax, 16
    jmp qword [rax]
proc_parsefile:
    push mem+2514; stack
    push qword 1024
.blockstart_0: ; call
    mov rax, [ret_stack_rsp]
    add rax, 16
    mov rbx, [loc_stack_rsp]
    mov qword [rax - 8], rbx
    mov qword [ret_stack_rsp], rax
    mov qword [rax], .blockend_0
    jmp proc_heap_zalloc
.blockend_0: ; call
    pop rbx
    pop rax
    mov qword [rax], rbx
    push rax
    add rsp, 8
    push mem+1473; inputfd
    pop rax
    mov rbx, [rax]
    push rbx
    push qword 0
    xor rcx, rcx
    mov rdx, 1
    pop rax
    pop rbx
    cmp rax, rbx
    cmove rcx, rdx
    push rcx
    pop rbx
    test rbx, rbx
.blockstart_1: ; if
    jz .blockend_1
    mov rax, [ret_stack_rsp]
    mov rax, [rax - 8]
    mov [loc_stack_rsp], rax
    mov rax, [ret_stack_rsp]
    sub rax, 16
    mov qword [ret_stack_rsp], rax
    add rax, 16
    jmp qword [rax]
.blockend_1: ; if
    push qword 1024
    push qword 1024
.blockstart_2: ; call
    mov rax, [ret_stack_rsp]
    add rax, 16
    mov rbx, [loc_stack_rsp]
    mov qword [rax - 8], rbx
    mov qword [ret_stack_rsp], rax
    mov qword [rax], .blockend_2
    jmp proc_heap_zalloc
.blockend_2: ; call
    push mem+1481; readbuffer
    pop rax
    pop rbx
    push rax
    push rbx
    pop rbx
    pop rax
    mov qword [rax], rbx
    push rax
    pop rax
    mov rbx, [rax]
    push rbx
    push mem+1473; inputfd
    pop rax
    mov rbx, [rax]
    push rbx
.blockstart_3: ; call
    mov rax, [ret_stack_rsp]
    add rax, 16
    mov rbx, [loc_stack_rsp]
    mov qword [rax - 8], rbx
    mov qword [ret_stack_rsp], rax
    mov qword [rax], .blockend_3
    jmp proc_os_readf
.blockend_3: ; call
    add rsp, 8
    push mem+1473; inputfd
    pop rax
    mov rbx, [rax]
    push rbx
    push qword 74
    pop rax
    pop rdi
    syscall
    push rax
    add rsp, 8
.blockstart_4: ; do
    push mem+1481; readbuffer
    pop rax
    mov rbx, [rax]
    push rbx
    pop rax
    push rax
    push rax
    push mem+1489; cmdbuffer
.blockstart_5: ; do
    pop rax
    pop rbx
    push rbx
    push rax
    push rbx
    pop rax
    xor rbx, rbx
    mov bl, [rax]
    push rbx
    pop rax
    push rax
    push rax
    push qword 9
    xor rcx, rcx
    mov rdx, 1
    pop rax
    pop rbx
    cmp rax, rbx
    cmove rcx, rdx
    push rcx
    pop rax
    pop rbx
    push rbx
    push rax
    push rbx
    push qword 10
    xor rcx, rcx
    mov rdx, 1
    pop rax
    pop rbx
    cmp rax, rbx
    cmove rcx, rdx
    push rcx
    pop rax
    pop rbx
    or rax, rbx
    push rax
    pop rax
    pop rbx
    push rbx
    push rax
    push rbx
    push qword 13
    xor rcx, rcx
    mov rdx, 1
    pop rax
    pop rbx
    cmp rax, rbx
    cmove rcx, rdx
    push rcx
    pop rax
    pop rbx
    or rax, rbx
    push rax
    pop rax
    pop rbx
    push rbx
    push rax
    push rbx
    push qword 32
    xor rcx, rcx
    mov rdx, 1
    pop rax
    pop rbx
    cmp rax, rbx
    cmove rcx, rdx
    push rcx
    pop rax
    pop rbx
    or rax, rbx
    push rax
    pop rbx
    test rbx, rbx
.blockstart_6: ; if
    jz .blockend_6
.blockstart_7: ; call
    mov rax, [ret_stack_rsp]
    add rax, 16
    mov rbx, [loc_stack_rsp]
    mov qword [rax - 8], rbx
    mov qword [ret_stack_rsp], rax
    mov qword [rax], .blockend_7
    jmp proc_checkbuffer
.blockend_7: ; call
.blockend_6: ; if
    pop rax
    pop rbx
    push rbx
    push rax
    push rbx
    pop rax
    pop rbx
    push rax
    push rbx
    pop rbx
    pop rax
    mov byte [rax], bl
    push rax
    add rsp, 8
    pop rax
    pop rbx
    push rax
    push rbx
    push qword 1
    pop rax
    pop rbx
    add rax, rbx
    push rax
    pop rax
    pop rbx
    push rax
    push rbx
    pop rax
    push rax
    push rax
    pop rax
    xor rbx, rbx
    mov bl, [rax]
    push rbx
    push qword 0
    xor rcx, rcx
    mov rdx, 1
    pop rax
    pop rbx
    cmp rax, rbx
    cmovne rcx, rdx
    push rcx
    pop rbx
    test rbx, rbx
.blockstart_8: ; if
    jz .blockend_8
    push qword 1
    pop rax
    pop rbx
    add rax, rbx
    push rax
.blockend_8: ; if
    pop rax
    pop rbx
    push rbx
    push rax
    push rbx
    pop rax
    xor rbx, rbx
    mov bl, [rax]
    push rbx
    push qword 0
    xor rcx, rcx
    mov rdx, 1
    pop rax
    pop rbx
    cmp rax, rbx
    cmovne rcx, rdx
    push rcx
    pop rbx
    test rbx, rbx
    jnz .blockstart_5
.blockend_5: ; do
    add rsp, 8
    add rsp, 8
    push mem+1481; readbuffer
    pop rax
    pop rbx
    push rax
    push rbx
    pop rbx
    pop rax
    mov qword [rax], rbx
    push rax
    add rsp, 8
    push mem+1481; readbuffer
    pop rax
    mov rbx, [rax]
    push rbx
.blockstart_9: ; call
    mov rax, [ret_stack_rsp]
    add rax, 16
    mov rbx, [loc_stack_rsp]
    mov qword [rax - 8], rbx
    mov qword [ret_stack_rsp], rax
    mov qword [rax], .blockend_9
    jmp proc_cstr_clear
.blockend_9: ; call
    push mem+1489; cmdbuffer
.blockstart_10: ; call
    mov rax, [ret_stack_rsp]
    add rax, 16
    mov rbx, [loc_stack_rsp]
    mov qword [rax - 8], rbx
    mov qword [ret_stack_rsp], rax
    mov qword [rax], .blockend_10
    jmp proc_cstr_cpy
.blockend_10: ; call
    add rsp, 8
    add rsp, 8
    push qword 1024
    push mem+1489; cmdbuffer
.blockstart_11: ; call
    mov rax, [ret_stack_rsp]
    add rax, 16
    mov rbx, [loc_stack_rsp]
    mov qword [rax - 8], rbx
    mov qword [ret_stack_rsp], rax
    mov qword [rax], .blockend_11
    jmp proc_cstr_len
.blockend_11: ; call
    pop rbx
    pop rax
    sub rax, rbx
    push rax
    push mem+1481; readbuffer
    pop rax
    mov rbx, [rax]
    push rbx
    push mem+1489; cmdbuffer
.blockstart_12: ; call
    mov rax, [ret_stack_rsp]
    add rax, 16
    mov rbx, [loc_stack_rsp]
    mov qword [rax - 8], rbx
    mov qword [ret_stack_rsp], rax
    mov qword [rax], .blockend_12
    jmp proc_cstr_len
.blockend_12: ; call
    pop rax
    pop rbx
    add rax, rbx
    push rax
    push mem+1473; inputfd
    pop rax
    mov rbx, [rax]
    push rbx
.blockstart_13: ; call
    mov rax, [ret_stack_rsp]
    add rax, 16
    mov rbx, [loc_stack_rsp]
    mov qword [rax - 8], rbx
    mov qword [ret_stack_rsp], rax
    mov qword [rax], .blockend_13
    jmp proc_os_readf
.blockend_13: ; call
    pop rax
    push rax
    push rax
    push mem+1481; readbuffer
    pop rax
    mov rbx, [rax]
    push rbx
    pop rax
    pop rbx
    add rax, rbx
    push rax
    push mem+1489; cmdbuffer
.blockstart_14: ; call
    mov rax, [ret_stack_rsp]
    add rax, 16
    mov rbx, [loc_stack_rsp]
    mov qword [rax - 8], rbx
    mov qword [ret_stack_rsp], rax
    mov qword [rax], .blockend_14
    jmp proc_cstr_len
.blockend_14: ; call
    pop rax
    pop rbx
    add rax, rbx
    push rax
    push qword 1
    pop rax
    pop rbx
    add rax, rbx
    push rax
    pop rax
    push rax
    push rax
    pop rax
    xor rbx, rbx
    mov bl, [rax]
    push rbx
    push qword 0
    xor rcx, rcx
    mov rdx, 1
    pop rax
    pop rbx
    cmp rax, rbx
    cmovne rcx, rdx
    push rcx
    pop rbx
    test rbx, rbx
.blockstart_15: ; if
    jz .blockend_15
.blockstart_16: ; call
    mov rax, [ret_stack_rsp]
    add rax, 16
    mov rbx, [loc_stack_rsp]
    mov qword [rax - 8], rbx
    mov qword [ret_stack_rsp], rax
    mov qword [rax], .blockend_16
    jmp proc_cstr_clear
.blockend_16: ; call
.blockend_15: ; if
    add rsp, 8
    push mem+1489; cmdbuffer
    push qword 1024
.blockstart_17: ; call
    mov rax, [ret_stack_rsp]
    add rax, 16
    mov rbx, [loc_stack_rsp]
    mov qword [rax - 8], rbx
    mov qword [ret_stack_rsp], rax
    mov qword [rax], .blockend_17
    jmp proc_mem_zero
.blockend_17: ; call
    pop rbx
    test rbx, rbx
    jnz .blockstart_4
.blockend_4: ; do
    push mem+1481; readbuffer
    pop rax
    mov rbx, [rax]
    push rbx
.blockstart_18: ; call
    mov rax, [ret_stack_rsp]
    add rax, 16
    mov rbx, [loc_stack_rsp]
    mov qword [rax - 8], rbx
    mov qword [ret_stack_rsp], rax
    mov qword [rax], .blockend_18
    jmp proc_heap_free
.blockend_18: ; call
    mov rax, [ret_stack_rsp]
    mov rax, [rax - 8]
    mov [loc_stack_rsp], rax
    mov rax, [ret_stack_rsp]
    sub rax, 16
    mov qword [ret_stack_rsp], rax
    add rax, 16
    jmp qword [rax]
proc_init:
    push mem+449; cachepath
.blockstart_0: ; call
    mov rax, [ret_stack_rsp]
    add rax, 16
    mov rbx, [loc_stack_rsp]
    mov qword [rax - 8], rbx
    mov qword [ret_stack_rsp], rax
    mov qword [rax], .blockend_0
    jmp proc_cstr_clear
.blockend_0: ; call
    push str_60
.blockstart_1: ; call
    mov rax, [ret_stack_rsp]
    add rax, 16
    mov rbx, [loc_stack_rsp]
    mov qword [rax - 8], rbx
    mov qword [ret_stack_rsp], rax
    mov qword [rax], .blockend_1
    jmp proc_os_env
.blockend_1: ; call
.blockstart_2: ; call
    mov rax, [ret_stack_rsp]
    add rax, 16
    mov rbx, [loc_stack_rsp]
    mov qword [rax - 8], rbx
    mov qword [ret_stack_rsp], rax
    mov qword [rax], .blockend_2
    jmp proc_cstr_cpy
.blockend_2: ; call
    add rsp, 8
    push str_61
.blockstart_3: ; call
    mov rax, [ret_stack_rsp]
    add rax, 16
    mov rbx, [loc_stack_rsp]
    mov qword [rax - 8], rbx
    mov qword [ret_stack_rsp], rax
    mov qword [rax], .blockend_3
    jmp proc_cstr_cat
.blockend_3: ; call
    add rsp, 8
    push mem+961; libpath
.blockstart_4: ; call
    mov rax, [ret_stack_rsp]
    add rax, 16
    mov rbx, [loc_stack_rsp]
    mov qword [rax - 8], rbx
    mov qword [ret_stack_rsp], rax
    mov qword [rax], .blockend_4
    jmp proc_cstr_clear
.blockend_4: ; call
    push str_62
.blockstart_5: ; call
    mov rax, [ret_stack_rsp]
    add rax, 16
    mov rbx, [loc_stack_rsp]
    mov qword [rax - 8], rbx
    mov qword [ret_stack_rsp], rax
    mov qword [rax], .blockend_5
    jmp proc_os_env
.blockend_5: ; call
.blockstart_6: ; call
    mov rax, [ret_stack_rsp]
    add rax, 16
    mov rbx, [loc_stack_rsp]
    mov qword [rax - 8], rbx
    mov qword [ret_stack_rsp], rax
    mov qword [rax], .blockend_6
    jmp proc_cstr_cpy
.blockend_6: ; call
    add rsp, 8
    push str_63
.blockstart_7: ; call
    mov rax, [ret_stack_rsp]
    add rax, 16
    mov rbx, [loc_stack_rsp]
    mov qword [rax - 8], rbx
    mov qword [ret_stack_rsp], rax
    mov qword [rax], .blockend_7
    jmp proc_cstr_cat
.blockend_7: ; call
    add rsp, 8
    push mem+1217; binpath
.blockstart_8: ; call
    mov rax, [ret_stack_rsp]
    add rax, 16
    mov rbx, [loc_stack_rsp]
    mov qword [rax - 8], rbx
    mov qword [ret_stack_rsp], rax
    mov qword [rax], .blockend_8
    jmp proc_cstr_clear
.blockend_8: ; call
    push str_64
.blockstart_9: ; call
    mov rax, [ret_stack_rsp]
    add rax, 16
    mov rbx, [loc_stack_rsp]
    mov qword [rax - 8], rbx
    mov qword [ret_stack_rsp], rax
    mov qword [rax], .blockend_9
    jmp proc_os_env
.blockend_9: ; call
.blockstart_10: ; call
    mov rax, [ret_stack_rsp]
    add rax, 16
    mov rbx, [loc_stack_rsp]
    mov qword [rax - 8], rbx
    mov qword [ret_stack_rsp], rax
    mov qword [rax], .blockend_10
    jmp proc_cstr_cpy
.blockend_10: ; call
    add rsp, 8
    push str_65
.blockstart_11: ; call
    mov rax, [ret_stack_rsp]
    add rax, 16
    mov rbx, [loc_stack_rsp]
    mov qword [rax - 8], rbx
    mov qword [ret_stack_rsp], rax
    mov qword [rax], .blockend_11
    jmp proc_cstr_cat
.blockend_11: ; call
    add rsp, 8
    push mem+65; tempcommand
    push str_66
    pop rbx
    pop rax
    mov qword [rax], rbx
    push rax
    push qword 8
    pop rax
    pop rbx
    add rax, rbx
    push rax
    push str_67
    pop rbx
    pop rax
    mov qword [rax], rbx
    push rax
    push qword 8
    pop rax
    pop rbx
    add rax, rbx
    push rax
    push mem+449; cachepath
    pop rbx
    pop rax
    mov qword [rax], rbx
    push rax
    push qword 8
    pop rax
    pop rbx
    add rax, rbx
    push rax
    push mem+1217; binpath
    pop rbx
    pop rax
    mov qword [rax], rbx
    push rax
    push qword 8
    pop rax
    pop rbx
    add rax, rbx
    push rax
    push mem+961; libpath
    pop rbx
    pop rax
    mov qword [rax], rbx
    push rax
    push qword 8
    pop rax
    pop rbx
    add rax, rbx
    push rax
    push qword 0
    pop rbx
    pop rax
    mov qword [rax], rbx
    push rax
    add rsp, 8
    push mem+65; tempcommand
.blockstart_12: ; call
    mov rax, [ret_stack_rsp]
    add rax, 16
    mov rbx, [loc_stack_rsp]
    mov qword [rax - 8], rbx
    mov qword [ret_stack_rsp], rax
    mov qword [rax], .blockend_12
    jmp proc_os_execcmdecho
.blockend_12: ; call
    add rsp, 8
    push mem+449; cachepath
.blockstart_13: ; call
    mov rax, [ret_stack_rsp]
    add rax, 16
    mov rbx, [loc_stack_rsp]
    mov qword [rax - 8], rbx
    mov qword [ret_stack_rsp], rax
    mov qword [rax], .blockend_13
    jmp proc_cstr_clear
.blockend_13: ; call
    push str_68
.blockstart_14: ; call
    mov rax, [ret_stack_rsp]
    add rax, 16
    mov rbx, [loc_stack_rsp]
    mov qword [rax - 8], rbx
    mov qword [ret_stack_rsp], rax
    mov qword [rax], .blockend_14
    jmp proc_os_env
.blockend_14: ; call
.blockstart_15: ; call
    mov rax, [ret_stack_rsp]
    add rax, 16
    mov rbx, [loc_stack_rsp]
    mov qword [rax - 8], rbx
    mov qword [ret_stack_rsp], rax
    mov qword [rax], .blockend_15
    jmp proc_cstr_cpy
.blockend_15: ; call
    add rsp, 8
    push str_69
.blockstart_16: ; call
    mov rax, [ret_stack_rsp]
    add rax, 16
    mov rbx, [loc_stack_rsp]
    mov qword [rax - 8], rbx
    mov qword [ret_stack_rsp], rax
    mov qword [rax], .blockend_16
    jmp proc_cstr_cat
.blockend_16: ; call
    add rsp, 8
    push mem+193; temppath
.blockstart_17: ; call
    mov rax, [ret_stack_rsp]
    add rax, 16
    mov rbx, [loc_stack_rsp]
    mov qword [rax - 8], rbx
    mov qword [ret_stack_rsp], rax
    mov qword [rax], .blockend_17
    jmp proc_cstr_clear
.blockend_17: ; call
    push mem+449; cachepath
.blockstart_18: ; call
    mov rax, [ret_stack_rsp]
    add rax, 16
    mov rbx, [loc_stack_rsp]
    mov qword [rax - 8], rbx
    mov qword [ret_stack_rsp], rax
    mov qword [rax], .blockend_18
    jmp proc_cstr_cpy
.blockend_18: ; call
    add rsp, 8
    push str_70
.blockstart_19: ; call
    mov rax, [ret_stack_rsp]
    add rax, 16
    mov rbx, [loc_stack_rsp]
    mov qword [rax - 8], rbx
    mov qword [ret_stack_rsp], rax
    mov qword [rax], .blockend_19
    jmp proc_cstr_cat
.blockend_19: ; call
    add rsp, 8
    push mem+65; tempcommand
    push str_71
    pop rbx
    pop rax
    mov qword [rax], rbx
    push rax
    push qword 8
    pop rax
    pop rbx
    add rax, rbx
    push rax
    push str_72
    pop rbx
    pop rax
    mov qword [rax], rbx
    push rax
    push qword 8
    pop rax
    pop rbx
    add rax, rbx
    push rax
    push str_73
    pop rbx
    pop rax
    mov qword [rax], rbx
    push rax
    push qword 8
    pop rax
    pop rbx
    add rax, rbx
    push rax
    push mem+193; temppath
    pop rbx
    pop rax
    mov qword [rax], rbx
    push rax
    push qword 8
    pop rax
    pop rbx
    add rax, rbx
    push rax
    push qword 0
    pop rbx
    pop rax
    mov qword [rax], rbx
    push rax
    add rsp, 8
    push mem+65; tempcommand
.blockstart_20: ; call
    mov rax, [ret_stack_rsp]
    add rax, 16
    mov rbx, [loc_stack_rsp]
    mov qword [rax - 8], rbx
    mov qword [ret_stack_rsp], rax
    mov qword [rax], .blockend_20
    jmp proc_os_execcmdecho
.blockend_20: ; call
    add rsp, 8
    push mem+65; tempcommand
    push qword 0
.blockstart_21: ; call
    mov rax, [ret_stack_rsp]
    add rax, 16
    mov rbx, [loc_stack_rsp]
    mov qword [rax - 8], rbx
    mov qword [ret_stack_rsp], rax
    mov qword [rax], .blockend_21
    jmp proc_os_args
.blockend_21: ; call
    pop rbx
    pop rax
    mov qword [rax], rbx
    push rax
    push qword 8
    pop rax
    pop rbx
    add rax, rbx
    push rax
    push str_74
    pop rbx
    pop rax
    mov qword [rax], rbx
    push rax
    push qword 8
    pop rax
    pop rbx
    add rax, rbx
    push rax
    push str_75
    pop rbx
    pop rax
    mov qword [rax], rbx
    push rax
    push qword 8
    pop rax
    pop rbx
    add rax, rbx
    push rax
    push qword 0
    pop rbx
    pop rax
    mov qword [rax], rbx
    push rax
    add rsp, 8
    push mem+65; tempcommand
.blockstart_22: ; call
    mov rax, [ret_stack_rsp]
    add rax, 16
    mov rbx, [loc_stack_rsp]
    mov qword [rax - 8], rbx
    mov qword [ret_stack_rsp], rax
    mov qword [rax], .blockend_22
    jmp proc_os_execcmdecholoud
.blockend_22: ; call
    add rsp, 8
    push mem+65; tempcommand
    push qword 0
.blockstart_23: ; call
    mov rax, [ret_stack_rsp]
    add rax, 16
    mov rbx, [loc_stack_rsp]
    mov qword [rax - 8], rbx
    mov qword [ret_stack_rsp], rax
    mov qword [rax], .blockend_23
    jmp proc_os_args
.blockend_23: ; call
    pop rbx
    pop rax
    mov qword [rax], rbx
    push rax
    push qword 8
    pop rax
    pop rbx
    add rax, rbx
    push rax
    push str_76
    pop rbx
    pop rax
    mov qword [rax], rbx
    push rax
    push qword 8
    pop rax
    pop rbx
    add rax, rbx
    push rax
    push str_77
    pop rbx
    pop rax
    mov qword [rax], rbx
    push rax
    push qword 8
    pop rax
    pop rbx
    add rax, rbx
    push rax
    push qword 0
    pop rbx
    pop rax
    mov qword [rax], rbx
    push rax
    add rsp, 8
    push mem+65; tempcommand
.blockstart_24: ; call
    mov rax, [ret_stack_rsp]
    add rax, 16
    mov rbx, [loc_stack_rsp]
    mov qword [rax - 8], rbx
    mov qword [ret_stack_rsp], rax
    mov qword [rax], .blockend_24
    jmp proc_os_execcmdecholoud
.blockend_24: ; call
    add rsp, 8
    push mem+1217; binpath
.blockstart_25: ; call
    mov rax, [ret_stack_rsp]
    add rax, 16
    mov rbx, [loc_stack_rsp]
    mov qword [rax - 8], rbx
    mov qword [ret_stack_rsp], rax
    mov qword [rax], .blockend_25
    jmp proc_cstr_clear
.blockend_25: ; call
    push str_78
.blockstart_26: ; call
    mov rax, [ret_stack_rsp]
    add rax, 16
    mov rbx, [loc_stack_rsp]
    mov qword [rax - 8], rbx
    mov qword [ret_stack_rsp], rax
    mov qword [rax], .blockend_26
    jmp proc_os_env
.blockend_26: ; call
.blockstart_27: ; call
    mov rax, [ret_stack_rsp]
    add rax, 16
    mov rbx, [loc_stack_rsp]
    mov qword [rax - 8], rbx
    mov qword [ret_stack_rsp], rax
    mov qword [rax], .blockend_27
    jmp proc_cstr_cpy
.blockend_27: ; call
    add rsp, 8
    push str_79
.blockstart_28: ; call
    mov rax, [ret_stack_rsp]
    add rax, 16
    mov rbx, [loc_stack_rsp]
    mov qword [rax - 8], rbx
    mov qword [ret_stack_rsp], rax
    mov qword [rax], .blockend_28
    jmp proc_cstr_cat
.blockend_28: ; call
    add rsp, 8
    push mem+705; srcpath
.blockstart_29: ; call
    mov rax, [ret_stack_rsp]
    add rax, 16
    mov rbx, [loc_stack_rsp]
    mov qword [rax - 8], rbx
    mov qword [ret_stack_rsp], rax
    mov qword [rax], .blockend_29
    jmp proc_cstr_clear
.blockend_29: ; call
    push str_80
.blockstart_30: ; call
    mov rax, [ret_stack_rsp]
    add rax, 16
    mov rbx, [loc_stack_rsp]
    mov qword [rax - 8], rbx
    mov qword [ret_stack_rsp], rax
    mov qword [rax], .blockend_30
    jmp proc_os_env
.blockend_30: ; call
.blockstart_31: ; call
    mov rax, [ret_stack_rsp]
    add rax, 16
    mov rbx, [loc_stack_rsp]
    mov qword [rax - 8], rbx
    mov qword [ret_stack_rsp], rax
    mov qword [rax], .blockend_31
    jmp proc_cstr_cpy
.blockend_31: ; call
    add rsp, 8
    push str_81
.blockstart_32: ; call
    mov rax, [ret_stack_rsp]
    add rax, 16
    mov rbx, [loc_stack_rsp]
    mov qword [rax - 8], rbx
    mov qword [ret_stack_rsp], rax
    mov qword [rax], .blockend_32
    jmp proc_cstr_cat
.blockend_32: ; call
    add rsp, 8
    push mem+65; tempcommand
    push str_82
    pop rbx
    pop rax
    mov qword [rax], rbx
    push rax
    push qword 8
    pop rax
    pop rbx
    add rax, rbx
    push rax
    push mem+705; srcpath
    pop rbx
    pop rax
    mov qword [rax], rbx
    push rax
    push qword 8
    pop rax
    pop rbx
    add rax, rbx
    push rax
    push mem+1217; binpath
    pop rbx
    pop rax
    mov qword [rax], rbx
    push rax
    push qword 8
    pop rax
    pop rbx
    add rax, rbx
    push rax
    push qword 0
    pop rbx
    pop rax
    mov qword [rax], rbx
    push rax
    add rsp, 8
    push mem+65; tempcommand
.blockstart_33: ; call
    mov rax, [ret_stack_rsp]
    add rax, 16
    mov rbx, [loc_stack_rsp]
    mov qword [rax - 8], rbx
    mov qword [ret_stack_rsp], rax
    mov qword [rax], .blockend_33
    jmp proc_os_execcmdecholoud
.blockend_33: ; call
    add rsp, 8
    push mem+1217; binpath
.blockstart_34: ; call
    mov rax, [ret_stack_rsp]
    add rax, 16
    mov rbx, [loc_stack_rsp]
    mov qword [rax - 8], rbx
    mov qword [ret_stack_rsp], rax
    mov qword [rax], .blockend_34
    jmp proc_cstr_clear
.blockend_34: ; call
    push str_83
.blockstart_35: ; call
    mov rax, [ret_stack_rsp]
    add rax, 16
    mov rbx, [loc_stack_rsp]
    mov qword [rax - 8], rbx
    mov qword [ret_stack_rsp], rax
    mov qword [rax], .blockend_35
    jmp proc_os_env
.blockend_35: ; call
.blockstart_36: ; call
    mov rax, [ret_stack_rsp]
    add rax, 16
    mov rbx, [loc_stack_rsp]
    mov qword [rax - 8], rbx
    mov qword [ret_stack_rsp], rax
    mov qword [rax], .blockend_36
    jmp proc_cstr_cpy
.blockend_36: ; call
    add rsp, 8
    push str_84
.blockstart_37: ; call
    mov rax, [ret_stack_rsp]
    add rax, 16
    mov rbx, [loc_stack_rsp]
    mov qword [rax - 8], rbx
    mov qword [ret_stack_rsp], rax
    mov qword [rax], .blockend_37
    jmp proc_cstr_cat
.blockend_37: ; call
    add rsp, 8
    push mem+705; srcpath
.blockstart_38: ; call
    mov rax, [ret_stack_rsp]
    add rax, 16
    mov rbx, [loc_stack_rsp]
    mov qword [rax - 8], rbx
    mov qword [ret_stack_rsp], rax
    mov qword [rax], .blockend_38
    jmp proc_cstr_clear
.blockend_38: ; call
    push str_85
.blockstart_39: ; call
    mov rax, [ret_stack_rsp]
    add rax, 16
    mov rbx, [loc_stack_rsp]
    mov qword [rax - 8], rbx
    mov qword [ret_stack_rsp], rax
    mov qword [rax], .blockend_39
    jmp proc_os_env
.blockend_39: ; call
.blockstart_40: ; call
    mov rax, [ret_stack_rsp]
    add rax, 16
    mov rbx, [loc_stack_rsp]
    mov qword [rax - 8], rbx
    mov qword [ret_stack_rsp], rax
    mov qword [rax], .blockend_40
    jmp proc_cstr_cpy
.blockend_40: ; call
    add rsp, 8
    push str_86
.blockstart_41: ; call
    mov rax, [ret_stack_rsp]
    add rax, 16
    mov rbx, [loc_stack_rsp]
    mov qword [rax - 8], rbx
    mov qword [ret_stack_rsp], rax
    mov qword [rax], .blockend_41
    jmp proc_cstr_cat
.blockend_41: ; call
    add rsp, 8
    push mem+65; tempcommand
    push str_87
    pop rbx
    pop rax
    mov qword [rax], rbx
    push rax
    push qword 8
    pop rax
    pop rbx
    add rax, rbx
    push rax
    push str_88
    pop rbx
    pop rax
    mov qword [rax], rbx
    push rax
    push qword 8
    pop rax
    pop rbx
    add rax, rbx
    push rax
    push str_89
    pop rbx
    pop rax
    mov qword [rax], rbx
    push rax
    push qword 8
    pop rax
    pop rbx
    add rax, rbx
    push rax
    push str_90
    pop rbx
    pop rax
    mov qword [rax], rbx
    push rax
    push qword 8
    pop rax
    pop rbx
    add rax, rbx
    push rax
    push mem+1217; binpath
    pop rbx
    pop rax
    mov qword [rax], rbx
    push rax
    push qword 8
    pop rax
    pop rbx
    add rax, rbx
    push rax
    push str_91
    pop rbx
    pop rax
    mov qword [rax], rbx
    push rax
    push qword 8
    pop rax
    pop rbx
    add rax, rbx
    push rax
    push str_92
    pop rbx
    pop rax
    mov qword [rax], rbx
    push rax
    push qword 8
    pop rax
    pop rbx
    add rax, rbx
    push rax
    push mem+705; srcpath
    pop rbx
    pop rax
    mov qword [rax], rbx
    push rax
    push qword 8
    pop rax
    pop rbx
    add rax, rbx
    push rax
    push qword 0
    pop rbx
    pop rax
    mov qword [rax], rbx
    push rax
    add rsp, 8
    push mem+65; tempcommand
.blockstart_42: ; call
    mov rax, [ret_stack_rsp]
    add rax, 16
    mov rbx, [loc_stack_rsp]
    mov qword [rax - 8], rbx
    mov qword [ret_stack_rsp], rax
    mov qword [rax], .blockend_42
    jmp proc_os_execcmdecholoud
.blockend_42: ; call
    add rsp, 8
    push mem+705; srcpath
.blockstart_43: ; call
    mov rax, [ret_stack_rsp]
    add rax, 16
    mov rbx, [loc_stack_rsp]
    mov qword [rax - 8], rbx
    mov qword [ret_stack_rsp], rax
    mov qword [rax], .blockend_43
    jmp proc_cstr_clear
.blockend_43: ; call
    push str_93
.blockstart_44: ; call
    mov rax, [ret_stack_rsp]
    add rax, 16
    mov rbx, [loc_stack_rsp]
    mov qword [rax - 8], rbx
    mov qword [ret_stack_rsp], rax
    mov qword [rax], .blockend_44
    jmp proc_os_env
.blockend_44: ; call
.blockstart_45: ; call
    mov rax, [ret_stack_rsp]
    add rax, 16
    mov rbx, [loc_stack_rsp]
    mov qword [rax - 8], rbx
    mov qword [ret_stack_rsp], rax
    mov qword [rax], .blockend_45
    jmp proc_cstr_cpy
.blockend_45: ; call
    add rsp, 8
    push str_94
.blockstart_46: ; call
    mov rax, [ret_stack_rsp]
    add rax, 16
    mov rbx, [loc_stack_rsp]
    mov qword [rax - 8], rbx
    mov qword [ret_stack_rsp], rax
    mov qword [rax], .blockend_46
    jmp proc_cstr_cat
.blockend_46: ; call
    add rsp, 8
    push mem+65; tempcommand
    push str_95
    pop rbx
    pop rax
    mov qword [rax], rbx
    push rax
    push qword 8
    pop rax
    pop rbx
    add rax, rbx
    push rax
    push str_96
    pop rbx
    pop rax
    mov qword [rax], rbx
    push rax
    push qword 8
    pop rax
    pop rbx
    add rax, rbx
    push rax
    push mem+705; srcpath
    pop rbx
    pop rax
    mov qword [rax], rbx
    push rax
    push qword 8
    pop rax
    pop rbx
    add rax, rbx
    push rax
    push qword 0
    pop rbx
    pop rax
    mov qword [rax], rbx
    push rax
    add rsp, 8
    push mem+65; tempcommand
.blockstart_47: ; call
    mov rax, [ret_stack_rsp]
    add rax, 16
    mov rbx, [loc_stack_rsp]
    mov qword [rax - 8], rbx
    mov qword [ret_stack_rsp], rax
    mov qword [rax], .blockend_47
    jmp proc_os_execcmdecholoud
.blockend_47: ; call
    add rsp, 8
    push mem+65; tempcommand
    push qword 0
.blockstart_48: ; call
    mov rax, [ret_stack_rsp]
    add rax, 16
    mov rbx, [loc_stack_rsp]
    mov qword [rax - 8], rbx
    mov qword [ret_stack_rsp], rax
    mov qword [rax], .blockend_48
    jmp proc_os_args
.blockend_48: ; call
    pop rbx
    pop rax
    mov qword [rax], rbx
    push rax
    push qword 8
    pop rax
    pop rbx
    add rax, rbx
    push rax
    push str_97
    pop rbx
    pop rax
    mov qword [rax], rbx
    push rax
    push qword 8
    pop rax
    pop rbx
    add rax, rbx
    push rax
    push str_98
    pop rbx
    pop rax
    mov qword [rax], rbx
    push rax
    push qword 8
    pop rax
    pop rbx
    add rax, rbx
    push rax
    push qword 0
    pop rbx
    pop rax
    mov qword [rax], rbx
    push rax
    add rsp, 8
    push mem+65; tempcommand
.blockstart_49: ; call
    mov rax, [ret_stack_rsp]
    add rax, 16
    mov rbx, [loc_stack_rsp]
    mov qword [rax - 8], rbx
    mov qword [ret_stack_rsp], rax
    mov qword [rax], .blockend_49
    jmp proc_os_execcmdecholoud
.blockend_49: ; call
    add rsp, 8
    push mem+65; tempcommand
    push qword 0
.blockstart_50: ; call
    mov rax, [ret_stack_rsp]
    add rax, 16
    mov rbx, [loc_stack_rsp]
    mov qword [rax - 8], rbx
    mov qword [ret_stack_rsp], rax
    mov qword [rax], .blockend_50
    jmp proc_os_args
.blockend_50: ; call
    pop rbx
    pop rax
    mov qword [rax], rbx
    push rax
    push qword 8
    pop rax
    pop rbx
    add rax, rbx
    push rax
    push str_99
    pop rbx
    pop rax
    mov qword [rax], rbx
    push rax
    push qword 8
    pop rax
    pop rbx
    add rax, rbx
    push rax
    push str_100
    pop rbx
    pop rax
    mov qword [rax], rbx
    push rax
    push qword 8
    pop rax
    pop rbx
    add rax, rbx
    push rax
    push qword 0
    pop rbx
    pop rax
    mov qword [rax], rbx
    push rax
    add rsp, 8
    push mem+65; tempcommand
.blockstart_51: ; call
    mov rax, [ret_stack_rsp]
    add rax, 16
    mov rbx, [loc_stack_rsp]
    mov qword [rax - 8], rbx
    mov qword [ret_stack_rsp], rax
    mov qword [rax], .blockend_51
    jmp proc_os_execcmdecholoud
.blockend_51: ; call
    add rsp, 8
    push qword 0
    mov rax, 60
    pop rdi
    syscall
proc_install:
    push qword 2
    mov rax, [args_ptr]
    mov rax, [rax]
    push rax
    xor rcx, rcx
    mov rdx, 1
    pop rax
    pop rbx
    cmp rax, rbx
    cmove rcx, rdx
    push rcx
    pop rbx
    test rbx, rbx
.blockstart_0: ; if
    jz .blockend_0
    push qword 3
.blockstart_1: ; call
    mov rax, [ret_stack_rsp]
    add rax, 16
    mov rbx, [loc_stack_rsp]
    mov qword [rax - 8], rbx
    mov qword [ret_stack_rsp], rax
    mov qword [rax], .blockend_1
    jmp proc_help
.blockend_1: ; call
.blockend_0: ; if
    push mem+449; cachepath
.blockstart_2: ; call
    mov rax, [ret_stack_rsp]
    add rax, 16
    mov rbx, [loc_stack_rsp]
    mov qword [rax - 8], rbx
    mov qword [ret_stack_rsp], rax
    mov qword [rax], .blockend_2
    jmp proc_cstr_clear
.blockend_2: ; call
    push str_101
.blockstart_3: ; call
    mov rax, [ret_stack_rsp]
    add rax, 16
    mov rbx, [loc_stack_rsp]
    mov qword [rax - 8], rbx
    mov qword [ret_stack_rsp], rax
    mov qword [rax], .blockend_3
    jmp proc_os_env
.blockend_3: ; call
.blockstart_4: ; call
    mov rax, [ret_stack_rsp]
    add rax, 16
    mov rbx, [loc_stack_rsp]
    mov qword [rax - 8], rbx
    mov qword [ret_stack_rsp], rax
    mov qword [rax], .blockend_4
    jmp proc_cstr_cpy
.blockend_4: ; call
    add rsp, 8
    push str_102
.blockstart_5: ; call
    mov rax, [ret_stack_rsp]
    add rax, 16
    mov rbx, [loc_stack_rsp]
    mov qword [rax - 8], rbx
    mov qword [ret_stack_rsp], rax
    mov qword [rax], .blockend_5
    jmp proc_cstr_cat
.blockend_5: ; call
    add rsp, 8
    push mem+961; libpath
.blockstart_6: ; call
    mov rax, [ret_stack_rsp]
    add rax, 16
    mov rbx, [loc_stack_rsp]
    mov qword [rax - 8], rbx
    mov qword [ret_stack_rsp], rax
    mov qword [rax], .blockend_6
    jmp proc_cstr_clear
.blockend_6: ; call
    push str_103
.blockstart_7: ; call
    mov rax, [ret_stack_rsp]
    add rax, 16
    mov rbx, [loc_stack_rsp]
    mov qword [rax - 8], rbx
    mov qword [ret_stack_rsp], rax
    mov qword [rax], .blockend_7
    jmp proc_os_env
.blockend_7: ; call
.blockstart_8: ; call
    mov rax, [ret_stack_rsp]
    add rax, 16
    mov rbx, [loc_stack_rsp]
    mov qword [rax - 8], rbx
    mov qword [ret_stack_rsp], rax
    mov qword [rax], .blockend_8
    jmp proc_cstr_cpy
.blockend_8: ; call
    add rsp, 8
    push str_104
.blockstart_9: ; call
    mov rax, [ret_stack_rsp]
    add rax, 16
    mov rbx, [loc_stack_rsp]
    mov qword [rax - 8], rbx
    mov qword [ret_stack_rsp], rax
    mov qword [rax], .blockend_9
    jmp proc_cstr_cat
.blockend_9: ; call
    add rsp, 8
    push mem+1217; binpath
.blockstart_10: ; call
    mov rax, [ret_stack_rsp]
    add rax, 16
    mov rbx, [loc_stack_rsp]
    mov qword [rax - 8], rbx
    mov qword [ret_stack_rsp], rax
    mov qword [rax], .blockend_10
    jmp proc_cstr_clear
.blockend_10: ; call
    push str_105
.blockstart_11: ; call
    mov rax, [ret_stack_rsp]
    add rax, 16
    mov rbx, [loc_stack_rsp]
    mov qword [rax - 8], rbx
    mov qword [ret_stack_rsp], rax
    mov qword [rax], .blockend_11
    jmp proc_os_env
.blockend_11: ; call
.blockstart_12: ; call
    mov rax, [ret_stack_rsp]
    add rax, 16
    mov rbx, [loc_stack_rsp]
    mov qword [rax - 8], rbx
    mov qword [ret_stack_rsp], rax
    mov qword [rax], .blockend_12
    jmp proc_cstr_cpy
.blockend_12: ; call
    add rsp, 8
    push str_106
.blockstart_13: ; call
    mov rax, [ret_stack_rsp]
    add rax, 16
    mov rbx, [loc_stack_rsp]
    mov qword [rax - 8], rbx
    mov qword [ret_stack_rsp], rax
    mov qword [rax], .blockend_13
    jmp proc_cstr_cat
.blockend_13: ; call
    add rsp, 8
    push mem+65; tempcommand
    push str_107
    pop rbx
    pop rax
    mov qword [rax], rbx
    push rax
    push qword 8
    pop rax
    pop rbx
    add rax, rbx
    push rax
    push str_108
    pop rbx
    pop rax
    mov qword [rax], rbx
    push rax
    push qword 8
    pop rax
    pop rbx
    add rax, rbx
    push rax
    push mem+449; cachepath
    pop rbx
    pop rax
    mov qword [rax], rbx
    push rax
    push qword 8
    pop rax
    pop rbx
    add rax, rbx
    push rax
    push mem+1217; binpath
    pop rbx
    pop rax
    mov qword [rax], rbx
    push rax
    push qword 8
    pop rax
    pop rbx
    add rax, rbx
    push rax
    push mem+961; libpath
    pop rbx
    pop rax
    mov qword [rax], rbx
    push rax
    push qword 8
    pop rax
    pop rbx
    add rax, rbx
    push rax
    push qword 0
    pop rbx
    pop rax
    mov qword [rax], rbx
    push rax
    add rsp, 8
    push mem+193; temppath
.blockstart_14: ; call
    mov rax, [ret_stack_rsp]
    add rax, 16
    mov rbx, [loc_stack_rsp]
    mov qword [rax - 8], rbx
    mov qword [ret_stack_rsp], rax
    mov qword [rax], .blockend_14
    jmp proc_cstr_clear
.blockend_14: ; call
    push mem+449; cachepath
.blockstart_15: ; call
    mov rax, [ret_stack_rsp]
    add rax, 16
    mov rbx, [loc_stack_rsp]
    mov qword [rax - 8], rbx
    mov qword [ret_stack_rsp], rax
    mov qword [rax], .blockend_15
    jmp proc_cstr_cpy
.blockend_15: ; call
    add rsp, 8
    push qword 2
.blockstart_16: ; call
    mov rax, [ret_stack_rsp]
    add rax, 16
    mov rbx, [loc_stack_rsp]
    mov qword [rax - 8], rbx
    mov qword [ret_stack_rsp], rax
    mov qword [rax], .blockend_16
    jmp proc_os_args
.blockend_16: ; call
.blockstart_17: ; call
    mov rax, [ret_stack_rsp]
    add rax, 16
    mov rbx, [loc_stack_rsp]
    mov qword [rax - 8], rbx
    mov qword [ret_stack_rsp], rax
    mov qword [rax], .blockend_17
    jmp proc_cstr_cat
.blockend_17: ; call
.blockstart_18: ; call
    mov rax, [ret_stack_rsp]
    add rax, 16
    mov rbx, [loc_stack_rsp]
    mov qword [rax - 8], rbx
    mov qword [ret_stack_rsp], rax
    mov qword [rax], .blockend_18
    jmp proc_os_existsf
.blockend_18: ; call
    pop rax
    push rax
    push rax
    pop rbx
    test rbx, rbx
.blockstart_19: ; if
    jz .blockend_19
.blockstart_20: ; call
    mov rax, [ret_stack_rsp]
    add rax, 16
    mov rbx, [loc_stack_rsp]
    mov qword [rax - 8], rbx
    mov qword [ret_stack_rsp], rax
    mov qword [rax], .blockend_20
    jmp proc_pullrepo
.blockend_20: ; call
.blockend_19: ; if
    pop rax
    xor rax, 1
    push rax
    pop rbx
    test rbx, rbx
.blockstart_21: ; if
    jz .blockend_21
.blockstart_22: ; call
    mov rax, [ret_stack_rsp]
    add rax, 16
    mov rbx, [loc_stack_rsp]
    mov qword [rax - 8], rbx
    mov qword [ret_stack_rsp], rax
    mov qword [rax], .blockend_22
    jmp proc_clonerepo
.blockend_22: ; call
.blockend_21: ; if
    push mem+193; temppath
.blockstart_23: ; call
    mov rax, [ret_stack_rsp]
    add rax, 16
    mov rbx, [loc_stack_rsp]
    mov qword [rax - 8], rbx
    mov qword [ret_stack_rsp], rax
    mov qword [rax], .blockend_23
    jmp proc_cstr_clear
.blockend_23: ; call
    push mem+449; cachepath
.blockstart_24: ; call
    mov rax, [ret_stack_rsp]
    add rax, 16
    mov rbx, [loc_stack_rsp]
    mov qword [rax - 8], rbx
    mov qword [ret_stack_rsp], rax
    mov qword [rax], .blockend_24
    jmp proc_cstr_cpy
.blockend_24: ; call
    add rsp, 8
    push qword 2
.blockstart_25: ; call
    mov rax, [ret_stack_rsp]
    add rax, 16
    mov rbx, [loc_stack_rsp]
    mov qword [rax - 8], rbx
    mov qword [ret_stack_rsp], rax
    mov qword [rax], .blockend_25
    jmp proc_os_args
.blockend_25: ; call
.blockstart_26: ; call
    mov rax, [ret_stack_rsp]
    add rax, 16
    mov rbx, [loc_stack_rsp]
    mov qword [rax - 8], rbx
    mov qword [ret_stack_rsp], rax
    mov qword [rax], .blockend_26
    jmp proc_cstr_cat
.blockend_26: ; call
    push str_109
.blockstart_27: ; call
    mov rax, [ret_stack_rsp]
    add rax, 16
    mov rbx, [loc_stack_rsp]
    mov qword [rax - 8], rbx
    mov qword [ret_stack_rsp], rax
    mov qword [rax], .blockend_27
    jmp proc_cstr_cat
.blockend_27: ; call
.blockstart_28: ; call
    mov rax, [ret_stack_rsp]
    add rax, 16
    mov rbx, [loc_stack_rsp]
    mov qword [rax - 8], rbx
    mov qword [ret_stack_rsp], rax
    mov qword [rax], .blockend_28
    jmp proc_os_existsf
.blockend_28: ; call
    pop rax
    xor rax, 1
    push rax
    pop rbx
    test rbx, rbx
.blockstart_29: ; if
    jz .blockend_29
    push str_110
.blockstart_30: ; call
    mov rax, [ret_stack_rsp]
    add rax, 16
    mov rbx, [loc_stack_rsp]
    mov qword [rax - 8], rbx
    mov qword [ret_stack_rsp], rax
    mov qword [rax], .blockend_30
    jmp proc_cstr_println
.blockend_30: ; call
    push mem+193; temppath
.blockstart_31: ; call
    mov rax, [ret_stack_rsp]
    add rax, 16
    mov rbx, [loc_stack_rsp]
    mov qword [rax - 8], rbx
    mov qword [ret_stack_rsp], rax
    mov qword [rax], .blockend_31
    jmp proc_cstr_println
.blockend_31: ; call
    push qword 255
    mov rax, 60
    pop rdi
    syscall
.blockend_29: ; if
    push mem+193; temppath
.blockstart_32: ; call
    mov rax, [ret_stack_rsp]
    add rax, 16
    mov rbx, [loc_stack_rsp]
    mov qword [rax - 8], rbx
    mov qword [ret_stack_rsp], rax
    mov qword [rax], .blockend_32
    jmp proc_openinput
.blockend_32: ; call
    push str_111
.blockstart_33: ; call
    mov rax, [ret_stack_rsp]
    add rax, 16
    mov rbx, [loc_stack_rsp]
    mov qword [rax - 8], rbx
    mov qword [ret_stack_rsp], rax
    mov qword [rax], .blockend_33
    jmp proc_cstr_print
.blockend_33: ; call
    push mem+193; temppath
.blockstart_34: ; call
    mov rax, [ret_stack_rsp]
    add rax, 16
    mov rbx, [loc_stack_rsp]
    mov qword [rax - 8], rbx
    mov qword [ret_stack_rsp], rax
    mov qword [rax], .blockend_34
    jmp proc_cstr_println
.blockend_34: ; call
    push mem+193; temppath
.blockstart_35: ; call
    mov rax, [ret_stack_rsp]
    add rax, 16
    mov rbx, [loc_stack_rsp]
    mov qword [rax - 8], rbx
    mov qword [ret_stack_rsp], rax
    mov qword [rax], .blockend_35
    jmp proc_cstr_clear
.blockend_35: ; call
    push mem+449; cachepath
.blockstart_36: ; call
    mov rax, [ret_stack_rsp]
    add rax, 16
    mov rbx, [loc_stack_rsp]
    mov qword [rax - 8], rbx
    mov qword [ret_stack_rsp], rax
    mov qword [rax], .blockend_36
    jmp proc_cstr_cpy
.blockend_36: ; call
    push qword 2
.blockstart_37: ; call
    mov rax, [ret_stack_rsp]
    add rax, 16
    mov rbx, [loc_stack_rsp]
    mov qword [rax - 8], rbx
    mov qword [ret_stack_rsp], rax
    mov qword [rax], .blockend_37
    jmp proc_os_args
.blockend_37: ; call
.blockstart_38: ; call
    mov rax, [ret_stack_rsp]
    add rax, 16
    mov rbx, [loc_stack_rsp]
    mov qword [rax - 8], rbx
    mov qword [ret_stack_rsp], rax
    mov qword [rax], .blockend_38
    jmp proc_cstr_cat
.blockend_38: ; call
    add rsp, 8
.blockstart_39: ; call
    mov rax, [ret_stack_rsp]
    add rax, 16
    mov rbx, [loc_stack_rsp]
    mov qword [rax - 8], rbx
    mov qword [ret_stack_rsp], rax
    mov qword [rax], .blockend_39
    jmp proc_parsefile
.blockend_39: ; call
    push qword 0
    mov rax, 60
    pop rdi
    syscall
proc_remove:
    push qword 2
    mov rax, [args_ptr]
    mov rax, [rax]
    push rax
    xor rcx, rcx
    mov rdx, 1
    pop rax
    pop rbx
    cmp rax, rbx
    cmove rcx, rdx
    push rcx
    pop rbx
    test rbx, rbx
.blockstart_0: ; if
    jz .blockend_0
    push qword 3
.blockstart_1: ; call
    mov rax, [ret_stack_rsp]
    add rax, 16
    mov rbx, [loc_stack_rsp]
    mov qword [rax - 8], rbx
    mov qword [ret_stack_rsp], rax
    mov qword [rax], .blockend_1
    jmp proc_help
.blockend_1: ; call
.blockend_0: ; if
    push qword 0
    mov rax, 60
    pop rdi
    syscall
proc_develop:
    push qword 2
    mov rax, [args_ptr]
    mov rax, [rax]
    push rax
    xor rcx, rcx
    mov rdx, 1
    pop rax
    pop rbx
    cmp rax, rbx
    cmovne rcx, rdx
    push rcx
    pop rbx
    test rbx, rbx
.blockstart_0: ; if
    jz .blockend_0
    push qword 1
.blockstart_1: ; call
    mov rax, [ret_stack_rsp]
    add rax, 16
    mov rbx, [loc_stack_rsp]
    mov qword [rax - 8], rbx
    mov qword [ret_stack_rsp], rax
    mov qword [rax], .blockend_1
    jmp proc_help
.blockend_1: ; call
.blockend_0: ; if
    mov rax, [loc_stack_rsp]
    add rax, 8
    mov [loc_stack_rsp], rax
.blockstart_2: ; call
    mov rax, [ret_stack_rsp]
    add rax, 16
    mov rbx, [loc_stack_rsp]
    mov qword [rax - 8], rbx
    mov qword [ret_stack_rsp], rax
    mov qword [rax], .blockend_2
    jmp proc_os_cwd
.blockend_2: ; call
.blockstart_3: ; do
    push qword 1
    pop rax
    pop rbx
    add rax, rbx
    push rax
    pop rax
    push rax
    push rax
    pop rax
    xor rbx, rbx
    mov bl, [rax]
    push rbx
    push qword 47
    xor rcx, rcx
    mov rdx, 1
    pop rax
    pop rbx
    cmp rax, rbx
    cmove rcx, rdx
    push rcx
    pop rbx
    test rbx, rbx
.blockstart_4: ; if
    jz .blockend_4
    mov rax, [ret_stack_rsp]
    mov rax, [rax-8]
    add rax, 0
    push rax
    pop rax
    pop rbx
    push rbx
    push rax
    push rbx
    push qword 1
    pop rax
    pop rbx
    add rax, rbx
    push rax
    pop rbx
    pop rax
    mov qword [rax], rbx
    push rax
    add rsp, 8
.blockend_4: ; if
    pop rax
    push rax
    push rax
    pop rax
    xor rbx, rbx
    mov bl, [rax]
    push rbx
    push qword 0
    xor rcx, rcx
    mov rdx, 1
    pop rax
    pop rbx
    cmp rax, rbx
    cmovne rcx, rdx
    push rcx
    pop rbx
    test rbx, rbx
    jnz .blockstart_3
.blockend_3: ; do
    push mem+1217; binpath
.blockstart_5: ; call
    mov rax, [ret_stack_rsp]
    add rax, 16
    mov rbx, [loc_stack_rsp]
    mov qword [rax - 8], rbx
    mov qword [ret_stack_rsp], rax
    mov qword [rax], .blockend_5
    jmp proc_cstr_clear
.blockend_5: ; call
    push str_112
.blockstart_6: ; call
    mov rax, [ret_stack_rsp]
    add rax, 16
    mov rbx, [loc_stack_rsp]
    mov qword [rax - 8], rbx
    mov qword [ret_stack_rsp], rax
    mov qword [rax], .blockend_6
    jmp proc_os_env
.blockend_6: ; call
.blockstart_7: ; call
    mov rax, [ret_stack_rsp]
    add rax, 16
    mov rbx, [loc_stack_rsp]
    mov qword [rax - 8], rbx
    mov qword [ret_stack_rsp], rax
    mov qword [rax], .blockend_7
    jmp proc_cstr_cpy
.blockend_7: ; call
    add rsp, 8
    push str_113
.blockstart_8: ; call
    mov rax, [ret_stack_rsp]
    add rax, 16
    mov rbx, [loc_stack_rsp]
    mov qword [rax - 8], rbx
    mov qword [ret_stack_rsp], rax
    mov qword [rax], .blockend_8
    jmp proc_cstr_cat
.blockend_8: ; call
    add rsp, 8
    push mem+65; tempcommand
    push str_114
    pop rbx
    pop rax
    mov qword [rax], rbx
    push rax
    push qword 8
    pop rax
    pop rbx
    add rax, rbx
    push rax
    push str_115
    pop rbx
    pop rax
    mov qword [rax], rbx
    push rax
    push qword 8
    pop rax
    pop rbx
    add rax, rbx
    push rax
    push mem+1217; binpath
    pop rbx
    pop rax
    mov qword [rax], rbx
    push rax
    push qword 8
    pop rax
    pop rbx
    add rax, rbx
    push rax
    push qword 0
    pop rbx
    pop rax
    mov qword [rax], rbx
    push rax
    add rsp, 8
    push mem+65; tempcommand
.blockstart_9: ; call
    mov rax, [ret_stack_rsp]
    add rax, 16
    mov rbx, [loc_stack_rsp]
    mov qword [rax - 8], rbx
    mov qword [ret_stack_rsp], rax
    mov qword [rax], .blockend_9
    jmp proc_os_execcmdecholoud
.blockend_9: ; call
    add rsp, 8
    push mem+1217; binpath
.blockstart_10: ; call
    mov rax, [ret_stack_rsp]
    add rax, 16
    mov rbx, [loc_stack_rsp]
    mov qword [rax - 8], rbx
    mov qword [ret_stack_rsp], rax
    mov qword [rax], .blockend_10
    jmp proc_cstr_clear
.blockend_10: ; call
    push str_116
.blockstart_11: ; call
    mov rax, [ret_stack_rsp]
    add rax, 16
    mov rbx, [loc_stack_rsp]
    mov qword [rax - 8], rbx
    mov qword [ret_stack_rsp], rax
    mov qword [rax], .blockend_11
    jmp proc_os_env
.blockend_11: ; call
.blockstart_12: ; call
    mov rax, [ret_stack_rsp]
    add rax, 16
    mov rbx, [loc_stack_rsp]
    mov qword [rax - 8], rbx
    mov qword [ret_stack_rsp], rax
    mov qword [rax], .blockend_12
    jmp proc_cstr_cpy
.blockend_12: ; call
    add rsp, 8
    push str_117
.blockstart_13: ; call
    mov rax, [ret_stack_rsp]
    add rax, 16
    mov rbx, [loc_stack_rsp]
    mov qword [rax - 8], rbx
    mov qword [ret_stack_rsp], rax
    mov qword [rax], .blockend_13
    jmp proc_cstr_cat
.blockend_13: ; call
    mov rax, [ret_stack_rsp]
    mov rax, [rax-8]
    add rax, 0
    push rax
    pop rax
    mov rbx, [rax]
    push rbx
.blockstart_14: ; call
    mov rax, [ret_stack_rsp]
    add rax, 16
    mov rbx, [loc_stack_rsp]
    mov qword [rax - 8], rbx
    mov qword [ret_stack_rsp], rax
    mov qword [rax], .blockend_14
    jmp proc_cstr_cat
.blockend_14: ; call
    add rsp, 8
    push mem+449; cachepath
.blockstart_15: ; call
    mov rax, [ret_stack_rsp]
    add rax, 16
    mov rbx, [loc_stack_rsp]
    mov qword [rax - 8], rbx
    mov qword [ret_stack_rsp], rax
    mov qword [rax], .blockend_15
    jmp proc_cstr_clear
.blockend_15: ; call
    push str_118
.blockstart_16: ; call
    mov rax, [ret_stack_rsp]
    add rax, 16
    mov rbx, [loc_stack_rsp]
    mov qword [rax - 8], rbx
    mov qword [ret_stack_rsp], rax
    mov qword [rax], .blockend_16
    jmp proc_os_env
.blockend_16: ; call
.blockstart_17: ; call
    mov rax, [ret_stack_rsp]
    add rax, 16
    mov rbx, [loc_stack_rsp]
    mov qword [rax - 8], rbx
    mov qword [ret_stack_rsp], rax
    mov qword [rax], .blockend_17
    jmp proc_cstr_cpy
.blockend_17: ; call
    add rsp, 8
    push str_119
.blockstart_18: ; call
    mov rax, [ret_stack_rsp]
    add rax, 16
    mov rbx, [loc_stack_rsp]
    mov qword [rax - 8], rbx
    mov qword [ret_stack_rsp], rax
    mov qword [rax], .blockend_18
    jmp proc_cstr_cat
.blockend_18: ; call
    add rsp, 8
    push mem+65; tempcommand
    push str_120
    pop rbx
    pop rax
    mov qword [rax], rbx
    push rax
    push qword 8
    pop rax
    pop rbx
    add rax, rbx
    push rax
    push str_121
    pop rbx
    pop rax
    mov qword [rax], rbx
    push rax
    push qword 8
    pop rax
    pop rbx
    add rax, rbx
    push rax
.blockstart_19: ; call
    mov rax, [ret_stack_rsp]
    add rax, 16
    mov rbx, [loc_stack_rsp]
    mov qword [rax - 8], rbx
    mov qword [ret_stack_rsp], rax
    mov qword [rax], .blockend_19
    jmp proc_os_cwd
.blockend_19: ; call
    pop rbx
    pop rax
    mov qword [rax], rbx
    push rax
    push qword 8
    pop rax
    pop rbx
    add rax, rbx
    push rax
    push mem+449; cachepath
    pop rbx
    pop rax
    mov qword [rax], rbx
    push rax
    push qword 8
    pop rax
    pop rbx
    add rax, rbx
    push rax
    push qword 0
    pop rbx
    pop rax
    mov qword [rax], rbx
    push rax
    add rsp, 8
    push mem+65; tempcommand
.blockstart_20: ; call
    mov rax, [ret_stack_rsp]
    add rax, 16
    mov rbx, [loc_stack_rsp]
    mov qword [rax - 8], rbx
    mov qword [ret_stack_rsp], rax
    mov qword [rax], .blockend_20
    jmp proc_os_execcmdecholoud
.blockend_20: ; call
    add rsp, 8
    push mem+193; temppath
.blockstart_21: ; call
    mov rax, [ret_stack_rsp]
    add rax, 16
    mov rbx, [loc_stack_rsp]
    mov qword [rax - 8], rbx
    mov qword [ret_stack_rsp], rax
    mov qword [rax], .blockend_21
    jmp proc_cstr_clear
.blockend_21: ; call
    push mem+1217; binpath
.blockstart_22: ; call
    mov rax, [ret_stack_rsp]
    add rax, 16
    mov rbx, [loc_stack_rsp]
    mov qword [rax - 8], rbx
    mov qword [ret_stack_rsp], rax
    mov qword [rax], .blockend_22
    jmp proc_cstr_cpy
.blockend_22: ; call
    add rsp, 8
    push str_122
.blockstart_23: ; call
    mov rax, [ret_stack_rsp]
    add rax, 16
    mov rbx, [loc_stack_rsp]
    mov qword [rax - 8], rbx
    mov qword [ret_stack_rsp], rax
    mov qword [rax], .blockend_23
    jmp proc_cstr_cat
.blockend_23: ; call
.blockstart_24: ; call
    mov rax, [ret_stack_rsp]
    add rax, 16
    mov rbx, [loc_stack_rsp]
    mov qword [rax - 8], rbx
    mov qword [ret_stack_rsp], rax
    mov qword [rax], .blockend_24
    jmp proc_os_existsf
.blockend_24: ; call
    pop rax
    xor rax, 1
    push rax
    pop rbx
    test rbx, rbx
.blockstart_25: ; if
    jz .blockend_25
    push str_123
.blockstart_26: ; call
    mov rax, [ret_stack_rsp]
    add rax, 16
    mov rbx, [loc_stack_rsp]
    mov qword [rax - 8], rbx
    mov qword [ret_stack_rsp], rax
    mov qword [rax], .blockend_26
    jmp proc_cstr_println
.blockend_26: ; call
    push mem+193; temppath
.blockstart_27: ; call
    mov rax, [ret_stack_rsp]
    add rax, 16
    mov rbx, [loc_stack_rsp]
    mov qword [rax - 8], rbx
    mov qword [ret_stack_rsp], rax
    mov qword [rax], .blockend_27
    jmp proc_cstr_println
.blockend_27: ; call
    push qword 255
    mov rax, 60
    pop rdi
    syscall
.blockend_25: ; if
    push mem+193; temppath
.blockstart_28: ; call
    mov rax, [ret_stack_rsp]
    add rax, 16
    mov rbx, [loc_stack_rsp]
    mov qword [rax - 8], rbx
    mov qword [ret_stack_rsp], rax
    mov qword [rax], .blockend_28
    jmp proc_openinput
.blockend_28: ; call
    push str_124
.blockstart_29: ; call
    mov rax, [ret_stack_rsp]
    add rax, 16
    mov rbx, [loc_stack_rsp]
    mov qword [rax - 8], rbx
    mov qword [ret_stack_rsp], rax
    mov qword [rax], .blockend_29
    jmp proc_cstr_print
.blockend_29: ; call
    push mem+193; temppath
.blockstart_30: ; call
    mov rax, [ret_stack_rsp]
    add rax, 16
    mov rbx, [loc_stack_rsp]
    mov qword [rax - 8], rbx
    mov qword [ret_stack_rsp], rax
    mov qword [rax], .blockend_30
    jmp proc_cstr_println
.blockend_30: ; call
    push mem+193; temppath
.blockstart_31: ; call
    mov rax, [ret_stack_rsp]
    add rax, 16
    mov rbx, [loc_stack_rsp]
    mov qword [rax - 8], rbx
    mov qword [ret_stack_rsp], rax
    mov qword [rax], .blockend_31
    jmp proc_cstr_clear
.blockend_31: ; call
    push mem+449; cachepath
.blockstart_32: ; call
    mov rax, [ret_stack_rsp]
    add rax, 16
    mov rbx, [loc_stack_rsp]
    mov qword [rax - 8], rbx
    mov qword [ret_stack_rsp], rax
    mov qword [rax], .blockend_32
    jmp proc_cstr_cpy
.blockend_32: ; call
    add rsp, 8
    push mem+1217; binpath
.blockstart_33: ; call
    mov rax, [ret_stack_rsp]
    add rax, 16
    mov rbx, [loc_stack_rsp]
    mov qword [rax - 8], rbx
    mov qword [ret_stack_rsp], rax
    mov qword [rax], .blockend_33
    jmp proc_cstr_clear
.blockend_33: ; call
    push str_125
.blockstart_34: ; call
    mov rax, [ret_stack_rsp]
    add rax, 16
    mov rbx, [loc_stack_rsp]
    mov qword [rax - 8], rbx
    mov qword [ret_stack_rsp], rax
    mov qword [rax], .blockend_34
    jmp proc_os_env
.blockend_34: ; call
.blockstart_35: ; call
    mov rax, [ret_stack_rsp]
    add rax, 16
    mov rbx, [loc_stack_rsp]
    mov qword [rax - 8], rbx
    mov qword [ret_stack_rsp], rax
    mov qword [rax], .blockend_35
    jmp proc_cstr_cpy
.blockend_35: ; call
    add rsp, 8
    push str_126
.blockstart_36: ; call
    mov rax, [ret_stack_rsp]
    add rax, 16
    mov rbx, [loc_stack_rsp]
    mov qword [rax - 8], rbx
    mov qword [ret_stack_rsp], rax
    mov qword [rax], .blockend_36
    jmp proc_cstr_cat
.blockend_36: ; call
    add rsp, 8
    push mem+449; cachepath
.blockstart_37: ; call
    mov rax, [ret_stack_rsp]
    add rax, 16
    mov rbx, [loc_stack_rsp]
    mov qword [rax - 8], rbx
    mov qword [ret_stack_rsp], rax
    mov qword [rax], .blockend_37
    jmp proc_cstr_clear
.blockend_37: ; call
    push str_127
.blockstart_38: ; call
    mov rax, [ret_stack_rsp]
    add rax, 16
    mov rbx, [loc_stack_rsp]
    mov qword [rax - 8], rbx
    mov qword [ret_stack_rsp], rax
    mov qword [rax], .blockend_38
    jmp proc_os_env
.blockend_38: ; call
.blockstart_39: ; call
    mov rax, [ret_stack_rsp]
    add rax, 16
    mov rbx, [loc_stack_rsp]
    mov qword [rax - 8], rbx
    mov qword [ret_stack_rsp], rax
    mov qword [rax], .blockend_39
    jmp proc_cstr_cpy
.blockend_39: ; call
    add rsp, 8
    push str_128
.blockstart_40: ; call
    mov rax, [ret_stack_rsp]
    add rax, 16
    mov rbx, [loc_stack_rsp]
    mov qword [rax - 8], rbx
    mov qword [ret_stack_rsp], rax
    mov qword [rax], .blockend_40
    jmp proc_cstr_cat
.blockend_40: ; call
    mov rax, [ret_stack_rsp]
    mov rax, [rax-8]
    add rax, 0
    push rax
    pop rax
    mov rbx, [rax]
    push rbx
.blockstart_41: ; call
    mov rax, [ret_stack_rsp]
    add rax, 16
    mov rbx, [loc_stack_rsp]
    mov qword [rax - 8], rbx
    mov qword [ret_stack_rsp], rax
    mov qword [rax], .blockend_41
    jmp proc_cstr_cat
.blockend_41: ; call
    add rsp, 8
    push mem+705; srcpath
.blockstart_42: ; call
    mov rax, [ret_stack_rsp]
    add rax, 16
    mov rbx, [loc_stack_rsp]
    mov qword [rax - 8], rbx
    mov qword [ret_stack_rsp], rax
    mov qword [rax], .blockend_42
    jmp proc_cstr_clear
.blockend_42: ; call
    push str_129
.blockstart_43: ; call
    mov rax, [ret_stack_rsp]
    add rax, 16
    mov rbx, [loc_stack_rsp]
    mov qword [rax - 8], rbx
    mov qword [ret_stack_rsp], rax
    mov qword [rax], .blockend_43
    jmp proc_os_env
.blockend_43: ; call
.blockstart_44: ; call
    mov rax, [ret_stack_rsp]
    add rax, 16
    mov rbx, [loc_stack_rsp]
    mov qword [rax - 8], rbx
    mov qword [ret_stack_rsp], rax
    mov qword [rax], .blockend_44
    jmp proc_cstr_cpy
.blockend_44: ; call
    add rsp, 8
    push str_130
.blockstart_45: ; call
    mov rax, [ret_stack_rsp]
    add rax, 16
    mov rbx, [loc_stack_rsp]
    mov qword [rax - 8], rbx
    mov qword [ret_stack_rsp], rax
    mov qword [rax], .blockend_45
    jmp proc_cstr_cat
.blockend_45: ; call
    mov rax, [ret_stack_rsp]
    mov rax, [rax-8]
    add rax, 0
    push rax
    pop rax
    mov rbx, [rax]
    push rbx
.blockstart_46: ; call
    mov rax, [ret_stack_rsp]
    add rax, 16
    mov rbx, [loc_stack_rsp]
    mov qword [rax - 8], rbx
    mov qword [ret_stack_rsp], rax
    mov qword [rax], .blockend_46
    jmp proc_cstr_cat
.blockend_46: ; call
    add rsp, 8
.blockstart_47: ; call
    mov rax, [ret_stack_rsp]
    add rax, 16
    mov rbx, [loc_stack_rsp]
    mov qword [rax - 8], rbx
    mov qword [ret_stack_rsp], rax
    mov qword [rax], .blockend_47
    jmp proc_parsefile
.blockend_47: ; call
    push qword 0
    mov rax, 60
    pop rdi
    syscall
proc_main:
    push qword 1
    mov rax, [args_ptr]
    mov rax, [rax]
    push rax
    xor rcx, rcx
    mov rdx, 1
    pop rax
    pop rbx
    cmp rax, rbx
    cmove rcx, rdx
    push rcx
    pop rbx
    test rbx, rbx
.blockstart_0: ; if
    jz .blockend_0
    push qword 1
.blockstart_1: ; call
    mov rax, [ret_stack_rsp]
    add rax, 16
    mov rbx, [loc_stack_rsp]
    mov qword [rax - 8], rbx
    mov qword [ret_stack_rsp], rax
    mov qword [rax], .blockend_1
    jmp proc_help
.blockend_1: ; call
.blockend_0: ; if
    push qword 1
.blockstart_2: ; call
    mov rax, [ret_stack_rsp]
    add rax, 16
    mov rbx, [loc_stack_rsp]
    mov qword [rax - 8], rbx
    mov qword [ret_stack_rsp], rax
    mov qword [rax], .blockend_2
    jmp proc_os_args
.blockend_2: ; call
    pop rax
    push rax
    push rax
    push str_131
.blockstart_3: ; call
    mov rax, [ret_stack_rsp]
    add rax, 16
    mov rbx, [loc_stack_rsp]
    mov qword [rax - 8], rbx
    mov qword [ret_stack_rsp], rax
    mov qword [rax], .blockend_3
    jmp proc_cstr_eq
.blockend_3: ; call
    pop rbx
    test rbx, rbx
.blockstart_4: ; if
    jz .blockend_4
.blockstart_5: ; call
    mov rax, [ret_stack_rsp]
    add rax, 16
    mov rbx, [loc_stack_rsp]
    mov qword [rax - 8], rbx
    mov qword [ret_stack_rsp], rax
    mov qword [rax], .blockend_5
    jmp proc_init
.blockend_5: ; call
.blockend_4: ; if
    pop rax
    push rax
    push rax
    push str_132
.blockstart_6: ; call
    mov rax, [ret_stack_rsp]
    add rax, 16
    mov rbx, [loc_stack_rsp]
    mov qword [rax - 8], rbx
    mov qword [ret_stack_rsp], rax
    mov qword [rax], .blockend_6
    jmp proc_cstr_eq
.blockend_6: ; call
    pop rbx
    test rbx, rbx
.blockstart_7: ; if
    jz .blockend_7
.blockstart_8: ; call
    mov rax, [ret_stack_rsp]
    add rax, 16
    mov rbx, [loc_stack_rsp]
    mov qword [rax - 8], rbx
    mov qword [ret_stack_rsp], rax
    mov qword [rax], .blockend_8
    jmp proc_install
.blockend_8: ; call
.blockend_7: ; if
    pop rax
    push rax
    push rax
    push str_133
.blockstart_9: ; call
    mov rax, [ret_stack_rsp]
    add rax, 16
    mov rbx, [loc_stack_rsp]
    mov qword [rax - 8], rbx
    mov qword [ret_stack_rsp], rax
    mov qword [rax], .blockend_9
    jmp proc_cstr_eq
.blockend_9: ; call
    pop rbx
    test rbx, rbx
.blockstart_10: ; if
    jz .blockend_10
.blockstart_11: ; call
    mov rax, [ret_stack_rsp]
    add rax, 16
    mov rbx, [loc_stack_rsp]
    mov qword [rax - 8], rbx
    mov qword [ret_stack_rsp], rax
    mov qword [rax], .blockend_11
    jmp proc_remove
.blockend_11: ; call
.blockend_10: ; if
    pop rax
    push rax
    push rax
    push str_134
.blockstart_12: ; call
    mov rax, [ret_stack_rsp]
    add rax, 16
    mov rbx, [loc_stack_rsp]
    mov qword [rax - 8], rbx
    mov qword [ret_stack_rsp], rax
    mov qword [rax], .blockend_12
    jmp proc_cstr_eq
.blockend_12: ; call
    pop rbx
    test rbx, rbx
.blockstart_13: ; if
    jz .blockend_13
.blockstart_14: ; call
    mov rax, [ret_stack_rsp]
    add rax, 16
    mov rbx, [loc_stack_rsp]
    mov qword [rax - 8], rbx
    mov qword [ret_stack_rsp], rax
    mov qword [rax], .blockend_14
    jmp proc_develop
.blockend_14: ; call
.blockend_13: ; if
    add rsp, 8
    push qword 2
.blockstart_15: ; call
    mov rax, [ret_stack_rsp]
    add rax, 16
    mov rbx, [loc_stack_rsp]
    mov qword [rax - 8], rbx
    mov qword [ret_stack_rsp], rax
    mov qword [rax], .blockend_15
    jmp proc_help
.blockend_15: ; call
    mov rax, [ret_stack_rsp]
    mov rax, [rax - 8]
    mov [loc_stack_rsp], rax
    mov rax, [ret_stack_rsp]
    sub rax, 16
    mov qword [ret_stack_rsp], rax
    add rax, 16
    jmp qword [rax]
    jmp quit
_start:
    mov qword [args_ptr], rsp
    mov qword [ret_stack_rsp], ret_stack
    mov qword [loc_stack_rsp], loc_stack
    mov rax, [ret_stack_rsp] 
    mov qword [rax], quit
    jmp proc_main
quit:
    mov rax, 60
    mov rdi, 0
    syscall
section '.data'
    str_0: db 10, 0
    str_1: db 69, 114, 114, 111, 114, 32, 97, 108, 108, 111, 99, 97, 116, 105, 110, 103, 32, 104, 101, 97, 112, 32, 112, 97, 103, 101, 0
    str_2: db 98, 97, 100, 32, 114, 101, 97, 108, 108, 111, 99, 0
    str_3: db 47, 100, 101, 118, 47, 110, 117, 108, 108, 0
    str_4: db 69, 82, 82, 79, 82, 58, 32, 99, 97, 110, 116, 32, 111, 112, 101, 110, 32, 47, 100, 101, 118, 47, 110, 117, 108, 108, 0
    str_5: db 69, 82, 82, 79, 82, 58, 32, 99, 97, 110, 116, 32, 111, 112, 101, 110, 32, 47, 100, 101, 118, 47, 110, 117, 108, 108, 0
    str_6: db 69, 82, 82, 79, 82, 58, 32, 99, 97, 110, 116, 32, 111, 112, 101, 110, 32, 47, 100, 101, 118, 47, 110, 117, 108, 108, 0
    str_7: db 69, 82, 82, 79, 82, 58, 32, 99, 97, 110, 116, 32, 111, 112, 101, 110, 32, 47, 100, 101, 118, 47, 110, 117, 108, 108, 0
    str_8: db 69, 82, 82, 79, 82, 0
    str_9: db 91, 67, 77, 68, 93, 32, 82, 117, 110, 58, 32, 0
    str_10: db 32, 0
    str_11: db 91, 67, 77, 68, 93, 32, 82, 117, 110, 58, 32, 0
    str_12: db 32, 0
    str_13: db 69, 114, 114, 111, 114, 32, 119, 114, 105, 116, 105, 110, 103, 32, 102, 105, 108, 101, 0
    str_14: db 69, 114, 114, 111, 114, 32, 114, 101, 97, 100, 105, 110, 103, 32, 102, 105, 108, 101, 0
    str_15: db 69, 114, 114, 111, 114, 32, 99, 108, 111, 115, 105, 110, 103, 32, 102, 105, 108, 101, 0
    str_16: db 80, 87, 68, 0
    str_17: db 48, 46, 49, 46, 48, 0
    str_18: db 115, 108, 97, 109, 32, 99, 111, 109, 112, 105, 108, 101, 114, 32, 118, 0
    str_19: db 69, 82, 82, 79, 82, 58, 32, 89, 111, 117, 32, 109, 117, 115, 116, 32, 115, 112, 101, 99, 105, 102, 121, 32, 97, 110, 32, 111, 112, 101, 114, 97, 116, 105, 111, 110, 0
    str_20: db 69, 82, 82, 79, 82, 58, 32, 73, 110, 118, 97, 108, 105, 100, 32, 111, 112, 101, 114, 97, 116, 105, 111, 110, 32, 96, 0
    str_21: db 96, 0
    str_22: db 69, 82, 82, 79, 82, 58, 32, 89, 111, 117, 32, 109, 117, 115, 116, 32, 115, 112, 101, 99, 105, 102, 121, 32, 97, 32, 112, 97, 99, 107, 97, 103, 101, 32, 110, 97, 109, 101, 0
    str_23: db 115, 112, 97, 107, 105, 103, 32, 116, 104, 101, 32, 83, 108, 97, 109, 32, 112, 97, 99, 107, 97, 103, 101, 32, 109, 97, 110, 97, 103, 101, 114, 32, 118, 0
    str_24: db 32, 117, 115, 97, 103, 101, 58, 0
    str_25: db 32, 32, 32, 32, 115, 112, 97, 107, 105, 103, 32, 105, 110, 115, 116, 97, 108, 108, 32, 91, 112, 97, 99, 107, 97, 103, 101, 110, 97, 109, 101, 93, 0
    str_26: db 32, 32, 32, 32, 115, 112, 97, 107, 105, 103, 32, 114, 101, 109, 111, 118, 101, 32, 32, 91, 112, 97, 99, 107, 97, 103, 101, 110, 97, 109, 101, 93, 0
    str_27: db 32, 32, 32, 32, 115, 112, 97, 107, 105, 103, 32, 100, 101, 118, 101, 108, 111, 112, 0
    str_28: db 32, 32, 32, 32, 115, 112, 97, 107, 105, 103, 32, 105, 110, 105, 116, 0
    str_29: db 104, 116, 116, 112, 58, 47, 47, 103, 105, 116, 104, 117, 98, 46, 99, 111, 109, 47, 0
    str_30: db 47, 117, 115, 114, 47, 98, 105, 110, 47, 103, 105, 116, 0
    str_31: db 99, 108, 111, 110, 101, 0
    str_32: db 47, 117, 115, 114, 47, 98, 105, 110, 47, 103, 105, 116, 0
    str_33: db 45, 67, 0
    str_34: db 112, 117, 108, 108, 0
    str_35: db 45, 102, 0
    str_36: db 45, 113, 0
    str_37: db 47, 0
    str_38: db 47, 0
    str_39: db 72, 79, 77, 69, 0
    str_40: db 47, 46, 108, 111, 99, 97, 108, 47, 115, 108, 97, 109, 47, 98, 105, 110, 47, 115, 112, 97, 107, 105, 103, 0
    str_41: db 105, 110, 115, 116, 97, 108, 108, 0
    str_42: db 46, 115, 108, 109, 0
    str_43: db 47, 117, 115, 114, 47, 98, 105, 110, 47, 115, 108, 97, 109, 0
    str_44: db 45, 111, 0
    str_45: db 72, 79, 77, 69, 0
    str_46: db 47, 46, 108, 111, 99, 97, 108, 47, 115, 108, 97, 109, 47, 108, 105, 98, 47, 0
    str_47: db 47, 117, 115, 114, 47, 98, 105, 110, 47, 99, 112, 0
    str_48: db 45, 114, 0
    str_49: db 72, 79, 77, 69, 0
    str_50: db 47, 46, 108, 111, 99, 97, 108, 47, 115, 108, 97, 109, 47, 108, 105, 98, 47, 0
    str_51: db 47, 117, 115, 114, 47, 98, 105, 110, 47, 99, 112, 0
    str_52: db 115, 114, 99, 0
    str_53: db 114, 101, 113, 0
    str_54: db 98, 105, 110, 0
    str_55: db 108, 105, 98, 0
    str_56: db 108, 105, 98, 100, 0
    str_57: db 91, 69, 82, 82, 93, 32, 105, 110, 118, 97, 108, 105, 100, 32, 99, 111, 109, 109, 97, 110, 100, 58, 32, 96, 0
    str_58: db 96, 0
    str_59: db 34, 0
    str_60: db 72, 79, 77, 69, 0
    str_61: db 47, 46, 108, 111, 99, 97, 108, 47, 115, 108, 97, 109, 47, 99, 97, 99, 104, 101, 47, 0
    str_62: db 72, 79, 77, 69, 0
    str_63: db 47, 46, 108, 111, 99, 97, 108, 47, 115, 108, 97, 109, 47, 108, 105, 98, 47, 0
    str_64: db 72, 79, 77, 69, 0
    str_65: db 47, 46, 108, 111, 99, 97, 108, 47, 115, 108, 97, 109, 47, 98, 105, 110, 47, 0
    str_66: db 47, 117, 115, 114, 47, 98, 105, 110, 47, 109, 107, 100, 105, 114, 0
    str_67: db 45, 112, 0
    str_68: db 72, 79, 77, 69, 0
    str_69: db 47, 46, 108, 111, 99, 97, 108, 47, 115, 108, 97, 109, 47, 99, 97, 99, 104, 101, 47, 0
    str_70: db 115, 108, 97, 109, 0
    str_71: db 47, 117, 115, 114, 47, 98, 105, 110, 47, 103, 105, 116, 0
    str_72: db 99, 108, 111, 110, 101, 0
    str_73: db 104, 116, 116, 112, 58, 47, 47, 103, 105, 116, 104, 117, 98, 46, 99, 111, 109, 47, 115, 108, 97, 109, 45, 108, 97, 110, 103, 47, 115, 108, 97, 109, 0
    str_74: db 105, 110, 115, 116, 97, 108, 108, 0
    str_75: db 115, 108, 97, 109, 45, 108, 97, 110, 103, 47, 115, 108, 97, 109, 45, 115, 116, 100, 108, 105, 98, 0
    str_76: db 105, 110, 115, 116, 97, 108, 108, 0
    str_77: db 115, 108, 97, 109, 45, 108, 97, 110, 103, 47, 109, 97, 116, 104, 0
    str_78: db 72, 79, 77, 69, 0
    str_79: db 47, 46, 108, 111, 99, 97, 108, 47, 115, 108, 97, 109, 47, 99, 97, 99, 104, 101, 47, 115, 108, 97, 109, 46, 111, 0
    str_80: db 72, 79, 77, 69, 0
    str_81: db 47, 46, 108, 111, 99, 97, 108, 47, 115, 108, 97, 109, 47, 99, 97, 99, 104, 101, 47, 115, 108, 97, 109, 47, 115, 108, 97, 109, 46, 97, 115, 109, 0
    str_82: db 47, 117, 115, 114, 47, 98, 105, 110, 47, 102, 97, 115, 109, 0
    str_83: db 72, 79, 77, 69, 0
    str_84: db 47, 46, 108, 111, 99, 97, 108, 47, 115, 108, 97, 109, 47, 98, 105, 110, 47, 115, 108, 97, 109, 0
    str_85: db 72, 79, 77, 69, 0
    str_86: db 47, 46, 108, 111, 99, 97, 108, 47, 115, 108, 97, 109, 47, 99, 97, 99, 104, 101, 47, 115, 108, 97, 109, 46, 111, 0
    str_87: db 47, 117, 115, 114, 47, 98, 105, 110, 47, 108, 100, 0
    str_88: db 45, 100, 121, 110, 97, 109, 105, 99, 45, 108, 105, 110, 107, 101, 114, 0
    str_89: db 47, 108, 105, 98, 54, 52, 47, 108, 100, 45, 108, 105, 110, 117, 120, 45, 120, 56, 54, 45, 54, 52, 46, 115, 111, 46, 50, 0
    str_90: db 45, 111, 0
    str_91: db 45, 108, 99, 0
    str_92: db 45, 109, 101, 108, 102, 95, 120, 56, 54, 95, 54, 52, 0
    str_93: db 72, 79, 77, 69, 0
    str_94: db 47, 46, 108, 111, 99, 97, 108, 47, 115, 108, 97, 109, 47, 99, 97, 99, 104, 101, 47, 115, 108, 97, 109, 46, 111, 0
    str_95: db 47, 117, 115, 114, 47, 98, 105, 110, 47, 114, 109, 0
    str_96: db 45, 114, 102, 0
    str_97: db 105, 110, 115, 116, 97, 108, 108, 0
    str_98: db 115, 108, 97, 109, 45, 108, 97, 110, 103, 47, 115, 112, 97, 107, 105, 103, 0
    str_99: db 105, 110, 115, 116, 97, 108, 108, 0
    str_100: db 115, 108, 97, 109, 45, 108, 97, 110, 103, 47, 115, 108, 97, 109, 0
    str_101: db 72, 79, 77, 69, 0
    str_102: db 47, 46, 108, 111, 99, 97, 108, 47, 115, 108, 97, 109, 47, 99, 97, 99, 104, 101, 47, 0
    str_103: db 72, 79, 77, 69, 0
    str_104: db 47, 46, 108, 111, 99, 97, 108, 47, 115, 108, 97, 109, 47, 108, 105, 98, 47, 0
    str_105: db 72, 79, 77, 69, 0
    str_106: db 47, 46, 108, 111, 99, 97, 108, 47, 115, 108, 97, 109, 47, 98, 105, 110, 47, 0
    str_107: db 47, 117, 115, 114, 47, 98, 105, 110, 47, 109, 107, 100, 105, 114, 0
    str_108: db 45, 112, 0
    str_109: db 47, 112, 97, 99, 107, 97, 103, 101, 46, 115, 112, 107, 0
    str_110: db 69, 82, 82, 79, 82, 58, 32, 78, 111, 32, 112, 97, 99, 107, 97, 103, 101, 32, 102, 105, 108, 101, 32, 105, 110, 32, 114, 101, 112, 111, 0
    str_111: db 91, 83, 80, 75, 93, 32, 73, 110, 115, 116, 97, 108, 108, 105, 110, 103, 32, 0
    str_112: db 72, 79, 77, 69, 0
    str_113: db 47, 46, 108, 111, 99, 97, 108, 47, 115, 108, 97, 109, 47, 99, 97, 99, 104, 101, 47, 108, 111, 99, 97, 108, 47, 0
    str_114: db 47, 117, 115, 114, 47, 98, 105, 110, 47, 109, 107, 100, 105, 114, 0
    str_115: db 45, 112, 0
    str_116: db 72, 79, 77, 69, 0
    str_117: db 47, 46, 108, 111, 99, 97, 108, 47, 115, 108, 97, 109, 47, 99, 97, 99, 104, 101, 47, 108, 111, 99, 97, 108, 47, 0
    str_118: db 72, 79, 77, 69, 0
    str_119: db 47, 46, 108, 111, 99, 97, 108, 47, 115, 108, 97, 109, 47, 99, 97, 99, 104, 101, 47, 108, 111, 99, 97, 108, 47, 0
    str_120: db 47, 117, 115, 114, 47, 98, 105, 110, 47, 108, 110, 0
    str_121: db 45, 115, 102, 0
    str_122: db 47, 112, 97, 99, 107, 97, 103, 101, 46, 115, 112, 107, 0
    str_123: db 69, 82, 82, 79, 82, 58, 32, 78, 111, 32, 112, 97, 99, 107, 97, 103, 101, 32, 102, 105, 108, 101, 32, 105, 110, 32, 114, 101, 112, 111, 0
    str_124: db 91, 83, 80, 75, 93, 32, 73, 110, 115, 116, 97, 108, 108, 105, 110, 103, 32, 0
    str_125: db 72, 79, 77, 69, 0
    str_126: db 47, 46, 108, 111, 99, 97, 108, 47, 115, 108, 97, 109, 47, 98, 105, 110, 47, 0
    str_127: db 72, 79, 77, 69, 0
    str_128: db 47, 46, 108, 111, 99, 97, 108, 47, 115, 108, 97, 109, 47, 99, 97, 99, 104, 101, 47, 108, 111, 99, 97, 108, 47, 0
    str_129: db 72, 79, 77, 69, 0
    str_130: db 47, 46, 108, 111, 99, 97, 108, 47, 115, 108, 97, 109, 47, 99, 97, 99, 104, 101, 47, 108, 111, 99, 97, 108, 47, 0
    str_131: db 105, 110, 105, 116, 0
    str_132: db 105, 110, 115, 116, 97, 108, 108, 0
    str_133: db 114, 101, 109, 111, 118, 101, 0
    str_134: db 100, 101, 118, 101, 108, 111, 112, 0
section '.bss'
    args_ptr: rq 1
    ret_stack_rsp: rq 1
    ret_stack: rq 1024
    loc_stack_rsp: rq 1
    loc_stack: rq 512
    mem: rb 2530