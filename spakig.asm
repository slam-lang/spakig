format ELF64
section '.text' executable
public _start
class_bool:
class_cstr:
proc_cstr_len:
    pop rax
    push rax
    push rax
    pop rax
    xor rbx, rbx
    mov bl, [rax]
    push rbx
    push qword 0
    mov rcx, 0
    mov rdx, 1
    pop rax
    pop rbx
    cmp rax, rbx
    cmove rcx, rdx
    push rcx
    pop rbx
    test rbx, rbx
    jz .if_0
    pop rax
    push qword 0
    mov rax, [ret_stack_rsp]
    sub rax, 8
    mov qword [ret_stack_rsp], rax
    add rax, 8
    jmp qword [rax]
.if_0:
    pop rax
    push rax
    push rax
.do_0:
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
    jnz .do_0
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
    pop rax
    mov rax, [ret_stack_rsp]
    sub rax, 8
    mov qword [ret_stack_rsp], rax
    add rax, 8
    jmp qword [rax]
proc_cstr_print:
    pop rax
    push rax
    push rax
    mov rax, [ret_stack_rsp]
    add rax, 8
    mov qword [ret_stack_rsp], rax
    mov qword [rax], .call_0
    jmp proc_cstr_len
.call_0:
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
    pop rax
    mov rax, [ret_stack_rsp]
    sub rax, 8
    mov qword [ret_stack_rsp], rax
    add rax, 8
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
    pop rax
    mov rax, [ret_stack_rsp]
    sub rax, 8
    mov qword [ret_stack_rsp], rax
    add rax, 8
    jmp qword [rax]
proc_cstr_println:
    mov rax, [ret_stack_rsp]
    add rax, 8
    mov qword [ret_stack_rsp], rax
    mov qword [rax], .call_0
    jmp proc_cstr_print
.call_0:
    mov rax, [ret_stack_rsp]
    add rax, 8
    mov qword [ret_stack_rsp], rax
    mov qword [rax], .call_1
    jmp proc_cstr_cr
.call_1:
    mov rax, [ret_stack_rsp]
    sub rax, 8
    mov qword [ret_stack_rsp], rax
    add rax, 8
    jmp qword [rax]
proc_cstr_eq:
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
    mov rcx, 0
    mov rdx, 1
    pop rbx
    pop rax
    cmp rax, rbx
    cmovne rcx, rdx
    push rcx
    pop rbx
    test rbx, rbx
    jz .if_0
    pop rax
    pop rax
    push qword 0
    mov rax, [ret_stack_rsp]
    sub rax, 8
    mov qword [ret_stack_rsp], rax
    add rax, 8
    jmp qword [rax]
.if_0:
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
.do_0:
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
    mov rcx, 0
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
    mov rcx, 0
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
    jz .if_1
    pop rax
    pop rax
    pop rax
    pop rax
    push qword 1
    mov rax, [ret_stack_rsp]
    sub rax, 8
    mov qword [ret_stack_rsp], rax
    add rax, 8
    jmp qword [rax]
.if_1:
    pop rax
    pop rbx
    push rbx
    push rax
    push rbx
    push qword 0
    mov rcx, 0
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
    mov rcx, 0
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
    jz .if_2
    pop rax
    pop rax
    pop rax
    pop rax
    push qword 0
    mov rax, [ret_stack_rsp]
    sub rax, 8
    mov qword [ret_stack_rsp], rax
    add rax, 8
    jmp qword [rax]
.if_2:
    mov rcx, 0
    mov rdx, 1
    pop rax
    pop rbx
    cmp rax, rbx
    cmove rcx, rdx
    push rcx
    pop rbx
    test rbx, rbx
    jnz .do_0
    pop rax
    pop rax
    push qword 0
    mov rax, [ret_stack_rsp]
    sub rax, 8
    mov qword [ret_stack_rsp], rax
    add rax, 8
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
.do_0:
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
    pop rax
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
    mov rcx, 0
    mov rdx, 1
    pop rbx
    pop rax
    cmp rax, rbx
    cmovne rcx, rdx
    push rcx
    pop rbx
    test rbx, rbx
    jnz .do_0
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
    pop rax
    pop rax
    mov rax, [ret_stack_rsp]
    sub rax, 8
    mov qword [ret_stack_rsp], rax
    add rax, 8
    jmp qword [rax]
proc_cstr_last:
    push qword 1
    pop rbx
    pop rax
    sub rax, rbx
    push rax
.do_0:
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
    mov rcx, 0
    mov rdx, 1
    pop rbx
    pop rax
    cmp rax, rbx
    cmovne rcx, rdx
    push rcx
    pop rbx
    test rbx, rbx
    jnz .do_0
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
    sub rax, 8
    mov qword [ret_stack_rsp], rax
    add rax, 8
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
    mov rcx, 0
    mov rdx, 1
    pop rax
    pop rbx
    cmp rax, rbx
    cmove rcx, rdx
    push rcx
    pop rbx
    test rbx, rbx
    jz .if_0
    mov rax, [ret_stack_rsp]
    sub rax, 8
    mov qword [ret_stack_rsp], rax
    add rax, 8
    jmp qword [rax]
.if_0:
    pop rax
    push rax
    push rax
.do_0:
    pop rax
    push rax
    push rax
    push qword 0
    pop rbx
    pop rax
    mov byte [rax], bl
    push rax
    pop rax
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
    jnz .do_0
    pop rax
    mov rax, [ret_stack_rsp]
    sub rax, 8
    mov qword [ret_stack_rsp], rax
    add rax, 8
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
    mov rax, [ret_stack_rsp]
    add rax, 8
    mov qword [ret_stack_rsp], rax
    mov qword [rax], .call_0
    jmp proc_cstr_len
.call_0:
    pop rax
    pop rbx
    add rax, rbx
    push rax
    pop rax
    pop rbx
    push rax
    push rbx
    mov rax, [ret_stack_rsp]
    add rax, 8
    mov qword [ret_stack_rsp], rax
    mov qword [rax], .call_1
    jmp proc_cstr_cpy
.call_1:
    pop rax
    pop rax
    mov rax, [ret_stack_rsp]
    sub rax, 8
    mov qword [ret_stack_rsp], rax
    add rax, 8
    jmp qword [rax]
proc_cstr_isnum:
    push mem+0
    push qword 48'
    pop rbx
    pop rax
    mov byte [rax], bl
    push rax
    pop rax
    push mem+1
    push qword 57'
    pop rbx
    pop rax
    mov byte [rax], bl
    push rax
    pop rax
    pop rax
    push rax
    push rax
    pop rax
    push rax
    push rax
    mov rax, [ret_stack_rsp]
    add rax, 8
    mov qword [ret_stack_rsp], rax
    mov qword [rax], .call_0
    jmp proc_cstr_len
.call_0:
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
    push qword 98'
    mov rcx, 0
    mov rdx, 1
    pop rax
    pop rbx
    cmp rax, rbx
    cmove rcx, rdx
    push rcx
    pop rbx
    test rbx, rbx
    jz .if_0
    push mem+1
    push qword 49'
    pop rbx
    pop rax
    mov byte [rax], bl
    push rax
    pop rax
.if_0:
    pop rax
    push rax
    push rax
    push qword 104
    mov rcx, 0
    mov rdx, 1
    pop rax
    pop rbx
    cmp rax, rbx
    cmove rcx, rdx
    push rcx
    pop rbx
    test rbx, rbx
    jz .if_1
    push mem+1
    push qword 102
    pop rbx
    pop rax
    mov byte [rax], bl
    push rax
    pop rax
.if_1:
    pop rax
    pop rax
    push rax
    push rax
    pop rax
    xor rbx, rbx
    mov bl, [rax]
    push rbx
    push qword 45'
    mov rcx, 0
    mov rdx, 1
    pop rax
    pop rbx
    cmp rax, rbx
    cmove rcx, rdx
    push rcx
    pop rbx
    test rbx, rbx
    jz .if_2
    push qword 1
    pop rax
    pop rbx
    add rax, rbx
    push rax
.if_2:
.do_0:
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
    push mem+0
    pop rax
    xor rbx, rbx
    mov bl, [rax]
    push rbx
    mov rcx, 0
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
    push mem+1
    pop rax
    xor rbx, rbx
    mov bl, [rax]
    push rbx
    mov rcx, 0
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
    jz .if_3
    pop rax
    pop rax
    push rax
    push rax
    pop rax
    xor rbx, rbx
    mov bl, [rax]
    push rbx
    push qword 98'
    mov rcx, 0
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
    mov rcx, 0
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
    mov rax, [ret_stack_rsp]
    add rax, 8
    mov qword [ret_stack_rsp], rax
    mov qword [rax], .call_1
    jmp proc_cstr_len
.call_1:
    push qword 1
    mov rcx, 0
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
    pop rax
    mov rax, [ret_stack_rsp]
    sub rax, 8
    mov qword [ret_stack_rsp], rax
    add rax, 8
    jmp qword [rax]
.if_3:
    pop rax
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
    mov rcx, 0
    mov rdx, 1
    pop rbx
    pop rax
    cmp rax, rbx
    cmovne rcx, rdx
    push rcx
    pop rbx
    test rbx, rbx
    jnz .do_0
    pop rax
    push qword 1
    mov rax, [ret_stack_rsp]
    sub rax, 8
    mov qword [ret_stack_rsp], rax
    add rax, 8
    jmp qword [rax]
proc_cstr_tonum:
    pop rax
    push rax
    push rax
    mov rax, [ret_stack_rsp]
    add rax, 8
    mov qword [ret_stack_rsp], rax
    mov qword [rax], .call_0
    jmp proc_cstr_isnum
.call_0:
    pop rax
    xor rax, 1
    push rax
    pop rbx
    test rbx, rbx
    jz .if_0
    pop rax
    push rax
    push rax
    mov rax, [ret_stack_rsp]
    add rax, 8
    mov qword [ret_stack_rsp], rax
    mov qword [rax], .call_1
    jmp proc_cstr_println
.call_1:
    push str_1
    mov rax, [ret_stack_rsp]
    add rax, 8
    mov qword [ret_stack_rsp], rax
    mov qword [rax], .call_2
    jmp proc_cstr_println
.call_2:
    pop rax
    push qword -1
    mov rax, 60
    pop rdi
    syscall
.if_0:
    push mem+2
    push qword 10
    pop rbx
    pop rax
    mov byte [rax], bl
    push rax
    pop rax
    pop rax
    push rax
    push rax
    pop rax
    push rax
    push rax
    mov rax, [ret_stack_rsp]
    add rax, 8
    mov qword [ret_stack_rsp], rax
    mov qword [rax], .call_3
    jmp proc_cstr_len
.call_3:
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
    push qword 98'
    mov rcx, 0
    mov rdx, 1
    pop rax
    pop rbx
    cmp rax, rbx
    cmove rcx, rdx
    push rcx
    pop rbx
    test rbx, rbx
    jz .if_1
    push mem+2
    push qword 2
    pop rbx
    pop rax
    mov byte [rax], bl
    push rax
    pop rax
.if_1:
    pop rax
    push rax
    push rax
    pop rax
    xor rbx, rbx
    mov bl, [rax]
    push rbx
    push qword 104
    mov rcx, 0
    mov rdx, 1
    pop rax
    pop rbx
    cmp rax, rbx
    cmove rcx, rdx
    push rcx
    pop rbx
    test rbx, rbx
    jz .if_2
    push mem+2
    push qword 16
    pop rbx
    pop rax
    mov byte [rax], bl
    push rax
    pop rax
.if_2:
    pop rax
    push qword 0
.do_0:
    push mem+2
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
    push qword 70'
    push qword 1
    pop rax
    pop rbx
    add rax, rbx
    push rax
    mov rcx, 0
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
    push qword 65'
    push qword 1
    pop rbx
    pop rax
    sub rax, rbx
    push rax
    mov rcx, 0
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
    jz .if_3
    push qword 65'
    push qword 10
    pop rbx
    pop rax
    sub rax, rbx
    push rax
    pop rbx
    pop rax
    sub rax, rbx
    push rax
    push qword 48'
    pop rax
    pop rbx
    add rax, rbx
    push rax
.if_3:
    push qword 48'
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
    mov rcx, 0
    mov rdx, 1
    pop rbx
    pop rax
    cmp rax, rbx
    cmovne rcx, rdx
    push rcx
    pop rax
    pop rbx
    push rbx
    push rax
    push rbx
    push qword 98'
    mov rcx, 0
    mov rdx, 1
    pop rbx
    pop rax
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
    mov rcx, 0
    mov rdx, 1
    pop rbx
    pop rax
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
    pop rax
    pop rbx
    test rbx, rbx
    jnz .do_0
    pop rax
    pop rbx
    push rax
    push rbx
    pop rax
    mov rax, [ret_stack_rsp]
    sub rax, 8
    mov qword [ret_stack_rsp], rax
    add rax, 8
    jmp qword [rax]
proc_cstr_split:
    pop rax
    pop rbx
    push rax
    push rbx
    push mem+3
    pop rax
    pop rbx
    push rax
    push rbx
    pop rbx
    pop rax
    mov byte [rax], bl
    push rax
    pop rax
    push mem+4
    pop rax
    pop rbx
    push rax
    push rbx
    pop rbx
    pop rax
    mov qword [rax], rbx
    push rax
    pop rax
    push mem+4
    pop rax
    xor rbx, rbx
    mov rbx, [rax]
    push rbx
    mov rax, [ret_stack_rsp]
    add rax, 8
    mov qword [ret_stack_rsp], rax
    mov qword [rax], .call_0
    jmp proc_cstr_clear
.call_0:
.do_0:
    pop rax
    pop rbx
    push rbx
    push rax
    push rbx
    pop rax
    xor rbx, rbx
    mov bl, [rax]
    push rbx
    push mem+3
    pop rax
    xor rbx, rbx
    mov bl, [rax]
    push rbx
    mov rcx, 0
    mov rdx, 1
    pop rax
    pop rbx
    cmp rax, rbx
    cmove rcx, rdx
    push rcx
    pop rbx
    test rbx, rbx
    jz .if_0
    pop rax
    push qword 1
    pop rax
    pop rbx
    add rax, rbx
    push rax
    push mem+4
    pop rax
    xor rbx, rbx
    mov rbx, [rax]
    push rbx
    mov rax, [ret_stack_rsp]
    sub rax, 8
    mov qword [ret_stack_rsp], rax
    add rax, 8
    jmp qword [rax]
.if_0:
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
    pop rax
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
    xor rbx, rbx
    mov rbx, [rax]
    push rbx
    push qword 0
    mov rcx, 0
    mov rdx, 1
    pop rbx
    pop rax
    cmp rax, rbx
    cmovne rcx, rdx
    push rcx
    pop rbx
    test rbx, rbx
    jnz .do_0
    mov rax, [ret_stack_rsp]
    sub rax, 8
    mov qword [ret_stack_rsp], rax
    add rax, 8
    jmp qword [rax]
class_int:
proc_int_gettmp:
    push mem+20
    push qword 30
    pop rax
    pop rbx
    add rax, rbx
    push rax
    push mem+12
    pop rax
    xor rbx, rbx
    mov rbx, [rax]
    push rbx
    pop rbx
    pop rax
    sub rax, rbx
    push rax
    mov rax, [ret_stack_rsp]
    sub rax, 8
    mov qword [ret_stack_rsp], rax
    add rax, 8
    jmp qword [rax]
proc_int_inctmpidx:
    push mem+12
    push mem+12
    pop rax
    xor rbx, rbx
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
    pop rax
    mov rax, [ret_stack_rsp]
    sub rax, 8
    mov qword [ret_stack_rsp], rax
    add rax, 8
    jmp qword [rax]
proc_int_cstr:
.do_0:
    push qword 10
    xor rdx, rdx
    pop rbx
    pop rax
    idiv rbx
    push rax
    push rdx
    push qword 48'
    pop rax
    pop rbx
    add rax, rbx
    push rax
    mov rax, [ret_stack_rsp]
    add rax, 8
    mov qword [ret_stack_rsp], rax
    mov qword [rax], .call_0
    jmp proc_int_gettmp
.call_0:
    pop rax
    pop rbx
    push rax
    push rbx
    pop rbx
    pop rax
    mov byte [rax], bl
    push rax
    pop rax
    mov rax, [ret_stack_rsp]
    add rax, 8
    mov qword [ret_stack_rsp], rax
    mov qword [rax], .call_1
    jmp proc_int_inctmpidx
.call_1:
    pop rax
    push rax
    push rax
    push qword 0
    mov rcx, 0
    mov rdx, 1
    pop rbx
    pop rax
    cmp rax, rbx
    cmovne rcx, rdx
    push rcx
    pop rbx
    test rbx, rbx
    jnz .do_0
    pop rax
    mov rax, [ret_stack_rsp]
    add rax, 8
    mov qword [ret_stack_rsp], rax
    mov qword [rax], .call_2
    jmp proc_int_gettmp
.call_2:
    push qword 1
    pop rax
    pop rbx
    add rax, rbx
    push rax
    push mem+12
    push qword 0
    pop rbx
    pop rax
    mov byte [rax], bl
    push rax
    pop rax
    mov rax, [ret_stack_rsp]
    sub rax, 8
    mov qword [ret_stack_rsp], rax
    add rax, 8
    jmp qword [rax]
proc_int_cstrhex:
.do_0:
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
    mov rcx, 0
    mov rdx, 1
    pop rbx
    pop rax
    cmp rax, rbx
    cmovg rcx, rdx
    push rcx
    pop rbx
    test rbx, rbx
    jz .if_0
    push qword 97'
    push qword 10
    pop rbx
    pop rax
    sub rax, rbx
    push rax
    pop rax
    pop rbx
    add rax, rbx
    push rax
.if_0:
    pop rax
    push rax
    push rax
    push qword 10
    mov rcx, 0
    mov rdx, 1
    pop rbx
    pop rax
    cmp rax, rbx
    cmovl rcx, rdx
    push rcx
    pop rbx
    test rbx, rbx
    jz .if_1
    push qword 48'
    pop rax
    pop rbx
    add rax, rbx
    push rax
.if_1:
    mov rax, [ret_stack_rsp]
    add rax, 8
    mov qword [ret_stack_rsp], rax
    mov qword [rax], .call_0
    jmp proc_int_gettmp
.call_0:
    pop rax
    pop rbx
    push rax
    push rbx
    pop rbx
    pop rax
    mov byte [rax], bl
    push rax
    pop rax
    mov rax, [ret_stack_rsp]
    add rax, 8
    mov qword [ret_stack_rsp], rax
    mov qword [rax], .call_1
    jmp proc_int_inctmpidx
.call_1:
    pop rax
    push rax
    push rax
    push qword 0
    mov rcx, 0
    mov rdx, 1
    pop rbx
    pop rax
    cmp rax, rbx
    cmovne rcx, rdx
    push rcx
    pop rbx
    test rbx, rbx
    jnz .do_0
    pop rax
    mov rax, [ret_stack_rsp]
    add rax, 8
    mov qword [ret_stack_rsp], rax
    mov qword [rax], .call_2
    jmp proc_int_gettmp
.call_2:
    push qword 36'
    pop rbx
    pop rax
    mov byte [rax], bl
    push rax
    pop rax
    mov rax, [ret_stack_rsp]
    add rax, 8
    mov qword [ret_stack_rsp], rax
    mov qword [rax], .call_3
    jmp proc_int_inctmpidx
.call_3:
    mov rax, [ret_stack_rsp]
    add rax, 8
    mov qword [ret_stack_rsp], rax
    mov qword [rax], .call_4
    jmp proc_int_gettmp
.call_4:
    push qword 1
    pop rax
    pop rbx
    add rax, rbx
    push rax
    push mem+12
    push qword 0
    pop rbx
    pop rax
    mov byte [rax], bl
    push rax
    pop rax
    mov rax, [ret_stack_rsp]
    sub rax, 8
    mov qword [ret_stack_rsp], rax
    add rax, 8
    jmp qword [rax]
proc_int_print:
    mov rax, [ret_stack_rsp]
    add rax, 8
    mov qword [ret_stack_rsp], rax
    mov qword [rax], .call_0
    jmp proc_int_cstr
.call_0:
    mov rax, [ret_stack_rsp]
    add rax, 8
    mov qword [ret_stack_rsp], rax
    mov qword [rax], .call_1
    jmp proc_cstr_print
.call_1:
    mov rax, [ret_stack_rsp]
    add rax, 8
    mov qword [ret_stack_rsp], rax
    mov qword [rax], .call_2
    jmp proc_cstr_cr
.call_2:
    push mem+12
    push qword 0
    pop rbx
    pop rax
    mov byte [rax], bl
    push rax
    pop rax
    mov rax, [ret_stack_rsp]
    sub rax, 8
    mov qword [ret_stack_rsp], rax
    add rax, 8
    jmp qword [rax]
proc_int_printhex:
.do_0:
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
    mov rcx, 0
    mov rdx, 1
    pop rbx
    pop rax
    cmp rax, rbx
    cmovg rcx, rdx
    push rcx
    pop rbx
    test rbx, rbx
    jz .if_0
    push qword 97'
    push qword 10
    pop rbx
    pop rax
    sub rax, rbx
    push rax
    pop rax
    pop rbx
    add rax, rbx
    push rax
.if_0:
    pop rax
    push rax
    push rax
    push qword 10
    mov rcx, 0
    mov rdx, 1
    pop rbx
    pop rax
    cmp rax, rbx
    cmovl rcx, rdx
    push rcx
    pop rbx
    test rbx, rbx
    jz .if_1
    push qword 48'
    pop rax
    pop rbx
    add rax, rbx
    push rax
.if_1:
    mov rax, [ret_stack_rsp]
    add rax, 8
    mov qword [ret_stack_rsp], rax
    mov qword [rax], .call_0
    jmp proc_int_gettmp
.call_0:
    pop rax
    pop rbx
    push rax
    push rbx
    pop rbx
    pop rax
    mov byte [rax], bl
    push rax
    pop rax
    mov rax, [ret_stack_rsp]
    add rax, 8
    mov qword [ret_stack_rsp], rax
    mov qword [rax], .call_1
    jmp proc_int_inctmpidx
.call_1:
    pop rax
    push rax
    push rax
    push qword 0
    mov rcx, 0
    mov rdx, 1
    pop rbx
    pop rax
    cmp rax, rbx
    cmovne rcx, rdx
    push rcx
    pop rbx
    test rbx, rbx
    jnz .do_0
    pop rax
    mov rax, [ret_stack_rsp]
    add rax, 8
    mov qword [ret_stack_rsp], rax
    mov qword [rax], .call_2
    jmp proc_int_gettmp
.call_2:
    push qword 120
    pop rbx
    pop rax
    mov byte [rax], bl
    push rax
    pop rax
    mov rax, [ret_stack_rsp]
    add rax, 8
    mov qword [ret_stack_rsp], rax
    mov qword [rax], .call_3
    jmp proc_int_inctmpidx
.call_3:
    mov rax, [ret_stack_rsp]
    add rax, 8
    mov qword [ret_stack_rsp], rax
    mov qword [rax], .call_4
    jmp proc_int_gettmp
.call_4:
    push qword 48'
    pop rbx
    pop rax
    mov byte [rax], bl
    push rax
    pop rax
    mov rax, [ret_stack_rsp]
    add rax, 8
    mov qword [ret_stack_rsp], rax
    mov qword [rax], .call_5
    jmp proc_int_inctmpidx
.call_5:
    mov rax, [ret_stack_rsp]
    add rax, 8
    mov qword [ret_stack_rsp], rax
    mov qword [rax], .call_6
    jmp proc_int_gettmp
.call_6:
    push qword 1
    pop rax
    pop rbx
    add rax, rbx
    push rax
    mov rax, [ret_stack_rsp]
    add rax, 8
    mov qword [ret_stack_rsp], rax
    mov qword [rax], .call_7
    jmp proc_cstr_print
.call_7:
    push mem+12
    push qword 0
    pop rbx
    pop rax
    mov byte [rax], bl
    push rax
    pop rax
    mov rax, [ret_stack_rsp]
    add rax, 8
    mov qword [ret_stack_rsp], rax
    mov qword [rax], .call_8
    jmp proc_cstr_cr
.call_8:
    mov rax, [ret_stack_rsp]
    sub rax, 8
    mov qword [ret_stack_rsp], rax
    add rax, 8
    jmp qword [rax]
proc_slash:
    xor rdx, rdx
    pop rbx
    pop rax
    idiv rbx
    push rax
    push rdx
    pop rax
    mov rax, [ret_stack_rsp]
    sub rax, 8
    mov qword [ret_stack_rsp], rax
    add rax, 8
    jmp qword [rax]
class_heapentry:
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
    push rax
    pop rax
    xor rbx, rbx
    mov rbx, [rax]
    push rbx
    mov rcx, 0
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
    mov rcx, 0
    mov rdx, 1
    pop rbx
    pop rax
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
    pop rax
    mov rax, [ret_stack_rsp]
    sub rax, 8
    mov qword [ret_stack_rsp], rax
    add rax, 8
    jmp qword [rax]
class_mem:
proc_mem_cpy:
    push mem+52
    pop rax
    pop rbx
    push rax
    push rbx
    pop rbx
    pop rax
    mov qword [rax], rbx
    push rax
    pop rax
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
    mov rcx, 0
    mov rdx, 1
    pop rax
    pop rbx
    cmp rax, rbx
    cmove rcx, rdx
    push rcx
    pop rbx
    test rbx, rbx
    jz .if_0
    pop rax
    pop rax
    mov rax, [ret_stack_rsp]
    sub rax, 8
    mov qword [ret_stack_rsp], rax
    add rax, 8
    jmp qword [rax]
.if_0:
.do_0:
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
    pop rax
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
    push mem+52
    pop rax
    push rax
    push rax
    pop rax
    xor rbx, rbx
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
    pop rax
    push mem+52
    pop rax
    xor rbx, rbx
    mov rbx, [rax]
    push rbx
    push qword 0
    mov rcx, 0
    mov rdx, 1
    pop rbx
    pop rax
    cmp rax, rbx
    cmovg rcx, rdx
    push rcx
    pop rbx
    test rbx, rbx
    jnz .do_0
    pop rax
    pop rax
    mov rax, [ret_stack_rsp]
    sub rax, 8
    mov qword [ret_stack_rsp], rax
    add rax, 8
    jmp qword [rax]
proc_mem_eq:
    pop rax
    pop rbx
    push rax
    push rbx
    push mem+52
    pop rax
    pop rbx
    push rax
    push rbx
    pop rbx
    pop rax
    mov qword [rax], rbx
    push rax
    pop rax
.do_0:
    pop rax
    pop rbx
    push rbx
    push rax
    push rbx
    pop rax
    xor rbx, rbx
    mov bl, [rax]
    push rbx
    push mem+52
    pop rax
    xor rbx, rbx
    mov rbx, [rax]
    push rbx
    pop rax
    xor rbx, rbx
    mov bl, [rax]
    push rbx
    mov rcx, 0
    mov rdx, 1
    pop rbx
    pop rax
    cmp rax, rbx
    cmovne rcx, rdx
    push rcx
    pop rbx
    test rbx, rbx
    jz .if_0
    pop rax
    pop rax
    push qword 0
    mov rax, [ret_stack_rsp]
    sub rax, 8
    mov qword [ret_stack_rsp], rax
    add rax, 8
    jmp qword [rax]
.if_0:
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
    push mem+52
    pop rax
    push rax
    push rax
    pop rax
    xor rbx, rbx
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
    pop rax
    pop rax
    push rax
    push rax
    push qword 0
    mov rcx, 0
    mov rdx, 1
    pop rbx
    pop rax
    cmp rax, rbx
    cmovg rcx, rdx
    push rcx
    pop rbx
    test rbx, rbx
    jnz .do_0
    pop rax
    pop rax
    push qword 1
    mov rax, [ret_stack_rsp]
    sub rax, 8
    mov qword [ret_stack_rsp], rax
    add rax, 8
    jmp qword [rax]
proc_mem_zero:
    push mem+52
    pop rax
    pop rbx
    push rax
    push rbx
    pop rbx
    pop rax
    mov qword [rax], rbx
    push rax
    pop rax
.do_0:
    pop rax
    push rax
    push rax
    push qword 0
    pop rbx
    pop rax
    mov byte [rax], bl
    push rax
    pop rax
    push qword 1
    pop rax
    pop rbx
    add rax, rbx
    push rax
    push mem+52
    push mem+52
    pop rax
    xor rbx, rbx
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
    pop rax
    push mem+52
    pop rax
    xor rbx, rbx
    mov rbx, [rax]
    push rbx
    push qword 0
    mov rcx, 0
    mov rdx, 1
    pop rbx
    pop rax
    cmp rax, rbx
    cmovg rcx, rdx
    push rcx
    pop rbx
    test rbx, rbx
    jnz .do_0
    pop rax
    mov rax, [ret_stack_rsp]
    sub rax, 8
    mov qword [ret_stack_rsp], rax
    add rax, 8
    jmp qword [rax]
class_heap:
proc_heap_allocpage:
    push mem+68
    pop rax
    xor rbx, rbx
    mov rbx, [rax]
    push rbx
    push qword 64000
    pop rax
    pop rbx
    add rax, rbx
    push rax
    pop rax
    push rax
    push rax
    push mem+68
    pop rax
    pop rbx
    push rax
    push rbx
    pop rbx
    pop rax
    mov qword [rax], rbx
    push rax
    pop rax
    push qword 12
    pop rax
    pop rdi
    syscall
    push rax
    push qword 0
    mov rcx, 0
    mov rdx, 1
    pop rbx
    pop rax
    cmp rax, rbx
    cmovl rcx, rdx
    push rcx
    pop rbx
    test rbx, rbx
    jz .if_0
    push str_2
    mov rax, [ret_stack_rsp]
    add rax, 8
    mov qword [ret_stack_rsp], rax
    mov qword [rax], .call_0
    jmp proc_cstr_println
.call_0:
.if_0:
    mov rax, [ret_stack_rsp]
    sub rax, 8
    mov qword [ret_stack_rsp], rax
    add rax, 8
    jmp qword [rax]
proc_heap_init:
    push mem+92
    pop rax
    xor rbx, rbx
    mov bl, [rax]
    push rbx
    pop rbx
    test rbx, rbx
    jz .if_0
    mov rax, [ret_stack_rsp]
    sub rax, 8
    mov qword [ret_stack_rsp], rax
    add rax, 8
    jmp qword [rax]
.if_0:
    push mem+92
    push qword 1
    pop rbx
    pop rax
    mov byte [rax], bl
    push rax
    pop rax
    push mem+60
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
    pop rax
    push mem+68
    push mem+60
    pop rax
    xor rbx, rbx
    mov rbx, [rax]
    push rbx
    pop rbx
    pop rax
    mov qword [rax], rbx
    push rax
    pop rax
    mov rax, [ret_stack_rsp]
    add rax, 8
    mov qword [ret_stack_rsp], rax
    mov qword [rax], .call_0
    jmp proc_heap_allocpage
.call_0:
    mov rax, [ret_stack_rsp]
    sub rax, 8
    mov qword [ret_stack_rsp], rax
    add rax, 8
    jmp qword [rax]
proc_heap_map:
    push mem+84
    push qword 0
    pop rbx
    pop rax
    mov qword [rax], rbx
    push rax
    pop rax
    push str_3
    mov rax, [ret_stack_rsp]
    add rax, 8
    mov qword [ret_stack_rsp], rax
    mov qword [rax], .call_0
    jmp proc_cstr_println
.call_0:
    push str_4
    mov rax, [ret_stack_rsp]
    add rax, 8
    mov qword [ret_stack_rsp], rax
    mov qword [rax], .call_1
    jmp proc_cstr_println
.call_1:
    push str_5
    mov rax, [ret_stack_rsp]
    add rax, 8
    mov qword [ret_stack_rsp], rax
    mov qword [rax], .call_2
    jmp proc_cstr_print
.call_2:
    push mem+68
    pop rax
    xor rbx, rbx
    mov rbx, [rax]
    push rbx
    push mem+60
    pop rax
    xor rbx, rbx
    mov rbx, [rax]
    push rbx
    pop rbx
    pop rax
    sub rax, rbx
    push rax
    mov rax, [ret_stack_rsp]
    add rax, 8
    mov qword [ret_stack_rsp], rax
    mov qword [rax], .call_3
    jmp proc_int_print
.call_3:
    push mem+60
    pop rax
    xor rbx, rbx
    mov rbx, [rax]
    push rbx
    push qword 128
    pop rbx
    pop rax
    sub rax, rbx
    push rax
.do_0:
    push qword 128
    pop rax
    pop rbx
    add rax, rbx
    push rax
    pop rax
    push rax
    push rax
    mov rax, [ret_stack_rsp]
    add rax, 8
    mov qword [ret_stack_rsp], rax
    mov qword [rax], .call_4
    jmp proc_heapentry_isentry
.call_4:
    pop rbx
    test rbx, rbx
    jz .if_0
    push str_6
    mov rax, [ret_stack_rsp]
    add rax, 8
    mov qword [ret_stack_rsp], rax
    mov qword [rax], .call_5
    jmp proc_cstr_println
.call_5:
    push str_7
    mov rax, [ret_stack_rsp]
    add rax, 8
    mov qword [ret_stack_rsp], rax
    mov qword [rax], .call_6
    jmp proc_cstr_print
.call_6:
    pop rax
    push rax
    push rax
    mov rax, [ret_stack_rsp]
    add rax, 8
    mov qword [ret_stack_rsp], rax
    mov qword [rax], .call_7
    jmp proc_int_printhex
.call_7:
    push str_8
    mov rax, [ret_stack_rsp]
    add rax, 8
    mov qword [ret_stack_rsp], rax
    mov qword [rax], .call_8
    jmp proc_cstr_print
.call_8:
    pop rax
    push rax
    push rax
    push qword 9
    pop rax
    pop rbx
    add rax, rbx
    push rax
    pop rax
    xor rbx, rbx
    mov rbx, [rax]
    push rbx
    pop rax
    push rax
    push rax
    push mem+84
    pop rax
    xor rbx, rbx
    mov rbx, [rax]
    push rbx
    pop rax
    pop rbx
    add rax, rbx
    push rax
    push mem+84
    pop rax
    pop rbx
    push rax
    push rbx
    pop rbx
    pop rax
    mov qword [rax], rbx
    push rax
    pop rax
    pop rax
    push rax
    push rax
    mov rax, [ret_stack_rsp]
    add rax, 8
    mov qword [ret_stack_rsp], rax
    mov qword [rax], .call_9
    jmp proc_int_print
.call_9:
    pop rax
    pop rbx
    add rax, rbx
    push rax
    push qword 128
    pop rbx
    pop rax
    sub rax, rbx
    push rax
.if_0:
    pop rax
    push rax
    push rax
    push mem+68
    pop rax
    xor rbx, rbx
    mov rbx, [rax]
    push rbx
    mov rcx, 0
    mov rdx, 1
    pop rbx
    pop rax
    cmp rax, rbx
    cmovl rcx, rdx
    push rcx
    pop rbx
    test rbx, rbx
    jnz .do_0
    pop rax
    push str_9
    mov rax, [ret_stack_rsp]
    add rax, 8
    mov qword [ret_stack_rsp], rax
    mov qword [rax], .call_10
    jmp proc_cstr_print
.call_10:
    push mem+84
    pop rax
    xor rbx, rbx
    mov rbx, [rax]
    push rbx
    mov rax, [ret_stack_rsp]
    add rax, 8
    mov qword [ret_stack_rsp], rax
    mov qword [rax], .call_11
    jmp proc_int_print
.call_11:
    mov rax, [ret_stack_rsp]
    add rax, 8
    mov qword [ret_stack_rsp], rax
    mov qword [rax], .call_12
    jmp proc_cstr_cr
.call_12:
    mov rax, [ret_stack_rsp]
    sub rax, 8
    mov qword [ret_stack_rsp], rax
    add rax, 8
    jmp qword [rax]
proc_heap_alloc:
    mov rax, [ret_stack_rsp]
    add rax, 8
    mov qword [ret_stack_rsp], rax
    mov qword [rax], .call_0
    jmp proc_heap_init
.call_0:
    push qword 17
    pop rax
    pop rbx
    add rax, rbx
    push rax
    pop rax
    push rax
    push rax
    push qword 128
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
    pop rax
    pop rbx
    pop rax
    sub rax, rbx
    push rax
    push qword 128
    pop rax
    pop rbx
    add rax, rbx
    push rax
    push mem+76
    pop rax
    pop rbx
    push rax
    push rbx
    pop rbx
    pop rax
    mov qword [rax], rbx
    push rax
    pop rax
    push qword 0
    push mem+60
    pop rax
    xor rbx, rbx
    mov rbx, [rax]
    push rbx
    pop rax
    pop rbx
    push rax
    push rbx
    push qword 128
    pop rbx
    pop rax
    sub rax, rbx
    push rax
    pop rax
    pop rbx
    push rax
    push rbx
    push qword 128
    pop rbx
    pop rax
    sub rax, rbx
    push rax
.do_0:
    pop rax
    pop rbx
    push rax
    push rbx
    push qword 128
    pop rax
    pop rbx
    add rax, rbx
    push rax
    pop rax
    pop rbx
    push rax
    push rbx
    push qword 128
    pop rax
    pop rbx
    add rax, rbx
    push rax
    pop rax
    push rax
    push rax
    push mem+68
    pop rax
    xor rbx, rbx
    mov rbx, [rax]
    push rbx
    mov rcx, 0
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
    jz .if_0
    mov rax, [ret_stack_rsp]
    add rax, 8
    mov qword [ret_stack_rsp], rax
    mov qword [rax], .call_1
    jmp proc_heap_allocpage
.call_1:
.if_0:
    pop rax
    push rax
    push rax
    mov rax, [ret_stack_rsp]
    add rax, 8
    mov qword [ret_stack_rsp], rax
    mov qword [rax], .call_2
    jmp proc_heapentry_isentry
.call_2:
    pop rbx
    test rbx, rbx
    jz .if_1
    pop rax
    push rax
    push rax
    push qword 9
    pop rax
    pop rbx
    add rax, rbx
    push rax
    pop rax
    xor rbx, rbx
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
    pop rax
    push qword 0
    push qword 128
    pop rbx
    pop rax
    sub rax, rbx
    push rax
    pop rax
    pop rbx
    push rax
    push rbx
    push qword 128
    pop rbx
    pop rax
    sub rax, rbx
    push rax
.if_1:
    pop rax
    pop rbx
    push rbx
    push rax
    push rbx
    push mem+76
    pop rax
    xor rbx, rbx
    mov rbx, [rax]
    push rbx
    mov rcx, 0
    mov rdx, 1
    pop rbx
    pop rax
    cmp rax, rbx
    cmovl rcx, rdx
    push rcx
    pop rbx
    test rbx, rbx
    jnz .do_0
    pop rax
    pop rbx
    push rax
    push rbx
    pop rax
    push mem+76
    pop rax
    xor rbx, rbx
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
    push mem+76
    pop rax
    xor rbx, rbx
    mov rbx, [rax]
    push rbx
    pop rbx
    pop rax
    mov qword [rax], rbx
    push rax
    pop rax
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
    push rax
    pop rax
    pop rbx
    push rax
    push rbx
    pop rbx
    pop rax
    mov qword [rax], rbx
    push rax
    pop rax
    pop rax
    push rax
    push rax
    push qword 8
    pop rax
    pop rbx
    add rax, rbx
    push rax
    push qword 1
    pop rbx
    pop rax
    mov byte [rax], bl
    push rax
    pop rax
    push qword 17
    pop rax
    pop rbx
    add rax, rbx
    push rax
    mov rax, [ret_stack_rsp]
    sub rax, 8
    mov qword [ret_stack_rsp], rax
    add rax, 8
    jmp qword [rax]
proc_heap_zalloc:
    mov rax, [ret_stack_rsp]
    add rax, 8
    mov qword [ret_stack_rsp], rax
    mov qword [rax], .call_0
    jmp proc_heap_init
.call_0:
    mov rax, [ret_stack_rsp]
    add rax, 8
    mov qword [ret_stack_rsp], rax
    mov qword [rax], .call_1
    jmp proc_heap_alloc
.call_1:
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
    xor rbx, rbx
    mov rbx, [rax]
    push rbx
    mov rax, [ret_stack_rsp]
    add rax, 8
    mov qword [ret_stack_rsp], rax
    mov qword [rax], .call_2
    jmp proc_mem_zero
.call_2:
    mov rax, [ret_stack_rsp]
    sub rax, 8
    mov qword [ret_stack_rsp], rax
    add rax, 8
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
    mov rax, [ret_stack_rsp]
    add rax, 8
    mov qword [ret_stack_rsp], rax
    mov qword [rax], .call_0
    jmp proc_heapentry_isentry
.call_0:
    pop rax
    xor rax, 1
    push rax
    pop rbx
    test rbx, rbx
    jz .if_0
    push str_10
    mov rax, [ret_stack_rsp]
    add rax, 8
    mov qword [ret_stack_rsp], rax
    mov qword [rax], .call_1
    jmp proc_cstr_println
.call_1:
    mov rax, [ret_stack_rsp]
    add rax, 8
    mov qword [ret_stack_rsp], rax
    mov qword [rax], .call_2
    jmp proc_int_printhex
.call_2:
    mov rax, [ret_stack_rsp]
    sub rax, 8
    mov qword [ret_stack_rsp], rax
    add rax, 8
    jmp qword [rax]
.if_0:
    push qword 8
    pop rax
    pop rbx
    add rax, rbx
    push rax
    push qword 0
    pop rbx
    pop rax
    mov byte [rax], bl
    push rax
    pop rax
    mov rax, [ret_stack_rsp]
    sub rax, 8
    mov qword [ret_stack_rsp], rax
    add rax, 8
    jmp qword [rax]
proc_heap_tryfree:
    push qword 17
    pop rbx
    pop rax
    sub rax, rbx
    push rax
    pop rax
    push rax
    push rax
    mov rax, [ret_stack_rsp]
    add rax, 8
    mov qword [ret_stack_rsp], rax
    mov qword [rax], .call_0
    jmp proc_heapentry_isentry
.call_0:
    pop rax
    xor rax, 1
    push rax
    pop rbx
    test rbx, rbx
    jz .if_0
    pop rax
    mov rax, [ret_stack_rsp]
    sub rax, 8
    mov qword [ret_stack_rsp], rax
    add rax, 8
    jmp qword [rax]
.if_0:
    push qword 8
    pop rax
    pop rbx
    add rax, rbx
    push rax
    push qword 0
    pop rbx
    pop rax
    mov byte [rax], bl
    push rax
    pop rax
    mov rax, [ret_stack_rsp]
    sub rax, 8
    mov qword [ret_stack_rsp], rax
    add rax, 8
    jmp qword [rax]
proc_heap_realloc:
    push qword 17
    pop rax
    pop rbx
    add rax, rbx
    push rax
    pop rax
    push rax
    push rax
    push qword 128
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
    pop rax
    pop rbx
    pop rax
    sub rax, rbx
    push rax
    push qword 128
    pop rax
    pop rbx
    add rax, rbx
    push rax
    push mem+76
    pop rax
    pop rbx
    push rax
    push rbx
    pop rbx
    pop rax
    mov qword [rax], rbx
    push rax
    pop rax
    pop rax
    push rax
    push rax
    push qword 17
    pop rbx
    pop rax
    sub rax, rbx
    push rax
    mov rax, [ret_stack_rsp]
    add rax, 8
    mov qword [ret_stack_rsp], rax
    mov qword [rax], .call_0
    jmp proc_heapentry_isentry
.call_0:
    pop rax
    xor rax, 1
    push rax
    pop rbx
    test rbx, rbx
    jz .if_0
    push str_11
    mov rax, [ret_stack_rsp]
    add rax, 8
    mov qword [ret_stack_rsp], rax
    mov qword [rax], .call_1
    jmp proc_cstr_println
.call_1:
    pop rax
    push rax
    push rax
    push qword 17
    pop rbx
    pop rax
    sub rax, rbx
    push rax
    mov rax, [ret_stack_rsp]
    add rax, 8
    mov qword [ret_stack_rsp], rax
    mov qword [rax], .call_2
    jmp proc_int_printhex
.call_2:
    mov rax, [ret_stack_rsp]
    sub rax, 8
    mov qword [ret_stack_rsp], rax
    add rax, 8
    jmp qword [rax]
.if_0:
    pop rax
    push rax
    push rax
    mov rax, [ret_stack_rsp]
    add rax, 8
    mov qword [ret_stack_rsp], rax
    mov qword [rax], .call_3
    jmp proc_heap_free
.call_3:
    push mem+93
    push mem+76
    pop rax
    xor rbx, rbx
    mov rbx, [rax]
    push rbx
    mov rax, [ret_stack_rsp]
    add rax, 8
    mov qword [ret_stack_rsp], rax
    mov qword [rax], .call_4
    jmp proc_heap_alloc
.call_4:
    pop rbx
    pop rax
    mov qword [rax], rbx
    push rax
    pop rax
    push mem+93
    pop rax
    xor rbx, rbx
    mov rbx, [rax]
    push rbx
    pop rax
    pop rbx
    push rax
    push rbx
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
    xor rbx, rbx
    mov rbx, [rax]
    push rbx
    push qword 17
    pop rbx
    pop rax
    sub rax, rbx
    push rax
    mov rax, [ret_stack_rsp]
    add rax, 8
    mov qword [ret_stack_rsp], rax
    mov qword [rax], .call_5
    jmp proc_mem_cpy
.call_5:
    push mem+93
    pop rax
    xor rbx, rbx
    mov rbx, [rax]
    push rbx
    mov rax, [ret_stack_rsp]
    sub rax, 8
    mov qword [ret_stack_rsp], rax
    add rax, 8
    jmp qword [rax]
class_opt:
class_log:
proc_log_level:
    push mem+117
    push qword 0
    pop rax
    pop rbx
    add rax, rbx
    push rax
    pop rax
    pop rbx
    push rax
    push rbx
    pop rbx
    pop rax
    mov qword [rax], rbx
    push rax
    pop rax
    push mem+117
    push qword 8
    pop rax
    pop rbx
    add rax, rbx
    push rax
    pop rax
    pop rbx
    push rax
    push rbx
    pop rbx
    pop rax
    mov byte [rax], bl
    push rax
    pop rax
    mov rax, [ret_stack_rsp]
    sub rax, 8
    mov qword [ret_stack_rsp], rax
    add rax, 8
    jmp qword [rax]
proc_log_msg:
    push mem+117
    push qword 13
    pop rax
    pop rbx
    add rax, rbx
    push rax
    mov rax, [ret_stack_rsp]
    add rax, 8
    mov qword [ret_stack_rsp], rax
    mov qword [rax], .call_0
    jmp proc_cstr_clear
.call_0:
    pop rax
    pop rbx
    push rax
    push rbx
    mov rax, [ret_stack_rsp]
    add rax, 8
    mov qword [ret_stack_rsp], rax
    mov qword [rax], .call_1
    jmp proc_cstr_cpy
.call_1:
    pop rax
    pop rax
    push mem+117
    push qword 9
    pop rax
    pop rbx
    add rax, rbx
    push rax
    pop rax
    pop rbx
    push rax
    push rbx
    push qword 3
    mov rax, [ret_stack_rsp]
    add rax, 8
    mov qword [ret_stack_rsp], rax
    mov qword [rax], .call_2
    jmp proc_mem_cpy
.call_2:
    mov rax, [ret_stack_rsp]
    sub rax, 8
    mov qword [ret_stack_rsp], rax
    add rax, 8
    jmp qword [rax]
proc_log_cat:
    push mem+117
    push qword 13
    pop rax
    pop rbx
    add rax, rbx
    push rax
    pop rax
    pop rbx
    push rax
    push rbx
    mov rax, [ret_stack_rsp]
    add rax, 8
    mov qword [ret_stack_rsp], rax
    mov qword [rax], .call_0
    jmp proc_cstr_cat
.call_0:
    pop rax
    mov rax, [ret_stack_rsp]
    sub rax, 8
    mov qword [ret_stack_rsp], rax
    add rax, 8
    jmp qword [rax]
proc_log_log:
    push mem+117
    push qword 8
    pop rax
    pop rbx
    add rax, rbx
    push rax
    pop rax
    xor rbx, rbx
    mov bl, [rax]
    push rbx
    pop rax
    push rax
    push rax
    push qword 1
    mov rcx, 0
    mov rdx, 1
    pop rax
    pop rbx
    cmp rax, rbx
    cmove rcx, rdx
    push rcx
    pop rbx
    test rbx, rbx
    jz .if_0
    push str_12
    mov rax, [ret_stack_rsp]
    add rax, 8
    mov qword [ret_stack_rsp], rax
    mov qword [rax], .call_0
    jmp proc_cstr_print
.call_0:
    push str_13
    mov rax, [ret_stack_rsp]
    add rax, 8
    mov qword [ret_stack_rsp], rax
    mov qword [rax], .call_1
    jmp proc_cstr_print
.call_1:
    push mem+117
    push qword 9
    pop rax
    pop rbx
    add rax, rbx
    push rax
    mov rax, [ret_stack_rsp]
    add rax, 8
    mov qword [ret_stack_rsp], rax
    mov qword [rax], .call_2
    jmp proc_cstr_print
.call_2:
    push str_14
    mov rax, [ret_stack_rsp]
    add rax, 8
    mov qword [ret_stack_rsp], rax
    mov qword [rax], .call_3
    jmp proc_cstr_print
.call_3:
    push mem+117
    push qword 13
    pop rax
    pop rbx
    add rax, rbx
    push rax
    mov rax, [ret_stack_rsp]
    add rax, 8
    mov qword [ret_stack_rsp], rax
    mov qword [rax], .call_4
    jmp proc_cstr_print
.call_4:
    push str_15
    mov rax, [ret_stack_rsp]
    add rax, 8
    mov qword [ret_stack_rsp], rax
    mov qword [rax], .call_5
    jmp proc_cstr_println
.call_5:
    pop rax
    mov rax, [ret_stack_rsp]
    sub rax, 8
    mov qword [ret_stack_rsp], rax
    add rax, 8
    jmp qword [rax]
.if_0:
    pop rax
    push rax
    push rax
    push qword 2
    mov rcx, 0
    mov rdx, 1
    pop rax
    pop rbx
    cmp rax, rbx
    cmove rcx, rdx
    push rcx
    pop rbx
    test rbx, rbx
    jz .if_1
    push str_16
    mov rax, [ret_stack_rsp]
    add rax, 8
    mov qword [ret_stack_rsp], rax
    mov qword [rax], .call_6
    jmp proc_cstr_print
.call_6:
    push str_17
    mov rax, [ret_stack_rsp]
    add rax, 8
    mov qword [ret_stack_rsp], rax
    mov qword [rax], .call_7
    jmp proc_cstr_print
.call_7:
    push mem+117
    push qword 9
    pop rax
    pop rbx
    add rax, rbx
    push rax
    mov rax, [ret_stack_rsp]
    add rax, 8
    mov qword [ret_stack_rsp], rax
    mov qword [rax], .call_8
    jmp proc_cstr_print
.call_8:
    push str_18
    mov rax, [ret_stack_rsp]
    add rax, 8
    mov qword [ret_stack_rsp], rax
    mov qword [rax], .call_9
    jmp proc_cstr_print
.call_9:
    push mem+117
    push qword 13
    pop rax
    pop rbx
    add rax, rbx
    push rax
    mov rax, [ret_stack_rsp]
    add rax, 8
    mov qword [ret_stack_rsp], rax
    mov qword [rax], .call_10
    jmp proc_cstr_print
.call_10:
    push str_19
    mov rax, [ret_stack_rsp]
    add rax, 8
    mov qword [ret_stack_rsp], rax
    mov qword [rax], .call_11
    jmp proc_cstr_println
.call_11:
    pop rax
    mov rax, [ret_stack_rsp]
    sub rax, 8
    mov qword [ret_stack_rsp], rax
    add rax, 8
    jmp qword [rax]
.if_1:
    pop rax
    push rax
    push rax
    push qword 3
    mov rcx, 0
    mov rdx, 1
    pop rax
    pop rbx
    cmp rax, rbx
    cmove rcx, rdx
    push rcx
    pop rbx
    test rbx, rbx
    jz .if_2
    push str_20
    mov rax, [ret_stack_rsp]
    add rax, 8
    mov qword [ret_stack_rsp], rax
    mov qword [rax], .call_12
    jmp proc_cstr_print
.call_12:
    push str_21
    mov rax, [ret_stack_rsp]
    add rax, 8
    mov qword [ret_stack_rsp], rax
    mov qword [rax], .call_13
    jmp proc_cstr_print
.call_13:
    push mem+117
    push qword 9
    pop rax
    pop rbx
    add rax, rbx
    push rax
    mov rax, [ret_stack_rsp]
    add rax, 8
    mov qword [ret_stack_rsp], rax
    mov qword [rax], .call_14
    jmp proc_cstr_print
.call_14:
    push str_22
    mov rax, [ret_stack_rsp]
    add rax, 8
    mov qword [ret_stack_rsp], rax
    mov qword [rax], .call_15
    jmp proc_cstr_print
.call_15:
    push mem+117
    push qword 13
    pop rax
    pop rbx
    add rax, rbx
    push rax
    mov rax, [ret_stack_rsp]
    add rax, 8
    mov qword [ret_stack_rsp], rax
    mov qword [rax], .call_16
    jmp proc_cstr_print
.call_16:
    push str_23
    mov rax, [ret_stack_rsp]
    add rax, 8
    mov qword [ret_stack_rsp], rax
    mov qword [rax], .call_17
    jmp proc_cstr_println
.call_17:
    pop rax
    mov rax, [ret_stack_rsp]
    sub rax, 8
    mov qword [ret_stack_rsp], rax
    add rax, 8
    jmp qword [rax]
.if_2:
    pop rax
    push str_24
    mov rax, [ret_stack_rsp]
    add rax, 8
    mov qword [ret_stack_rsp], rax
    mov qword [rax], .call_18
    jmp proc_cstr_print
.call_18:
    push mem+117
    push qword 9
    pop rax
    pop rbx
    add rax, rbx
    push rax
    mov rax, [ret_stack_rsp]
    add rax, 8
    mov qword [ret_stack_rsp], rax
    mov qword [rax], .call_19
    jmp proc_cstr_print
.call_19:
    push str_25
    mov rax, [ret_stack_rsp]
    add rax, 8
    mov qword [ret_stack_rsp], rax
    mov qword [rax], .call_20
    jmp proc_cstr_print
.call_20:
    push mem+117
    push qword 13
    pop rax
    pop rbx
    add rax, rbx
    push rax
    mov rax, [ret_stack_rsp]
    add rax, 8
    mov qword [ret_stack_rsp], rax
    mov qword [rax], .call_21
    jmp proc_cstr_println
.call_21:
    mov rax, [ret_stack_rsp]
    sub rax, 8
    mov qword [ret_stack_rsp], rax
    add rax, 8
    jmp qword [rax]
class_sysc:
class_fm:
class_time:
class_statresult:
class_os:
proc_os_fork:
    push qword 57
    pop rax
    syscall
    push rax
    mov rax, [ret_stack_rsp]
    sub rax, 8
    mov qword [ret_stack_rsp], rax
    add rax, 8
    jmp qword [rax]
proc_os_chkdeverr:
    push qword 0
    mov rcx, 0
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
    jz .if_0
    mov rax, [ret_stack_rsp]
    sub rax, 8
    mov qword [ret_stack_rsp], rax
    add rax, 8
    jmp qword [rax]
.if_0:
    push str_26
    mov rax, [ret_stack_rsp]
    add rax, 8
    mov qword [ret_stack_rsp], rax
    mov qword [rax], .call_0
    jmp proc_cstr_println
.call_0:
    push qword -1
    mov rax, 60
    pop rdi
    syscall
    mov rax, [ret_stack_rsp]
    sub rax, 8
    mov qword [ret_stack_rsp], rax
    add rax, 8
    jmp qword [rax]
proc_os_fexists:
    push mem+253
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
    mov rcx, 0
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
    sub rax, 8
    mov qword [ret_stack_rsp], rax
    add rax, 8
    jmp qword [rax]
proc_os_execcmd:
    mov rax, [ret_stack_rsp]
    add rax, 8
    mov qword [ret_stack_rsp], rax
    mov qword [rax], .call_0
    jmp proc_os_fork
.call_0:
    pop rax
    push rax
    push rax
    push qword 0
    mov rcx, 0
    mov rdx, 1
    pop rax
    pop rbx
    cmp rax, rbx
    cmove rcx, rdx
    push rcx
    pop rbx
    test rbx, rbx
    jz .if_0
    push qword 1
    push qword 0
    push qword 0
    push str_27
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
    mov rax, [ret_stack_rsp]
    add rax, 8
    mov qword [ret_stack_rsp], rax
    mov qword [rax], .call_1
    jmp proc_os_chkdeverr
.call_1:
    push qword 33
    pop rax
    pop rdi
    pop rsi
    syscall
    push rax
    mov rax, [ret_stack_rsp]
    add rax, 8
    mov qword [ret_stack_rsp], rax
    mov qword [rax], .call_2
    jmp proc_os_chkdeverr
.call_2:
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
    xor rbx, rbx
    mov rbx, [rax]
    push rbx
    push qword 59
    pop rax
    pop rdi
    pop rsi
    pop rdx
    syscall
    push rax
    pop rax
    pop rax
    pop rax
    push qword -1
    mov rax, 60
    pop rdi
    syscall
.if_0:
    pop rax
    push rax
    push rax
    push qword 0
    mov rcx, 0
    mov rdx, 1
    pop rbx
    pop rax
    cmp rax, rbx
    cmovg rcx, rdx
    push rcx
    pop rbx
    test rbx, rbx
    jz .if_1
    push qword 0
    push qword 0
    push mem+245
    push qword -1
    push qword 61
    pop rax
    pop rdi
    pop rsi
    pop rdx
    pop r10
    syscall
    push rax
    mov rax, [ret_stack_rsp]
    add rax, 8
    mov qword [ret_stack_rsp], rax
    mov qword [rax], .call_3
    jmp proc_os_chkdeverr
.call_3:
    pop rax
    pop rax
    mov rax, [ret_stack_rsp]
    sub rax, 8
    mov qword [ret_stack_rsp], rax
    add rax, 8
    jmp qword [rax]
.if_1:
    push qword 0
    mov rcx, 0
    mov rdx, 1
    pop rbx
    pop rax
    cmp rax, rbx
    cmovl rcx, rdx
    push rcx
    pop rbx
    test rbx, rbx
    jz .if_2
    push str_28
    mov rax, [ret_stack_rsp]
    add rax, 8
    mov qword [ret_stack_rsp], rax
    mov qword [rax], .call_4
    jmp proc_cstr_println
.call_4:
.if_2:
    pop rax
    mov rax, [ret_stack_rsp]
    sub rax, 8
    mov qword [ret_stack_rsp], rax
    add rax, 8
    jmp qword [rax]
proc_os_execcmdloud:
    mov rax, [ret_stack_rsp]
    add rax, 8
    mov qword [ret_stack_rsp], rax
    mov qword [rax], .call_0
    jmp proc_os_fork
.call_0:
    pop rax
    push rax
    push rax
    push qword 0
    mov rcx, 0
    mov rdx, 1
    pop rax
    pop rbx
    cmp rax, rbx
    cmove rcx, rdx
    push rcx
    pop rbx
    test rbx, rbx
    jz .if_0
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
    xor rbx, rbx
    mov rbx, [rax]
    push rbx
    push qword 59
    pop rax
    pop rdi
    pop rsi
    pop rdx
    syscall
    push rax
    pop rax
    pop rax
    pop rax
    push qword -1
    mov rax, 60
    pop rdi
    syscall
.if_0:
    pop rax
    push rax
    push rax
    push qword 0
    mov rcx, 0
    mov rdx, 1
    pop rbx
    pop rax
    cmp rax, rbx
    cmovg rcx, rdx
    push rcx
    pop rbx
    test rbx, rbx
    jz .if_1
    push qword 0
    push qword 0
    push mem+245
    push qword -1
    push qword 61
    pop rax
    pop rdi
    pop rsi
    pop rdx
    pop r10
    syscall
    push rax
    mov rax, [ret_stack_rsp]
    add rax, 8
    mov qword [ret_stack_rsp], rax
    mov qword [rax], .call_1
    jmp proc_os_chkdeverr
.call_1:
    pop rax
    pop rax
    mov rax, [ret_stack_rsp]
    sub rax, 8
    mov qword [ret_stack_rsp], rax
    add rax, 8
    jmp qword [rax]
.if_1:
    push qword 0
    mov rcx, 0
    mov rdx, 1
    pop rbx
    pop rax
    cmp rax, rbx
    cmovl rcx, rdx
    push rcx
    pop rbx
    test rbx, rbx
    jz .if_2
    push str_29
    mov rax, [ret_stack_rsp]
    add rax, 8
    mov qword [ret_stack_rsp], rax
    mov qword [rax], .call_2
    jmp proc_cstr_println
.call_2:
.if_2:
    pop rax
    mov rax, [ret_stack_rsp]
    sub rax, 8
    mov qword [ret_stack_rsp], rax
    add rax, 8
    jmp qword [rax]
proc_os_execcmdecho:
    push qword 0
    push qword 1
    mov rax, [ret_stack_rsp]
    add rax, 8
    mov qword [ret_stack_rsp], rax
    mov qword [rax], .call_0
    jmp proc_log_level
.call_0:
    push str_30
    push str_31
    mov rax, [ret_stack_rsp]
    add rax, 8
    mov qword [ret_stack_rsp], rax
    mov qword [rax], .call_1
    jmp proc_log_msg
.call_1:
    pop rax
    push rax
    push rax
.do_0:
    pop rax
    push rax
    push rax
    pop rax
    xor rbx, rbx
    mov rbx, [rax]
    push rbx
    mov rax, [ret_stack_rsp]
    add rax, 8
    mov qword [ret_stack_rsp], rax
    mov qword [rax], .call_2
    jmp proc_log_cat
.call_2:
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
    jz .if_0
    push str_32
    mov rax, [ret_stack_rsp]
    add rax, 8
    mov qword [ret_stack_rsp], rax
    mov qword [rax], .call_3
    jmp proc_log_cat
.call_3:
.if_0:
    pop rax
    push rax
    push rax
    pop rax
    xor rbx, rbx
    mov rbx, [rax]
    push rbx
    push qword 0
    mov rcx, 0
    mov rdx, 1
    pop rbx
    pop rax
    cmp rax, rbx
    cmovne rcx, rdx
    push rcx
    pop rbx
    test rbx, rbx
    jnz .do_0
    pop rax
    mov rax, [ret_stack_rsp]
    add rax, 8
    mov qword [ret_stack_rsp], rax
    mov qword [rax], .call_4
    jmp proc_log_log
.call_4:
    mov rax, [ret_stack_rsp]
    add rax, 8
    mov qword [ret_stack_rsp], rax
    mov qword [rax], .call_5
    jmp proc_os_execcmd
.call_5:
    mov rax, [ret_stack_rsp]
    sub rax, 8
    mov qword [ret_stack_rsp], rax
    add rax, 8
    jmp qword [rax]
proc_os_execcmdecholoud:
    push qword 0
    push qword 1
    mov rax, [ret_stack_rsp]
    add rax, 8
    mov qword [ret_stack_rsp], rax
    mov qword [rax], .call_0
    jmp proc_log_level
.call_0:
    push str_33
    push str_34
    mov rax, [ret_stack_rsp]
    add rax, 8
    mov qword [ret_stack_rsp], rax
    mov qword [rax], .call_1
    jmp proc_log_msg
.call_1:
    pop rax
    push rax
    push rax
.do_0:
    pop rax
    push rax
    push rax
    pop rax
    xor rbx, rbx
    mov rbx, [rax]
    push rbx
    mov rax, [ret_stack_rsp]
    add rax, 8
    mov qword [ret_stack_rsp], rax
    mov qword [rax], .call_2
    jmp proc_log_cat
.call_2:
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
    jz .if_0
    push str_35
    mov rax, [ret_stack_rsp]
    add rax, 8
    mov qword [ret_stack_rsp], rax
    mov qword [rax], .call_3
    jmp proc_log_cat
.call_3:
.if_0:
    pop rax
    push rax
    push rax
    pop rax
    xor rbx, rbx
    mov rbx, [rax]
    push rbx
    push qword 0
    mov rcx, 0
    mov rdx, 1
    pop rbx
    pop rax
    cmp rax, rbx
    cmovne rcx, rdx
    push rcx
    pop rbx
    test rbx, rbx
    jnz .do_0
    pop rax
    mov rax, [ret_stack_rsp]
    add rax, 8
    mov qword [ret_stack_rsp], rax
    mov qword [rax], .call_4
    jmp proc_log_log
.call_4:
    mov rax, [ret_stack_rsp]
    add rax, 8
    mov qword [ret_stack_rsp], rax
    mov qword [rax], .call_5
    jmp proc_os_execcmdloud
.call_5:
    mov rax, [ret_stack_rsp]
    sub rax, 8
    mov qword [ret_stack_rsp], rax
    add rax, 8
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
    mov rcx, 0
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
    jz .if_0
    pop rax
    push rax
    push rax
    mov rax, [ret_stack_rsp]
    add rax, 8
    mov qword [ret_stack_rsp], rax
    mov qword [rax], .call_0
    jmp proc_int_print
.call_0:
    push str_36
    mov rax, [ret_stack_rsp]
    add rax, 8
    mov qword [ret_stack_rsp], rax
    mov qword [rax], .call_1
    jmp proc_int_print
.call_1:
    pop rax
    push qword -1
    mov rax, 60
    pop rdi
    syscall
.if_0:
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
    xor rbx, rbx
    mov rbx, [rax]
    push rbx
    mov rax, [ret_stack_rsp]
    sub rax, 8
    mov qword [ret_stack_rsp], rax
    add rax, 8
    jmp qword [rax]
proc_os_env:
    push mem+397
    pop rax
    pop rbx
    push rax
    push rbx
    pop rbx
    pop rax
    mov qword [rax], rbx
    push rax
    pop rax
    mov rax, [args_ptr]
    mov rax, [rax]
    add rax, 2
    shl rax, 3
    mov rbx, [args_ptr]
    add rbx, rax
    push rbx
.do_0:
    pop rax
    push rax
    push rax
    pop rax
    xor rbx, rbx
    mov rbx, [rax]
    push rbx
    push qword 61'
    push mem+405
    mov rax, [ret_stack_rsp]
    add rax, 8
    mov qword [ret_stack_rsp], rax
    mov qword [rax], .call_0
    jmp proc_cstr_split
.call_0:
    push mem+397
    pop rax
    xor rbx, rbx
    mov rbx, [rax]
    push rbx
    mov rax, [ret_stack_rsp]
    add rax, 8
    mov qword [ret_stack_rsp], rax
    mov qword [rax], .call_1
    jmp proc_cstr_eq
.call_1:
    pop rbx
    test rbx, rbx
    jz .if_0
    pop rax
    pop rbx
    push rax
    push rbx
    pop rax
    mov rax, [ret_stack_rsp]
    sub rax, 8
    mov qword [ret_stack_rsp], rax
    add rax, 8
    jmp qword [rax]
.if_0:
    pop rax
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
    mov rbx, [rax]
    push rbx
    push qword 0
    mov rcx, 0
    mov rdx, 1
    pop rbx
    pop rax
    cmp rax, rbx
    cmovne rcx, rdx
    push rcx
    pop rbx
    test rbx, rbx
    jnz .do_0
    pop rax
    push qword 0
    mov rax, [ret_stack_rsp]
    sub rax, 8
    mov qword [ret_stack_rsp], rax
    add rax, 8
    jmp qword [rax]
proc_os_open:
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
    mov rcx, 0
    mov rdx, 1
    pop rbx
    pop rax
    cmp rax, rbx
    cmovl rcx, rdx
    push rcx
    pop rbx
    test rbx, rbx
    jz .if_0
    push str_37
    mov rax, [ret_stack_rsp]
    add rax, 8
    mov qword [ret_stack_rsp], rax
    mov qword [rax], .call_0
    jmp proc_cstr_println
.call_0:
    pop rax
    push qword -1
    mov rax, 60
    pop rdi
    syscall
.if_0:
    mov rax, [ret_stack_rsp]
    sub rax, 8
    mov qword [ret_stack_rsp], rax
    add rax, 8
    jmp qword [rax]
proc_os_write:
    push qword 1
    pop rax
    pop rdi
    pop rsi
    pop rdx
    syscall
    push rax
    push qword 0
    mov rcx, 0
    mov rdx, 1
    pop rbx
    pop rax
    cmp rax, rbx
    cmovl rcx, rdx
    push rcx
    pop rbx
    test rbx, rbx
    jz .if_0
    push str_38
    mov rax, [ret_stack_rsp]
    add rax, 8
    mov qword [ret_stack_rsp], rax
    mov qword [rax], .call_0
    jmp proc_cstr_println
.call_0:
    push qword -1
    mov rax, 60
    pop rdi
    syscall
.if_0:
    mov rax, [ret_stack_rsp]
    sub rax, 8
    mov qword [ret_stack_rsp], rax
    add rax, 8
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
    mov rcx, 0
    mov rdx, 1
    pop rbx
    pop rax
    cmp rax, rbx
    cmovl rcx, rdx
    push rcx
    pop rbx
    test rbx, rbx
    jz .if_0
    push str_39
    mov rax, [ret_stack_rsp]
    add rax, 8
    mov qword [ret_stack_rsp], rax
    mov qword [rax], .call_0
    jmp proc_cstr_println
.call_0:
    pop rax
    push qword -1
    mov rax, 60
    pop rdi
    syscall
.if_0:
    mov rax, [ret_stack_rsp]
    sub rax, 8
    mov qword [ret_stack_rsp], rax
    add rax, 8
    jmp qword [rax]
proc_os_close:
    push qword 3
    pop rax
    pop rdi
    syscall
    push rax
    push qword 0
    mov rcx, 0
    mov rdx, 1
    pop rbx
    pop rax
    cmp rax, rbx
    cmovl rcx, rdx
    push rcx
    pop rbx
    test rbx, rbx
    jz .if_0
    push str_40
    mov rax, [ret_stack_rsp]
    add rax, 8
    mov qword [ret_stack_rsp], rax
    mov qword [rax], .call_0
    jmp proc_cstr_println
.call_0:
    push qword -1
    mov rax, 60
    pop rdi
    syscall
.if_0:
    mov rax, [ret_stack_rsp]
    sub rax, 8
    mov qword [ret_stack_rsp], rax
    add rax, 8
    jmp qword [rax]
proc_os_cwd:
    push mem+469
    push qword 255
    push qword 79
    pop rax
    pop rdi
    pop rsi
    syscall
    push rax
    pop rax
    push mem+469
    mov rax, [ret_stack_rsp]
    sub rax, 8
    mov qword [ret_stack_rsp], rax
    add rax, 8
    jmp qword [rax]
class_filestream:
proc_filestream_free:
    mov rax, [ret_stack_rsp]
    add rax, 8
    mov qword [ret_stack_rsp], rax
    mov qword [rax], .call_0
    jmp proc_heap_free
.call_0:
    mov rax, [ret_stack_rsp]
    sub rax, 8
    mov qword [ret_stack_rsp], rax
    add rax, 8
    jmp qword [rax]
proc_filestream_new:
    push mem+725
    push qword 2048
    push qword 2
    pop rax
    pop rbx
    imul rax, rbx
    push rax
    push qword 1
    pop rax
    pop rbx
    add rax, rbx
    push rax
    push qword 8
    push qword 2
    pop rax
    pop rbx
    imul rax, rbx
    push rax
    pop rax
    pop rbx
    add rax, rbx
    push rax
    mov rax, [ret_stack_rsp]
    add rax, 8
    mov qword [ret_stack_rsp], rax
    mov qword [rax], .call_0
    jmp proc_heap_zalloc
.call_0:
    pop rbx
    pop rax
    mov qword [rax], rbx
    push rax
    pop rax
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
    push qword 47'
    mov rcx, 0
    mov rdx, 1
    pop rbx
    pop rax
    cmp rax, rbx
    cmovne rcx, rdx
    push rcx
    pop rbx
    test rbx, rbx
    jz .if_0
    pop rax
    push qword -100
.if_0:
    mov rax, [ret_stack_rsp]
    add rax, 8
    mov qword [ret_stack_rsp], rax
    mov qword [rax], .call_1
    jmp proc_os_open
.call_1:
    push mem+725
    pop rax
    xor rbx, rbx
    mov rbx, [rax]
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
    pop rbx
    pop rax
    mov qword [rax], rbx
    push rax
    pop rax
    push qword 2048
    push qword 2
    pop rax
    pop rbx
    imul rax, rbx
    push rax
    push mem+725
    pop rax
    xor rbx, rbx
    mov rbx, [rax]
    push rbx
    push qword 17
    pop rax
    pop rbx
    add rax, rbx
    push rax
    push mem+725
    pop rax
    xor rbx, rbx
    mov rbx, [rax]
    push rbx
    push qword 1
    pop rax
    pop rbx
    add rax, rbx
    push rax
    pop rax
    xor rbx, rbx
    mov rbx, [rax]
    push rbx
    mov rax, [ret_stack_rsp]
    add rax, 8
    mov qword [ret_stack_rsp], rax
    mov qword [rax], .call_2
    jmp proc_os_readf
.call_2:
    pop rax
    push mem+725
    pop rax
    xor rbx, rbx
    mov rbx, [rax]
    push rbx
    mov rax, [ret_stack_rsp]
    sub rax, 8
    mov qword [ret_stack_rsp], rax
    add rax, 8
    jmp qword [rax]
proc_filestream_readchar:
    push mem+725
    pop rax
    pop rbx
    push rax
    push rbx
    pop rbx
    pop rax
    mov qword [rax], rbx
    push rax
    pop rax
    push mem+725
    pop rax
    xor rbx, rbx
    mov rbx, [rax]
    push rbx
    push qword 9
    pop rax
    pop rbx
    add rax, rbx
    push rax
    pop rax
    xor rbx, rbx
    mov rbx, [rax]
    push rbx
    push qword 2048
    mov rcx, 0
    mov rdx, 1
    pop rbx
    pop rax
    cmp rax, rbx
    cmovg rcx, rdx
    push rcx
    pop rbx
    test rbx, rbx
    jz .if_0
    push mem+725
    pop rax
    xor rbx, rbx
    mov rbx, [rax]
    push rbx
    push qword 17
    pop rax
    pop rbx
    add rax, rbx
    push rax
    push mem+725
    pop rax
    xor rbx, rbx
    mov rbx, [rax]
    push rbx
    push qword 2065
    pop rax
    pop rbx
    add rax, rbx
    push rax
    push qword 2048
    mov rax, [ret_stack_rsp]
    add rax, 8
    mov qword [ret_stack_rsp], rax
    mov qword [rax], .call_0
    jmp proc_mem_cpy
.call_0:
    push mem+725
    pop rax
    xor rbx, rbx
    mov rbx, [rax]
    push rbx
    push qword 2065
    pop rax
    pop rbx
    add rax, rbx
    push rax
    push qword 2048
    mov rax, [ret_stack_rsp]
    add rax, 8
    mov qword [ret_stack_rsp], rax
    mov qword [rax], .call_1
    jmp proc_mem_zero
.call_1:
    push qword 2048
    push mem+725
    pop rax
    xor rbx, rbx
    mov rbx, [rax]
    push rbx
    push qword 2065
    pop rax
    pop rbx
    add rax, rbx
    push rax
    push mem+725
    pop rax
    xor rbx, rbx
    mov rbx, [rax]
    push rbx
    push qword 1
    pop rax
    pop rbx
    add rax, rbx
    push rax
    pop rax
    xor rbx, rbx
    mov rbx, [rax]
    push rbx
    mov rax, [ret_stack_rsp]
    add rax, 8
    mov qword [ret_stack_rsp], rax
    mov qword [rax], .call_2
    jmp proc_os_readf
.call_2:
    pop rax
    push mem+725
    pop rax
    xor rbx, rbx
    mov rbx, [rax]
    push rbx
    push qword 9
    pop rax
    pop rbx
    add rax, rbx
    push rax
    pop rax
    push rax
    push rax
    pop rax
    xor rbx, rbx
    mov rbx, [rax]
    push rbx
    push qword 2048
    pop rbx
    pop rax
    sub rax, rbx
    push rax
    pop rbx
    pop rax
    mov qword [rax], rbx
    push rax
    pop rax
.if_0:
    push mem+725
    pop rax
    xor rbx, rbx
    mov rbx, [rax]
    push rbx
    pop rax
    push rax
    push rax
    push qword 17
    pop rax
    pop rbx
    add rax, rbx
    push rax
    pop rax
    pop rbx
    push rax
    push rbx
    push qword 9
    pop rax
    pop rbx
    add rax, rbx
    push rax
    pop rax
    xor rbx, rbx
    mov rbx, [rax]
    push rbx
    pop rax
    pop rbx
    add rax, rbx
    push rax
    pop rax
    xor rbx, rbx
    mov bl, [rax]
    push rbx
    push mem+725
    pop rax
    xor rbx, rbx
    mov rbx, [rax]
    push rbx
    push qword 9
    pop rax
    pop rbx
    add rax, rbx
    push rax
    pop rax
    push rax
    push rax
    pop rax
    xor rbx, rbx
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
    pop rax
    mov rax, [ret_stack_rsp]
    sub rax, 8
    mov qword [ret_stack_rsp], rax
    add rax, 8
    jmp qword [rax]
proc_version:
    push str_41
    mov rax, [ret_stack_rsp]
    sub rax, 8
    mov qword [ret_stack_rsp], rax
    add rax, 8
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
    mov rax, [ret_stack_rsp]
    add rax, 8
    mov qword [ret_stack_rsp], rax
    mov qword [rax], .call_0
    jmp proc_cstr_len
.call_0:
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
    pop rax
    mov rax, [ret_stack_rsp]
    sub rax, 8
    mov qword [ret_stack_rsp], rax
    add rax, 8
    jmp qword [rax]
proc_pushstack:
    mov rax, [ret_stack_rsp]
    add rax, 8
    mov qword [ret_stack_rsp], rax
    mov qword [rax], .call_0
    jmp proc_inner
.call_0:
    pop rax
    push rax
    push rax
    mov rax, [ret_stack_rsp]
    add rax, 8
    mov qword [ret_stack_rsp], rax
    mov qword [rax], .call_1
    jmp proc_cstr_len
.call_1:
    push qword 1
    pop rax
    pop rbx
    add rax, rbx
    push rax
    mov rax, [ret_stack_rsp]
    add rax, 8
    mov qword [ret_stack_rsp], rax
    mov qword [rax], .call_2
    jmp proc_heap_zalloc
.call_2:
    pop rax
    pop rbx
    push rax
    push rbx
    mov rax, [ret_stack_rsp]
    add rax, 8
    mov qword [ret_stack_rsp], rax
    mov qword [rax], .call_3
    jmp proc_cstr_cpy
.call_3:
    mov rax, [ret_stack_rsp]
    add rax, 8
    mov qword [ret_stack_rsp], rax
    mov qword [rax], .call_4
    jmp proc_cstr_len
.call_4:
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
    pop rax
    push mem+3182
    pop rax
    xor rbx, rbx
    mov rbx, [rax]
    push rbx
    push mem+3190
    pop rax
    xor rbx, rbx
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
    xor rbx, rbx
    mov rbx, [rax]
    push rbx
    push qword 0
    mov rcx, 0
    mov rdx, 1
    pop rbx
    pop rax
    cmp rax, rbx
    cmovne rcx, rdx
    push rcx
    pop rbx
    test rbx, rbx
    jz .if_0
    pop rax
    push rax
    push rax
    pop rax
    xor rbx, rbx
    mov rbx, [rax]
    push rbx
    mov rax, [ret_stack_rsp]
    add rax, 8
    mov qword [ret_stack_rsp], rax
    mov qword [rax], .call_5
    jmp proc_heap_free
.call_5:
.if_0:
    pop rax
    pop rbx
    push rax
    push rbx
    pop rbx
    pop rax
    mov qword [rax], rbx
    push rax
    pop rax
    push mem+3190
    pop rax
    push rax
    push rax
    pop rax
    xor rbx, rbx
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
    pop rax
    mov rax, [ret_stack_rsp]
    sub rax, 8
    mov qword [ret_stack_rsp], rax
    add rax, 8
    jmp qword [rax]
proc_popstack:
    push mem+3190
    pop rax
    push rax
    push rax
    pop rax
    xor rbx, rbx
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
    pop rax
    push mem+3182
    pop rax
    xor rbx, rbx
    mov rbx, [rax]
    push rbx
    push mem+3190
    pop rax
    xor rbx, rbx
    mov rbx, [rax]
    push rbx
    pop rax
    pop rbx
    add rax, rbx
    push rax
    pop rax
    xor rbx, rbx
    mov rbx, [rax]
    push rbx
    mov rax, [ret_stack_rsp]
    sub rax, 8
    mov qword [ret_stack_rsp], rax
    add rax, 8
    jmp qword [rax]
proc_help:
    pop rax
    push rax
    push rax
    push qword 0
    mov rcx, 0
    mov rdx, 1
    pop rax
    pop rbx
    cmp rax, rbx
    cmove rcx, rdx
    push rcx
    pop rbx
    test rbx, rbx
    jz .if_0
    push str_42
    mov rax, [ret_stack_rsp]
    add rax, 8
    mov qword [ret_stack_rsp], rax
    mov qword [rax], .call_0
    jmp proc_cstr_print
.call_0:
    mov rax, [ret_stack_rsp]
    add rax, 8
    mov qword [ret_stack_rsp], rax
    mov qword [rax], .call_1
    jmp proc_version
.call_1:
    mov rax, [ret_stack_rsp]
    add rax, 8
    mov qword [ret_stack_rsp], rax
    mov qword [rax], .call_2
    jmp proc_cstr_println
.call_2:
    pop rax
    push qword 0
    mov rax, 60
    pop rdi
    syscall
.if_0:
    pop rax
    push rax
    push rax
    push qword 1
    mov rcx, 0
    mov rdx, 1
    pop rax
    pop rbx
    cmp rax, rbx
    cmove rcx, rdx
    push rcx
    pop rbx
    test rbx, rbx
    jz .if_1
    push str_43
    mov rax, [ret_stack_rsp]
    add rax, 8
    mov qword [ret_stack_rsp], rax
    mov qword [rax], .call_3
    jmp proc_cstr_println
.call_3:
.if_1:
    pop rax
    push rax
    push rax
    push qword 2
    mov rcx, 0
    mov rdx, 1
    pop rax
    pop rbx
    cmp rax, rbx
    cmove rcx, rdx
    push rcx
    pop rbx
    test rbx, rbx
    jz .if_2
    push str_44
    mov rax, [ret_stack_rsp]
    add rax, 8
    mov qword [ret_stack_rsp], rax
    mov qword [rax], .call_4
    jmp proc_cstr_print
.call_4:
    push qword 1
    mov rax, [ret_stack_rsp]
    add rax, 8
    mov qword [ret_stack_rsp], rax
    mov qword [rax], .call_5
    jmp proc_os_args
.call_5:
    mov rax, [ret_stack_rsp]
    add rax, 8
    mov qword [ret_stack_rsp], rax
    mov qword [rax], .call_6
    jmp proc_cstr_print
.call_6:
    push str_45
    mov rax, [ret_stack_rsp]
    add rax, 8
    mov qword [ret_stack_rsp], rax
    mov qword [rax], .call_7
    jmp proc_cstr_println
.call_7:
.if_2:
    pop rax
    push rax
    push rax
    push qword 3
    mov rcx, 0
    mov rdx, 1
    pop rax
    pop rbx
    cmp rax, rbx
    cmove rcx, rdx
    push rcx
    pop rbx
    test rbx, rbx
    jz .if_3
    push str_46
    mov rax, [ret_stack_rsp]
    add rax, 8
    mov qword [ret_stack_rsp], rax
    mov qword [rax], .call_8
    jmp proc_cstr_println
.call_8:
.if_3:
    pop rax
    push str_47
    mov rax, [ret_stack_rsp]
    add rax, 8
    mov qword [ret_stack_rsp], rax
    mov qword [rax], .call_9
    jmp proc_cstr_print
.call_9:
    mov rax, [ret_stack_rsp]
    add rax, 8
    mov qword [ret_stack_rsp], rax
    mov qword [rax], .call_10
    jmp proc_version
.call_10:
    mov rax, [ret_stack_rsp]
    add rax, 8
    mov qword [ret_stack_rsp], rax
    mov qword [rax], .call_11
    jmp proc_cstr_print
.call_11:
    push str_48
    mov rax, [ret_stack_rsp]
    add rax, 8
    mov qword [ret_stack_rsp], rax
    mov qword [rax], .call_12
    jmp proc_cstr_println
.call_12:
    mov rax, [ret_stack_rsp]
    add rax, 8
    mov qword [ret_stack_rsp], rax
    mov qword [rax], .call_13
    jmp proc_cstr_cr
.call_13:
    push str_49
    mov rax, [ret_stack_rsp]
    add rax, 8
    mov qword [ret_stack_rsp], rax
    mov qword [rax], .call_14
    jmp proc_cstr_println
.call_14:
    push str_50
    mov rax, [ret_stack_rsp]
    add rax, 8
    mov qword [ret_stack_rsp], rax
    mov qword [rax], .call_15
    jmp proc_cstr_println
.call_15:
    push str_51
    mov rax, [ret_stack_rsp]
    add rax, 8
    mov qword [ret_stack_rsp], rax
    mov qword [rax], .call_16
    jmp proc_cstr_println
.call_16:
    mov rax, [ret_stack_rsp]
    add rax, 8
    mov qword [ret_stack_rsp], rax
    mov qword [rax], .call_17
    jmp proc_cstr_cr
.call_17:
    push qword 1
    mov rax, 60
    pop rdi
    syscall
    mov rax, [ret_stack_rsp]
    sub rax, 8
    mov qword [ret_stack_rsp], rax
    add rax, 8
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
    push qword 47'
    mov rcx, 0
    mov rdx, 1
    pop rbx
    pop rax
    cmp rax, rbx
    cmovne rcx, rdx
    push rcx
    pop rbx
    test rbx, rbx
    jz .if_0
    pop rax
    push qword -100
.if_0:
    mov rax, [ret_stack_rsp]
    add rax, 8
    mov qword [ret_stack_rsp], rax
    mov qword [rax], .call_0
    jmp proc_os_open
.call_0:
    push mem+2141
    pop rax
    pop rbx
    push rax
    push rbx
    pop rbx
    pop rax
    mov qword [rax], rbx
    push rax
    pop rax
    mov rax, [ret_stack_rsp]
    sub rax, 8
    mov qword [ret_stack_rsp], rax
    add rax, 8
    jmp qword [rax]
proc_clonerepo:
    push mem+797
    mov rax, [ret_stack_rsp]
    add rax, 8
    mov qword [ret_stack_rsp], rax
    mov qword [rax], .call_0
    jmp proc_cstr_clear
.call_0:
    push str_52
    mov rax, [ret_stack_rsp]
    add rax, 8
    mov qword [ret_stack_rsp], rax
    mov qword [rax], .call_1
    jmp proc_cstr_cpy
.call_1:
    pop rax
    push qword 2
    mov rax, [ret_stack_rsp]
    add rax, 8
    mov qword [ret_stack_rsp], rax
    mov qword [rax], .call_2
    jmp proc_os_args
.call_2:
    mov rax, [ret_stack_rsp]
    add rax, 8
    mov qword [ret_stack_rsp], rax
    mov qword [rax], .call_3
    jmp proc_cstr_cat
.call_3:
    pop rax
    push mem+861
    mov rax, [ret_stack_rsp]
    add rax, 8
    mov qword [ret_stack_rsp], rax
    mov qword [rax], .call_4
    jmp proc_cstr_clear
.call_4:
    push mem+1117
    mov rax, [ret_stack_rsp]
    add rax, 8
    mov qword [ret_stack_rsp], rax
    mov qword [rax], .call_5
    jmp proc_cstr_cpy
.call_5:
    pop rax
    push qword 2
    mov rax, [ret_stack_rsp]
    add rax, 8
    mov qword [ret_stack_rsp], rax
    mov qword [rax], .call_6
    jmp proc_os_args
.call_6:
    mov rax, [ret_stack_rsp]
    add rax, 8
    mov qword [ret_stack_rsp], rax
    mov qword [rax], .call_7
    jmp proc_cstr_cat
.call_7:
    pop rax
    push mem+733
    push str_53
    pop rbx
    pop rax
    mov qword [rax], rbx
    push rax
    push qword 8
    pop rax
    pop rbx
    add rax, rbx
    push rax
    push str_54
    pop rbx
    pop rax
    mov qword [rax], rbx
    push rax
    push qword 8
    pop rax
    pop rbx
    add rax, rbx
    push rax
    push mem+797
    pop rbx
    pop rax
    mov qword [rax], rbx
    push rax
    push qword 8
    pop rax
    pop rbx
    add rax, rbx
    push rax
    push mem+861
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
    pop rax
    push mem+733
    mov rax, [ret_stack_rsp]
    add rax, 8
    mov qword [ret_stack_rsp], rax
    mov qword [rax], .call_8
    jmp proc_os_execcmdecho
.call_8:
    mov rax, [ret_stack_rsp]
    sub rax, 8
    mov qword [ret_stack_rsp], rax
    add rax, 8
    jmp qword [rax]
proc_pullrepo:
    push mem+733
    mov rax, [ret_stack_rsp]
    add rax, 8
    mov qword [ret_stack_rsp], rax
    mov qword [rax], .call_0
    jmp proc_os_execcmdecho
.call_0:
    push mem+861
    mov rax, [ret_stack_rsp]
    add rax, 8
    mov qword [ret_stack_rsp], rax
    mov qword [rax], .call_1
    jmp proc_cstr_clear
.call_1:
    push mem+1117
    mov rax, [ret_stack_rsp]
    add rax, 8
    mov qword [ret_stack_rsp], rax
    mov qword [rax], .call_2
    jmp proc_cstr_cpy
.call_2:
    pop rax
    push qword 2
    mov rax, [ret_stack_rsp]
    add rax, 8
    mov qword [ret_stack_rsp], rax
    mov qword [rax], .call_3
    jmp proc_os_args
.call_3:
    mov rax, [ret_stack_rsp]
    add rax, 8
    mov qword [ret_stack_rsp], rax
    mov qword [rax], .call_4
    jmp proc_cstr_cat
.call_4:
    pop rax
    push mem+733
    push str_55
    pop rbx
    pop rax
    mov qword [rax], rbx
    push rax
    push qword 8
    pop rax
    pop rbx
    add rax, rbx
    push rax
    push str_56
    pop rbx
    pop rax
    mov qword [rax], rbx
    push rax
    push qword 8
    pop rax
    pop rbx
    add rax, rbx
    push rax
    push mem+861
    pop rbx
    pop rax
    mov qword [rax], rbx
    push rax
    push qword 8
    pop rax
    pop rbx
    add rax, rbx
    push rax
    push str_57
    pop rbx
    pop rax
    mov qword [rax], rbx
    push rax
    push qword 8
    pop rax
    pop rbx
    add rax, rbx
    push rax
    push str_58
    pop rbx
    pop rax
    mov qword [rax], rbx
    push rax
    push qword 8
    pop rax
    pop rbx
    add rax, rbx
    push rax
    push str_59
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
    pop rax
    push mem+733
    mov rax, [ret_stack_rsp]
    add rax, 8
    mov qword [ret_stack_rsp], rax
    mov qword [rax], .call_5
    jmp proc_os_execcmdecho
.call_5:
    mov rax, [ret_stack_rsp]
    sub rax, 8
    mov qword [ret_stack_rsp], rax
    add rax, 8
    jmp qword [rax]
proc_setsrc:
    push mem+1373
    mov rax, [ret_stack_rsp]
    add rax, 8
    mov qword [ret_stack_rsp], rax
    mov qword [rax], .call_0
    jmp proc_cstr_clear
.call_0:
    push mem+1117
    mov rax, [ret_stack_rsp]
    add rax, 8
    mov qword [ret_stack_rsp], rax
    mov qword [rax], .call_1
    jmp proc_cstr_cpy
.call_1:
    pop rax
    push str_60
    mov rax, [ret_stack_rsp]
    add rax, 8
    mov qword [ret_stack_rsp], rax
    mov qword [rax], .call_2
    jmp proc_cstr_cat
.call_2:
    mov rax, [ret_stack_rsp]
    add rax, 8
    mov qword [ret_stack_rsp], rax
    mov qword [rax], .call_3
    jmp proc_popstack
.call_3:
    mov rax, [ret_stack_rsp]
    add rax, 8
    mov qword [ret_stack_rsp], rax
    mov qword [rax], .call_4
    jmp proc_cstr_cat
.call_4:
    push str_61
    mov rax, [ret_stack_rsp]
    add rax, 8
    mov qword [ret_stack_rsp], rax
    mov qword [rax], .call_5
    jmp proc_cstr_cat
.call_5:
    pop rax
    mov rax, [ret_stack_rsp]
    sub rax, 8
    mov qword [ret_stack_rsp], rax
    add rax, 8
    jmp qword [rax]
proc_addreq:
    push mem+861
    mov rax, [ret_stack_rsp]
    add rax, 8
    mov qword [ret_stack_rsp], rax
    mov qword [rax], .call_0
    jmp proc_cstr_clear
.call_0:
    push str_62
    mov rax, [ret_stack_rsp]
    add rax, 8
    mov qword [ret_stack_rsp], rax
    mov qword [rax], .call_1
    jmp proc_os_env
.call_1:
    mov rax, [ret_stack_rsp]
    add rax, 8
    mov qword [ret_stack_rsp], rax
    mov qword [rax], .call_2
    jmp proc_cstr_cpy
.call_2:
    pop rax
    push str_63
    mov rax, [ret_stack_rsp]
    add rax, 8
    mov qword [ret_stack_rsp], rax
    mov qword [rax], .call_3
    jmp proc_cstr_cat
.call_3:
    pop rax
    push mem+733
    push mem+861
    pop rbx
    pop rax
    mov qword [rax], rbx
    push rax
    push qword 8
    pop rax
    pop rbx
    add rax, rbx
    push rax
    push str_64
    pop rbx
    pop rax
    mov qword [rax], rbx
    push rax
    push qword 8
    pop rax
    pop rbx
    add rax, rbx
    push rax
    mov rax, [ret_stack_rsp]
    add rax, 8
    mov qword [ret_stack_rsp], rax
    mov qword [rax], .call_4
    jmp proc_popstack
.call_4:
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
    pop rax
    push mem+733
    mov rax, [ret_stack_rsp]
    add rax, 8
    mov qword [ret_stack_rsp], rax
    mov qword [rax], .call_5
    jmp proc_os_execcmdecholoud
.call_5:
    mov rax, [ret_stack_rsp]
    sub rax, 8
    mov qword [ret_stack_rsp], rax
    add rax, 8
    jmp qword [rax]
proc_addbin:
    mov rax, [ret_stack_rsp]
    add rax, 8
    mov qword [ret_stack_rsp], rax
    mov qword [rax], .call_0
    jmp proc_popstack
.call_0:
    push mem+861
    mov rax, [ret_stack_rsp]
    add rax, 8
    mov qword [ret_stack_rsp], rax
    mov qword [rax], .call_1
    jmp proc_cstr_clear
.call_1:
    push mem+1373
    mov rax, [ret_stack_rsp]
    add rax, 8
    mov qword [ret_stack_rsp], rax
    mov qword [rax], .call_2
    jmp proc_cstr_cpy
.call_2:
    pop rax
    pop rax
    pop rbx
    push rbx
    push rax
    push rbx
    mov rax, [ret_stack_rsp]
    add rax, 8
    mov qword [ret_stack_rsp], rax
    mov qword [rax], .call_3
    jmp proc_cstr_cat
.call_3:
    push str_65
    mov rax, [ret_stack_rsp]
    add rax, 8
    mov qword [ret_stack_rsp], rax
    mov qword [rax], .call_4
    jmp proc_cstr_cat
.call_4:
    pop rax
    push mem+1629
    mov rax, [ret_stack_rsp]
    add rax, 8
    mov qword [ret_stack_rsp], rax
    mov qword [rax], .call_5
    jmp proc_cstr_clear
.call_5:
    push mem+1885
    mov rax, [ret_stack_rsp]
    add rax, 8
    mov qword [ret_stack_rsp], rax
    mov qword [rax], .call_6
    jmp proc_cstr_cpy
.call_6:
    pop rax
    pop rax
    pop rbx
    push rax
    push rbx
    mov rax, [ret_stack_rsp]
    add rax, 8
    mov qword [ret_stack_rsp], rax
    mov qword [rax], .call_7
    jmp proc_cstr_cat
.call_7:
    pop rax
    push mem+733
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
    push mem+1629
    pop rbx
    pop rax
    mov qword [rax], rbx
    push rax
    push qword 8
    pop rax
    pop rbx
    add rax, rbx
    push rax
    push mem+861
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
    pop rax
    push mem+733
    mov rax, [ret_stack_rsp]
    add rax, 8
    mov qword [ret_stack_rsp], rax
    mov qword [rax], .call_8
    jmp proc_os_execcmdecho
.call_8:
    mov rax, [ret_stack_rsp]
    sub rax, 8
    mov qword [ret_stack_rsp], rax
    add rax, 8
    jmp qword [rax]
proc_addlibd:
    push mem+1629
    mov rax, [ret_stack_rsp]
    add rax, 8
    mov qword [ret_stack_rsp], rax
    mov qword [rax], .call_0
    jmp proc_cstr_clear
.call_0:
    push mem+1373
    mov rax, [ret_stack_rsp]
    add rax, 8
    mov qword [ret_stack_rsp], rax
    mov qword [rax], .call_1
    jmp proc_cstr_cpy
.call_1:
    pop rax
    mov rax, [ret_stack_rsp]
    add rax, 8
    mov qword [ret_stack_rsp], rax
    mov qword [rax], .call_2
    jmp proc_popstack
.call_2:
    mov rax, [ret_stack_rsp]
    add rax, 8
    mov qword [ret_stack_rsp], rax
    mov qword [rax], .call_3
    jmp proc_cstr_cat
.call_3:
    pop rax
    push mem+861
    mov rax, [ret_stack_rsp]
    add rax, 8
    mov qword [ret_stack_rsp], rax
    mov qword [rax], .call_4
    jmp proc_cstr_clear
.call_4:
    push str_68
    mov rax, [ret_stack_rsp]
    add rax, 8
    mov qword [ret_stack_rsp], rax
    mov qword [rax], .call_5
    jmp proc_os_env
.call_5:
    mov rax, [ret_stack_rsp]
    add rax, 8
    mov qword [ret_stack_rsp], rax
    mov qword [rax], .call_6
    jmp proc_cstr_cpy
.call_6:
    pop rax
    push str_69
    mov rax, [ret_stack_rsp]
    add rax, 8
    mov qword [ret_stack_rsp], rax
    mov qword [rax], .call_7
    jmp proc_cstr_cat
.call_7:
    pop rax
    push mem+733
    push str_70
    pop rbx
    pop rax
    mov qword [rax], rbx
    push rax
    push qword 8
    pop rax
    pop rbx
    add rax, rbx
    push rax
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
    push mem+1629
    pop rbx
    pop rax
    mov qword [rax], rbx
    push rax
    push qword 8
    pop rax
    pop rbx
    add rax, rbx
    push rax
    push mem+861
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
    pop rax
    push mem+733
    mov rax, [ret_stack_rsp]
    add rax, 8
    mov qword [ret_stack_rsp], rax
    mov qword [rax], .call_8
    jmp proc_os_execcmdecho
.call_8:
    mov rax, [ret_stack_rsp]
    sub rax, 8
    mov qword [ret_stack_rsp], rax
    add rax, 8
    jmp qword [rax]
proc_addlib:
    push mem+1629
    mov rax, [ret_stack_rsp]
    add rax, 8
    mov qword [ret_stack_rsp], rax
    mov qword [rax], .call_0
    jmp proc_cstr_clear
.call_0:
    push mem+1373
    mov rax, [ret_stack_rsp]
    add rax, 8
    mov qword [ret_stack_rsp], rax
    mov qword [rax], .call_1
    jmp proc_cstr_cpy
.call_1:
    pop rax
    mov rax, [ret_stack_rsp]
    add rax, 8
    mov qword [ret_stack_rsp], rax
    mov qword [rax], .call_2
    jmp proc_popstack
.call_2:
    mov rax, [ret_stack_rsp]
    add rax, 8
    mov qword [ret_stack_rsp], rax
    mov qword [rax], .call_3
    jmp proc_cstr_cat
.call_3:
    pop rax
    push mem+861
    mov rax, [ret_stack_rsp]
    add rax, 8
    mov qword [ret_stack_rsp], rax
    mov qword [rax], .call_4
    jmp proc_cstr_clear
.call_4:
    push str_72
    mov rax, [ret_stack_rsp]
    add rax, 8
    mov qword [ret_stack_rsp], rax
    mov qword [rax], .call_5
    jmp proc_os_env
.call_5:
    mov rax, [ret_stack_rsp]
    add rax, 8
    mov qword [ret_stack_rsp], rax
    mov qword [rax], .call_6
    jmp proc_cstr_cpy
.call_6:
    pop rax
    push str_73
    mov rax, [ret_stack_rsp]
    add rax, 8
    mov qword [ret_stack_rsp], rax
    mov qword [rax], .call_7
    jmp proc_cstr_cat
.call_7:
    pop rax
    push mem+733
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
    push mem+1629
    pop rbx
    pop rax
    mov qword [rax], rbx
    push rax
    push qword 8
    pop rax
    pop rbx
    add rax, rbx
    push rax
    push mem+861
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
    pop rax
    push mem+733
    mov rax, [ret_stack_rsp]
    add rax, 8
    mov qword [ret_stack_rsp], rax
    mov qword [rax], .call_8
    jmp proc_os_execcmdecho
.call_8:
    mov rax, [ret_stack_rsp]
    sub rax, 8
    mov qword [ret_stack_rsp], rax
    add rax, 8
    jmp qword [rax]
proc_parsecmd:
    push mem+2157
    pop rax
    xor rbx, rbx
    mov bl, [rax]
    push rbx
    push qword 34'
    mov rcx, 0
    mov rdx, 1
    pop rax
    pop rbx
    cmp rax, rbx
    cmove rcx, rdx
    push rcx
    push mem+2157
    mov rax, [ret_stack_rsp]
    add rax, 8
    mov qword [ret_stack_rsp], rax
    mov qword [rax], .call_0
    jmp proc_cstr_last
.call_0:
    push qword 34'
    mov rcx, 0
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
    jz .if_0
    push mem+2157
    mov rax, [ret_stack_rsp]
    add rax, 8
    mov qword [ret_stack_rsp], rax
    mov qword [rax], .call_1
    jmp proc_pushstack
.call_1:
    push mem+2157
    mov rax, [ret_stack_rsp]
    add rax, 8
    mov qword [ret_stack_rsp], rax
    mov qword [rax], .call_2
    jmp proc_cstr_clear
.call_2:
    pop rax
    mov rax, [ret_stack_rsp]
    sub rax, 8
    mov qword [ret_stack_rsp], rax
    add rax, 8
    jmp qword [rax]
.if_0:
    push mem+2157
    pop rax
    push rax
    push rax
    push str_75
    mov rax, [ret_stack_rsp]
    add rax, 8
    mov qword [ret_stack_rsp], rax
    mov qword [rax], .call_3
    jmp proc_cstr_eq
.call_3:
    pop rbx
    test rbx, rbx
    jz .if_1
    mov rax, [ret_stack_rsp]
    add rax, 8
    mov qword [ret_stack_rsp], rax
    mov qword [rax], .call_4
    jmp proc_setsrc
.call_4:
    pop rax
    mov rax, [ret_stack_rsp]
    sub rax, 8
    mov qword [ret_stack_rsp], rax
    add rax, 8
    jmp qword [rax]
.if_1:
    pop rax
    push rax
    push rax
    push str_76
    mov rax, [ret_stack_rsp]
    add rax, 8
    mov qword [ret_stack_rsp], rax
    mov qword [rax], .call_5
    jmp proc_cstr_eq
.call_5:
    pop rbx
    test rbx, rbx
    jz .if_2
    mov rax, [ret_stack_rsp]
    add rax, 8
    mov qword [ret_stack_rsp], rax
    mov qword [rax], .call_6
    jmp proc_addreq
.call_6:
    pop rax
    mov rax, [ret_stack_rsp]
    sub rax, 8
    mov qword [ret_stack_rsp], rax
    add rax, 8
    jmp qword [rax]
.if_2:
    pop rax
    push rax
    push rax
    push str_77
    mov rax, [ret_stack_rsp]
    add rax, 8
    mov qword [ret_stack_rsp], rax
    mov qword [rax], .call_7
    jmp proc_cstr_eq
.call_7:
    pop rbx
    test rbx, rbx
    jz .if_3
    mov rax, [ret_stack_rsp]
    add rax, 8
    mov qword [ret_stack_rsp], rax
    mov qword [rax], .call_8
    jmp proc_addbin
.call_8:
    pop rax
    mov rax, [ret_stack_rsp]
    sub rax, 8
    mov qword [ret_stack_rsp], rax
    add rax, 8
    jmp qword [rax]
.if_3:
    pop rax
    push rax
    push rax
    push str_78
    mov rax, [ret_stack_rsp]
    add rax, 8
    mov qword [ret_stack_rsp], rax
    mov qword [rax], .call_9
    jmp proc_cstr_eq
.call_9:
    pop rbx
    test rbx, rbx
    jz .if_4
    mov rax, [ret_stack_rsp]
    add rax, 8
    mov qword [ret_stack_rsp], rax
    mov qword [rax], .call_10
    jmp proc_addlib
.call_10:
    pop rax
    mov rax, [ret_stack_rsp]
    sub rax, 8
    mov qword [ret_stack_rsp], rax
    add rax, 8
    jmp qword [rax]
.if_4:
    pop rax
    push rax
    push rax
    push str_79
    mov rax, [ret_stack_rsp]
    add rax, 8
    mov qword [ret_stack_rsp], rax
    mov qword [rax], .call_11
    jmp proc_cstr_eq
.call_11:
    pop rbx
    test rbx, rbx
    jz .if_5
    mov rax, [ret_stack_rsp]
    add rax, 8
    mov qword [ret_stack_rsp], rax
    mov qword [rax], .call_12
    jmp proc_addlibd
.call_12:
    pop rax
    mov rax, [ret_stack_rsp]
    sub rax, 8
    mov qword [ret_stack_rsp], rax
    add rax, 8
    jmp qword [rax]
.if_5:
    pop rax
    push qword 2
    push qword 0
    mov rax, [ret_stack_rsp]
    add rax, 8
    mov qword [ret_stack_rsp], rax
    mov qword [rax], .call_13
    jmp proc_log_level
.call_13:
    push str_80
    push str_81
    mov rax, [ret_stack_rsp]
    add rax, 8
    mov qword [ret_stack_rsp], rax
    mov qword [rax], .call_14
    jmp proc_log_msg
.call_14:
    push mem+2157
    mov rax, [ret_stack_rsp]
    add rax, 8
    mov qword [ret_stack_rsp], rax
    mov qword [rax], .call_15
    jmp proc_log_cat
.call_15:
    push str_82
    mov rax, [ret_stack_rsp]
    add rax, 8
    mov qword [ret_stack_rsp], rax
    mov qword [rax], .call_16
    jmp proc_log_cat
.call_16:
    push qword 255
    mov rax, 60
    pop rdi
    syscall
proc_checkcmd:
    push mem+2157
    pop rax
    xor rbx, rbx
    mov bl, [rax]
    push rbx
    push qword 34'
    mov rcx, 0
    mov rdx, 1
    pop rax
    pop rbx
    cmp rax, rbx
    cmove rcx, rdx
    push rcx
    push mem+2157
    mov rax, [ret_stack_rsp]
    add rax, 8
    mov qword [ret_stack_rsp], rax
    mov qword [rax], .call_0
    jmp proc_cstr_last
.call_0:
    push qword 34'
    mov rcx, 0
    mov rdx, 1
    pop rbx
    pop rax
    cmp rax, rbx
    cmovne rcx, rdx
    push rcx
    pop rax
    pop rbx
    and rax, rbx
    push rax
    push mem+2157
    push str_83
    mov rax, [ret_stack_rsp]
    add rax, 8
    mov qword [ret_stack_rsp], rax
    mov qword [rax], .call_1
    jmp proc_cstr_eq
.call_1:
    pop rax
    pop rbx
    or rax, rbx
    push rax
    pop rax
    xor rax, 1
    push rax
    mov rax, [ret_stack_rsp]
    sub rax, 8
    mov qword [ret_stack_rsp], rax
    add rax, 8
    jmp qword [rax]
proc_checkbuffer:
    mov rax, [ret_stack_rsp]
    add rax, 8
    mov qword [ret_stack_rsp], rax
    mov qword [rax], .call_0
    jmp proc_checkcmd
.call_0:
    pop rbx
    test rbx, rbx
    jz .if_0
    mov rax, [ret_stack_rsp]
    add rax, 8
    mov qword [ret_stack_rsp], rax
    mov qword [rax], .call_1
    jmp proc_parsecmd
.call_1:
    pop rax
    pop rax
    push mem+2157
    push qword 0
    mov rax, [ret_stack_rsp]
    sub rax, 8
    mov qword [ret_stack_rsp], rax
    add rax, 8
    jmp qword [rax]
.if_0:
    pop rax
    push qword 32
    mov rax, [ret_stack_rsp]
    sub rax, 8
    mov qword [ret_stack_rsp], rax
    add rax, 8
    jmp qword [rax]
proc_parsefile:
    push mem+3182
    push qword 1024
    mov rax, [ret_stack_rsp]
    add rax, 8
    mov qword [ret_stack_rsp], rax
    mov qword [rax], .call_0
    jmp proc_heap_zalloc
.call_0:
    pop rbx
    pop rax
    mov qword [rax], rbx
    push rax
    pop rax
    push mem+2141
    pop rax
    xor rbx, rbx
    mov rbx, [rax]
    push rbx
    push qword 0
    mov rcx, 0
    mov rdx, 1
    pop rax
    pop rbx
    cmp rax, rbx
    cmove rcx, rdx
    push rcx
    pop rbx
    test rbx, rbx
    jz .if_0
    mov rax, [ret_stack_rsp]
    sub rax, 8
    mov qword [ret_stack_rsp], rax
    add rax, 8
    jmp qword [rax]
.if_0:
    push qword 1024
    push qword 1024
    mov rax, [ret_stack_rsp]
    add rax, 8
    mov qword [ret_stack_rsp], rax
    mov qword [rax], .call_1
    jmp proc_heap_zalloc
.call_1:
    push mem+2149
    pop rax
    pop rbx
    push rax
    push rbx
    pop rbx
    pop rax
    mov qword [rax], rbx
    push rax
    pop rax
    xor rbx, rbx
    mov rbx, [rax]
    push rbx
    push mem+2141
    pop rax
    xor rbx, rbx
    mov rbx, [rax]
    push rbx
    mov rax, [ret_stack_rsp]
    add rax, 8
    mov qword [ret_stack_rsp], rax
    mov qword [rax], .call_2
    jmp proc_os_readf
.call_2:
    pop rax
    push mem+2141
    pop rax
    xor rbx, rbx
    mov rbx, [rax]
    push rbx
    push qword 74
    pop rax
    pop rdi
    syscall
    push rax
    pop rax
.do_0:
    push mem+2149
    pop rax
    xor rbx, rbx
    mov rbx, [rax]
    push rbx
    pop rax
    push rax
    push rax
    push mem+2157
.do_1:
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
    mov rcx, 0
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
    mov rcx, 0
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
    mov rcx, 0
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
    mov rcx, 0
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
    jz .if_1
    mov rax, [ret_stack_rsp]
    add rax, 8
    mov qword [ret_stack_rsp], rax
    mov qword [rax], .call_3
    jmp proc_checkbuffer
.call_3:
.if_1:
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
    pop rax
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
    mov rcx, 0
    mov rdx, 1
    pop rbx
    pop rax
    cmp rax, rbx
    cmovne rcx, rdx
    push rcx
    pop rbx
    test rbx, rbx
    jz .if_2
    push qword 1
    pop rax
    pop rbx
    add rax, rbx
    push rax
.if_2:
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
    mov rcx, 0
    mov rdx, 1
    pop rbx
    pop rax
    cmp rax, rbx
    cmovne rcx, rdx
    push rcx
    pop rbx
    test rbx, rbx
    jnz .do_1
    pop rax
    pop rax
    push mem+2149
    pop rax
    pop rbx
    push rax
    push rbx
    pop rbx
    pop rax
    mov qword [rax], rbx
    push rax
    pop rax
    push mem+2149
    pop rax
    xor rbx, rbx
    mov rbx, [rax]
    push rbx
    mov rax, [ret_stack_rsp]
    add rax, 8
    mov qword [ret_stack_rsp], rax
    mov qword [rax], .call_4
    jmp proc_cstr_clear
.call_4:
    push mem+2157
    mov rax, [ret_stack_rsp]
    add rax, 8
    mov qword [ret_stack_rsp], rax
    mov qword [rax], .call_5
    jmp proc_cstr_cpy
.call_5:
    pop rax
    pop rax
    push qword 1024
    push mem+2157
    mov rax, [ret_stack_rsp]
    add rax, 8
    mov qword [ret_stack_rsp], rax
    mov qword [rax], .call_6
    jmp proc_cstr_len
.call_6:
    pop rbx
    pop rax
    sub rax, rbx
    push rax
    push mem+2149
    pop rax
    xor rbx, rbx
    mov rbx, [rax]
    push rbx
    push mem+2157
    mov rax, [ret_stack_rsp]
    add rax, 8
    mov qword [ret_stack_rsp], rax
    mov qword [rax], .call_7
    jmp proc_cstr_len
.call_7:
    pop rax
    pop rbx
    add rax, rbx
    push rax
    push mem+2141
    pop rax
    xor rbx, rbx
    mov rbx, [rax]
    push rbx
    mov rax, [ret_stack_rsp]
    add rax, 8
    mov qword [ret_stack_rsp], rax
    mov qword [rax], .call_8
    jmp proc_os_readf
.call_8:
    pop rax
    push rax
    push rax
    push mem+2149
    pop rax
    xor rbx, rbx
    mov rbx, [rax]
    push rbx
    pop rax
    pop rbx
    add rax, rbx
    push rax
    push mem+2157
    mov rax, [ret_stack_rsp]
    add rax, 8
    mov qword [ret_stack_rsp], rax
    mov qword [rax], .call_9
    jmp proc_cstr_len
.call_9:
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
    mov rcx, 0
    mov rdx, 1
    pop rbx
    pop rax
    cmp rax, rbx
    cmovne rcx, rdx
    push rcx
    pop rbx
    test rbx, rbx
    jz .if_3
    mov rax, [ret_stack_rsp]
    add rax, 8
    mov qword [ret_stack_rsp], rax
    mov qword [rax], .call_10
    jmp proc_cstr_clear
.call_10:
.if_3:
    pop rax
    push mem+2157
    push qword 1024
    mov rax, [ret_stack_rsp]
    add rax, 8
    mov qword [ret_stack_rsp], rax
    mov qword [rax], .call_11
    jmp proc_mem_zero
.call_11:
    pop rbx
    test rbx, rbx
    jnz .do_0
    push mem+2149
    pop rax
    xor rbx, rbx
    mov rbx, [rax]
    push rbx
    mov rax, [ret_stack_rsp]
    add rax, 8
    mov qword [ret_stack_rsp], rax
    mov qword [rax], .call_12
    jmp proc_heap_free
.call_12:
    mov rax, [ret_stack_rsp]
    sub rax, 8
    mov qword [ret_stack_rsp], rax
    add rax, 8
    jmp qword [rax]
proc_init:
    push mem+1117
    mov rax, [ret_stack_rsp]
    add rax, 8
    mov qword [ret_stack_rsp], rax
    mov qword [rax], .call_0
    jmp proc_cstr_clear
.call_0:
    push str_84
    mov rax, [ret_stack_rsp]
    add rax, 8
    mov qword [ret_stack_rsp], rax
    mov qword [rax], .call_1
    jmp proc_os_env
.call_1:
    mov rax, [ret_stack_rsp]
    add rax, 8
    mov qword [ret_stack_rsp], rax
    mov qword [rax], .call_2
    jmp proc_cstr_cpy
.call_2:
    pop rax
    push str_85
    mov rax, [ret_stack_rsp]
    add rax, 8
    mov qword [ret_stack_rsp], rax
    mov qword [rax], .call_3
    jmp proc_cstr_cat
.call_3:
    pop rax
    push mem+1629
    mov rax, [ret_stack_rsp]
    add rax, 8
    mov qword [ret_stack_rsp], rax
    mov qword [rax], .call_4
    jmp proc_cstr_clear
.call_4:
    push str_86
    mov rax, [ret_stack_rsp]
    add rax, 8
    mov qword [ret_stack_rsp], rax
    mov qword [rax], .call_5
    jmp proc_os_env
.call_5:
    mov rax, [ret_stack_rsp]
    add rax, 8
    mov qword [ret_stack_rsp], rax
    mov qword [rax], .call_6
    jmp proc_cstr_cpy
.call_6:
    pop rax
    push str_87
    mov rax, [ret_stack_rsp]
    add rax, 8
    mov qword [ret_stack_rsp], rax
    mov qword [rax], .call_7
    jmp proc_cstr_cat
.call_7:
    pop rax
    push mem+1885
    mov rax, [ret_stack_rsp]
    add rax, 8
    mov qword [ret_stack_rsp], rax
    mov qword [rax], .call_8
    jmp proc_cstr_clear
.call_8:
    push str_88
    mov rax, [ret_stack_rsp]
    add rax, 8
    mov qword [ret_stack_rsp], rax
    mov qword [rax], .call_9
    jmp proc_os_env
.call_9:
    mov rax, [ret_stack_rsp]
    add rax, 8
    mov qword [ret_stack_rsp], rax
    mov qword [rax], .call_10
    jmp proc_cstr_cpy
.call_10:
    pop rax
    push str_89
    mov rax, [ret_stack_rsp]
    add rax, 8
    mov qword [ret_stack_rsp], rax
    mov qword [rax], .call_11
    jmp proc_cstr_cat
.call_11:
    pop rax
    push mem+733
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
    push mem+1117
    pop rbx
    pop rax
    mov qword [rax], rbx
    push rax
    push qword 8
    pop rax
    pop rbx
    add rax, rbx
    push rax
    push mem+1885
    pop rbx
    pop rax
    mov qword [rax], rbx
    push rax
    push qword 8
    pop rax
    pop rbx
    add rax, rbx
    push rax
    push mem+1629
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
    pop rax
    push mem+733
    mov rax, [ret_stack_rsp]
    add rax, 8
    mov qword [ret_stack_rsp], rax
    mov qword [rax], .call_12
    jmp proc_os_execcmdecho
.call_12:
    push mem+1117
    mov rax, [ret_stack_rsp]
    add rax, 8
    mov qword [ret_stack_rsp], rax
    mov qword [rax], .call_13
    jmp proc_cstr_clear
.call_13:
    push str_92
    mov rax, [ret_stack_rsp]
    add rax, 8
    mov qword [ret_stack_rsp], rax
    mov qword [rax], .call_14
    jmp proc_os_env
.call_14:
    mov rax, [ret_stack_rsp]
    add rax, 8
    mov qword [ret_stack_rsp], rax
    mov qword [rax], .call_15
    jmp proc_cstr_cpy
.call_15:
    pop rax
    push str_93
    mov rax, [ret_stack_rsp]
    add rax, 8
    mov qword [ret_stack_rsp], rax
    mov qword [rax], .call_16
    jmp proc_cstr_cat
.call_16:
    pop rax
    push mem+861
    mov rax, [ret_stack_rsp]
    add rax, 8
    mov qword [ret_stack_rsp], rax
    mov qword [rax], .call_17
    jmp proc_cstr_clear
.call_17:
    push mem+1117
    mov rax, [ret_stack_rsp]
    add rax, 8
    mov qword [ret_stack_rsp], rax
    mov qword [rax], .call_18
    jmp proc_cstr_cpy
.call_18:
    pop rax
    push str_94
    mov rax, [ret_stack_rsp]
    add rax, 8
    mov qword [ret_stack_rsp], rax
    mov qword [rax], .call_19
    jmp proc_cstr_cat
.call_19:
    pop rax
    push mem+733
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
    push mem+861
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
    pop rax
    push mem+733
    mov rax, [ret_stack_rsp]
    add rax, 8
    mov qword [ret_stack_rsp], rax
    mov qword [rax], .call_20
    jmp proc_os_execcmdecho
.call_20:
    push mem+733
    push qword 0
    mov rax, [ret_stack_rsp]
    add rax, 8
    mov qword [ret_stack_rsp], rax
    mov qword [rax], .call_21
    jmp proc_os_args
.call_21:
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
    push qword 0
    pop rbx
    pop rax
    mov qword [rax], rbx
    push rax
    pop rax
    push mem+733
    mov rax, [ret_stack_rsp]
    add rax, 8
    mov qword [ret_stack_rsp], rax
    mov qword [rax], .call_22
    jmp proc_os_execcmdecholoud
.call_22:
    push mem+733
    push qword 0
    mov rax, [ret_stack_rsp]
    add rax, 8
    mov qword [ret_stack_rsp], rax
    mov qword [rax], .call_23
    jmp proc_os_args
.call_23:
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
    push str_101
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
    pop rax
    push mem+733
    mov rax, [ret_stack_rsp]
    add rax, 8
    mov qword [ret_stack_rsp], rax
    mov qword [rax], .call_24
    jmp proc_os_execcmdecholoud
.call_24:
    push mem+1885
    mov rax, [ret_stack_rsp]
    add rax, 8
    mov qword [ret_stack_rsp], rax
    mov qword [rax], .call_25
    jmp proc_cstr_clear
.call_25:
    push str_102
    mov rax, [ret_stack_rsp]
    add rax, 8
    mov qword [ret_stack_rsp], rax
    mov qword [rax], .call_26
    jmp proc_os_env
.call_26:
    mov rax, [ret_stack_rsp]
    add rax, 8
    mov qword [ret_stack_rsp], rax
    mov qword [rax], .call_27
    jmp proc_cstr_cpy
.call_27:
    pop rax
    push str_103
    mov rax, [ret_stack_rsp]
    add rax, 8
    mov qword [ret_stack_rsp], rax
    mov qword [rax], .call_28
    jmp proc_cstr_cat
.call_28:
    pop rax
    push mem+1373
    mov rax, [ret_stack_rsp]
    add rax, 8
    mov qword [ret_stack_rsp], rax
    mov qword [rax], .call_29
    jmp proc_cstr_clear
.call_29:
    push str_104
    mov rax, [ret_stack_rsp]
    add rax, 8
    mov qword [ret_stack_rsp], rax
    mov qword [rax], .call_30
    jmp proc_os_env
.call_30:
    mov rax, [ret_stack_rsp]
    add rax, 8
    mov qword [ret_stack_rsp], rax
    mov qword [rax], .call_31
    jmp proc_cstr_cpy
.call_31:
    pop rax
    push str_105
    mov rax, [ret_stack_rsp]
    add rax, 8
    mov qword [ret_stack_rsp], rax
    mov qword [rax], .call_32
    jmp proc_cstr_cat
.call_32:
    pop rax
    push mem+733
    push str_106
    pop rbx
    pop rax
    mov qword [rax], rbx
    push rax
    push qword 8
    pop rax
    pop rbx
    add rax, rbx
    push rax
    push mem+1373
    pop rbx
    pop rax
    mov qword [rax], rbx
    push rax
    push qword 8
    pop rax
    pop rbx
    add rax, rbx
    push rax
    push mem+1885
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
    pop rax
    push mem+733
    mov rax, [ret_stack_rsp]
    add rax, 8
    mov qword [ret_stack_rsp], rax
    mov qword [rax], .call_33
    jmp proc_os_execcmdecholoud
.call_33:
    push mem+1885
    mov rax, [ret_stack_rsp]
    add rax, 8
    mov qword [ret_stack_rsp], rax
    mov qword [rax], .call_34
    jmp proc_cstr_clear
.call_34:
    push str_107
    mov rax, [ret_stack_rsp]
    add rax, 8
    mov qword [ret_stack_rsp], rax
    mov qword [rax], .call_35
    jmp proc_os_env
.call_35:
    mov rax, [ret_stack_rsp]
    add rax, 8
    mov qword [ret_stack_rsp], rax
    mov qword [rax], .call_36
    jmp proc_cstr_cpy
.call_36:
    pop rax
    push str_108
    mov rax, [ret_stack_rsp]
    add rax, 8
    mov qword [ret_stack_rsp], rax
    mov qword [rax], .call_37
    jmp proc_cstr_cat
.call_37:
    pop rax
    push mem+1373
    mov rax, [ret_stack_rsp]
    add rax, 8
    mov qword [ret_stack_rsp], rax
    mov qword [rax], .call_38
    jmp proc_cstr_clear
.call_38:
    push str_109
    mov rax, [ret_stack_rsp]
    add rax, 8
    mov qword [ret_stack_rsp], rax
    mov qword [rax], .call_39
    jmp proc_os_env
.call_39:
    mov rax, [ret_stack_rsp]
    add rax, 8
    mov qword [ret_stack_rsp], rax
    mov qword [rax], .call_40
    jmp proc_cstr_cpy
.call_40:
    pop rax
    push str_110
    mov rax, [ret_stack_rsp]
    add rax, 8
    mov qword [ret_stack_rsp], rax
    mov qword [rax], .call_41
    jmp proc_cstr_cat
.call_41:
    pop rax
    push mem+733
    push str_111
    pop rbx
    pop rax
    mov qword [rax], rbx
    push rax
    push qword 8
    pop rax
    pop rbx
    add rax, rbx
    push rax
    push str_112
    pop rbx
    pop rax
    mov qword [rax], rbx
    push rax
    push qword 8
    pop rax
    pop rbx
    add rax, rbx
    push rax
    push str_113
    pop rbx
    pop rax
    mov qword [rax], rbx
    push rax
    push qword 8
    pop rax
    pop rbx
    add rax, rbx
    push rax
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
    push mem+1885
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
    push str_116
    pop rbx
    pop rax
    mov qword [rax], rbx
    push rax
    push qword 8
    pop rax
    pop rbx
    add rax, rbx
    push rax
    push mem+1373
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
    pop rax
    push mem+733
    mov rax, [ret_stack_rsp]
    add rax, 8
    mov qword [ret_stack_rsp], rax
    mov qword [rax], .call_42
    jmp proc_os_execcmdecholoud
.call_42:
    push mem+1373
    mov rax, [ret_stack_rsp]
    add rax, 8
    mov qword [ret_stack_rsp], rax
    mov qword [rax], .call_43
    jmp proc_cstr_clear
.call_43:
    push str_117
    mov rax, [ret_stack_rsp]
    add rax, 8
    mov qword [ret_stack_rsp], rax
    mov qword [rax], .call_44
    jmp proc_os_env
.call_44:
    mov rax, [ret_stack_rsp]
    add rax, 8
    mov qword [ret_stack_rsp], rax
    mov qword [rax], .call_45
    jmp proc_cstr_cpy
.call_45:
    pop rax
    push str_118
    mov rax, [ret_stack_rsp]
    add rax, 8
    mov qword [ret_stack_rsp], rax
    mov qword [rax], .call_46
    jmp proc_cstr_cat
.call_46:
    pop rax
    push mem+733
    push str_119
    pop rbx
    pop rax
    mov qword [rax], rbx
    push rax
    push qword 8
    pop rax
    pop rbx
    add rax, rbx
    push rax
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
    push mem+1373
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
    pop rax
    push mem+733
    mov rax, [ret_stack_rsp]
    add rax, 8
    mov qword [ret_stack_rsp], rax
    mov qword [rax], .call_47
    jmp proc_os_execcmdecholoud
.call_47:
    push mem+733
    push qword 0
    mov rax, [ret_stack_rsp]
    add rax, 8
    mov qword [ret_stack_rsp], rax
    mov qword [rax], .call_48
    jmp proc_os_args
.call_48:
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
    push str_122
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
    pop rax
    push mem+733
    mov rax, [ret_stack_rsp]
    add rax, 8
    mov qword [ret_stack_rsp], rax
    mov qword [rax], .call_49
    jmp proc_os_execcmdecholoud
.call_49:
    push mem+733
    push qword 0
    mov rax, [ret_stack_rsp]
    add rax, 8
    mov qword [ret_stack_rsp], rax
    mov qword [rax], .call_50
    jmp proc_os_args
.call_50:
    pop rbx
    pop rax
    mov qword [rax], rbx
    push rax
    push qword 8
    pop rax
    pop rbx
    add rax, rbx
    push rax
    push str_123
    pop rbx
    pop rax
    mov qword [rax], rbx
    push rax
    push qword 8
    pop rax
    pop rbx
    add rax, rbx
    push rax
    push str_124
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
    pop rax
    push mem+733
    mov rax, [ret_stack_rsp]
    add rax, 8
    mov qword [ret_stack_rsp], rax
    mov qword [rax], .call_51
    jmp proc_os_execcmdecholoud
.call_51:
    push qword 0
    mov rax, 60
    pop rdi
    syscall
proc_install:
    push qword 2
    mov rax, [args_ptr]
    mov rax, [rax]
    push rax
    mov rcx, 0
    mov rdx, 1
    pop rax
    pop rbx
    cmp rax, rbx
    cmove rcx, rdx
    push rcx
    pop rbx
    test rbx, rbx
    jz .if_0
    push qword 3
    mov rax, [ret_stack_rsp]
    add rax, 8
    mov qword [ret_stack_rsp], rax
    mov qword [rax], .call_0
    jmp proc_help
.call_0:
.if_0:
    push mem+1117
    mov rax, [ret_stack_rsp]
    add rax, 8
    mov qword [ret_stack_rsp], rax
    mov qword [rax], .call_1
    jmp proc_cstr_clear
.call_1:
    push str_125
    mov rax, [ret_stack_rsp]
    add rax, 8
    mov qword [ret_stack_rsp], rax
    mov qword [rax], .call_2
    jmp proc_os_env
.call_2:
    mov rax, [ret_stack_rsp]
    add rax, 8
    mov qword [ret_stack_rsp], rax
    mov qword [rax], .call_3
    jmp proc_cstr_cpy
.call_3:
    pop rax
    push str_126
    mov rax, [ret_stack_rsp]
    add rax, 8
    mov qword [ret_stack_rsp], rax
    mov qword [rax], .call_4
    jmp proc_cstr_cat
.call_4:
    pop rax
    push mem+1629
    mov rax, [ret_stack_rsp]
    add rax, 8
    mov qword [ret_stack_rsp], rax
    mov qword [rax], .call_5
    jmp proc_cstr_clear
.call_5:
    push str_127
    mov rax, [ret_stack_rsp]
    add rax, 8
    mov qword [ret_stack_rsp], rax
    mov qword [rax], .call_6
    jmp proc_os_env
.call_6:
    mov rax, [ret_stack_rsp]
    add rax, 8
    mov qword [ret_stack_rsp], rax
    mov qword [rax], .call_7
    jmp proc_cstr_cpy
.call_7:
    pop rax
    push str_128
    mov rax, [ret_stack_rsp]
    add rax, 8
    mov qword [ret_stack_rsp], rax
    mov qword [rax], .call_8
    jmp proc_cstr_cat
.call_8:
    pop rax
    push mem+1885
    mov rax, [ret_stack_rsp]
    add rax, 8
    mov qword [ret_stack_rsp], rax
    mov qword [rax], .call_9
    jmp proc_cstr_clear
.call_9:
    push str_129
    mov rax, [ret_stack_rsp]
    add rax, 8
    mov qword [ret_stack_rsp], rax
    mov qword [rax], .call_10
    jmp proc_os_env
.call_10:
    mov rax, [ret_stack_rsp]
    add rax, 8
    mov qword [ret_stack_rsp], rax
    mov qword [rax], .call_11
    jmp proc_cstr_cpy
.call_11:
    pop rax
    push str_130
    mov rax, [ret_stack_rsp]
    add rax, 8
    mov qword [ret_stack_rsp], rax
    mov qword [rax], .call_12
    jmp proc_cstr_cat
.call_12:
    pop rax
    push mem+733
    push str_131
    pop rbx
    pop rax
    mov qword [rax], rbx
    push rax
    push qword 8
    pop rax
    pop rbx
    add rax, rbx
    push rax
    push str_132
    pop rbx
    pop rax
    mov qword [rax], rbx
    push rax
    push qword 8
    pop rax
    pop rbx
    add rax, rbx
    push rax
    push mem+1117
    pop rbx
    pop rax
    mov qword [rax], rbx
    push rax
    push qword 8
    pop rax
    pop rbx
    add rax, rbx
    push rax
    push mem+1885
    pop rbx
    pop rax
    mov qword [rax], rbx
    push rax
    push qword 8
    pop rax
    pop rbx
    add rax, rbx
    push rax
    push mem+1629
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
    pop rax
    push mem+861
    mov rax, [ret_stack_rsp]
    add rax, 8
    mov qword [ret_stack_rsp], rax
    mov qword [rax], .call_13
    jmp proc_cstr_clear
.call_13:
    push mem+1117
    mov rax, [ret_stack_rsp]
    add rax, 8
    mov qword [ret_stack_rsp], rax
    mov qword [rax], .call_14
    jmp proc_cstr_cpy
.call_14:
    pop rax
    push qword 2
    mov rax, [ret_stack_rsp]
    add rax, 8
    mov qword [ret_stack_rsp], rax
    mov qword [rax], .call_15
    jmp proc_os_args
.call_15:
    mov rax, [ret_stack_rsp]
    add rax, 8
    mov qword [ret_stack_rsp], rax
    mov qword [rax], .call_16
    jmp proc_cstr_cat
.call_16:
    mov rax, [ret_stack_rsp]
    add rax, 8
    mov qword [ret_stack_rsp], rax
    mov qword [rax], .call_17
    jmp proc_os_fexists
.call_17:
    pop rax
    push rax
    push rax
    pop rbx
    test rbx, rbx
    jz .if_1
    mov rax, [ret_stack_rsp]
    add rax, 8
    mov qword [ret_stack_rsp], rax
    mov qword [rax], .call_18
    jmp proc_pullrepo
.call_18:
.if_1:
    pop rax
    xor rax, 1
    push rax
    pop rbx
    test rbx, rbx
    jz .if_2
    mov rax, [ret_stack_rsp]
    add rax, 8
    mov qword [ret_stack_rsp], rax
    mov qword [rax], .call_19
    jmp proc_clonerepo
.call_19:
.if_2:
    push mem+861
    mov rax, [ret_stack_rsp]
    add rax, 8
    mov qword [ret_stack_rsp], rax
    mov qword [rax], .call_20
    jmp proc_cstr_clear
.call_20:
    push mem+1117
    mov rax, [ret_stack_rsp]
    add rax, 8
    mov qword [ret_stack_rsp], rax
    mov qword [rax], .call_21
    jmp proc_cstr_cpy
.call_21:
    pop rax
    push qword 2
    mov rax, [ret_stack_rsp]
    add rax, 8
    mov qword [ret_stack_rsp], rax
    mov qword [rax], .call_22
    jmp proc_os_args
.call_22:
    mov rax, [ret_stack_rsp]
    add rax, 8
    mov qword [ret_stack_rsp], rax
    mov qword [rax], .call_23
    jmp proc_cstr_cat
.call_23:
    push str_133
    mov rax, [ret_stack_rsp]
    add rax, 8
    mov qword [ret_stack_rsp], rax
    mov qword [rax], .call_24
    jmp proc_cstr_cat
.call_24:
    mov rax, [ret_stack_rsp]
    add rax, 8
    mov qword [ret_stack_rsp], rax
    mov qword [rax], .call_25
    jmp proc_os_fexists
.call_25:
    pop rax
    xor rax, 1
    push rax
    pop rbx
    test rbx, rbx
    jz .if_3
    push str_134
    mov rax, [ret_stack_rsp]
    add rax, 8
    mov qword [ret_stack_rsp], rax
    mov qword [rax], .call_26
    jmp proc_cstr_println
.call_26:
    push mem+861
    mov rax, [ret_stack_rsp]
    add rax, 8
    mov qword [ret_stack_rsp], rax
    mov qword [rax], .call_27
    jmp proc_cstr_println
.call_27:
    push qword 255
    mov rax, 60
    pop rdi
    syscall
.if_3:
    push mem+861
    mov rax, [ret_stack_rsp]
    add rax, 8
    mov qword [ret_stack_rsp], rax
    mov qword [rax], .call_28
    jmp proc_openinput
.call_28:
    push qword 3
    push qword 0
    mov rax, [ret_stack_rsp]
    add rax, 8
    mov qword [ret_stack_rsp], rax
    mov qword [rax], .call_29
    jmp proc_log_level
.call_29:
    push str_135
    push str_136
    mov rax, [ret_stack_rsp]
    add rax, 8
    mov qword [ret_stack_rsp], rax
    mov qword [rax], .call_30
    jmp proc_log_msg
.call_30:
    push mem+861
    mov rax, [ret_stack_rsp]
    add rax, 8
    mov qword [ret_stack_rsp], rax
    mov qword [rax], .call_31
    jmp proc_log_cat
.call_31:
    mov rax, [ret_stack_rsp]
    add rax, 8
    mov qword [ret_stack_rsp], rax
    mov qword [rax], .call_32
    jmp proc_log_log
.call_32:
    push mem+861
    mov rax, [ret_stack_rsp]
    add rax, 8
    mov qword [ret_stack_rsp], rax
    mov qword [rax], .call_33
    jmp proc_cstr_clear
.call_33:
    push mem+1117
    mov rax, [ret_stack_rsp]
    add rax, 8
    mov qword [ret_stack_rsp], rax
    mov qword [rax], .call_34
    jmp proc_cstr_cpy
.call_34:
    push qword 2
    mov rax, [ret_stack_rsp]
    add rax, 8
    mov qword [ret_stack_rsp], rax
    mov qword [rax], .call_35
    jmp proc_os_args
.call_35:
    mov rax, [ret_stack_rsp]
    add rax, 8
    mov qword [ret_stack_rsp], rax
    mov qword [rax], .call_36
    jmp proc_cstr_cat
.call_36:
    pop rax
    mov rax, [ret_stack_rsp]
    add rax, 8
    mov qword [ret_stack_rsp], rax
    mov qword [rax], .call_37
    jmp proc_parsefile
.call_37:
    push qword 0
    mov rax, 60
    pop rdi
    syscall
proc_remove:
    push qword 2
    mov rax, [args_ptr]
    mov rax, [rax]
    push rax
    mov rcx, 0
    mov rdx, 1
    pop rax
    pop rbx
    cmp rax, rbx
    cmove rcx, rdx
    push rcx
    pop rbx
    test rbx, rbx
    jz .if_0
    push qword 3
    mov rax, [ret_stack_rsp]
    add rax, 8
    mov qword [ret_stack_rsp], rax
    mov qword [rax], .call_0
    jmp proc_help
.call_0:
.if_0:
    push qword 0
    mov rax, 60
    pop rdi
    syscall
proc_develop:
    push qword 2
    mov rax, [args_ptr]
    mov rax, [rax]
    push rax
    mov rcx, 0
    mov rdx, 1
    pop rbx
    pop rax
    cmp rax, rbx
    cmovne rcx, rdx
    push rcx
    pop rbx
    test rbx, rbx
    jz .if_0
    push qword 3
    mov rax, [ret_stack_rsp]
    add rax, 8
    mov qword [ret_stack_rsp], rax
    mov qword [rax], .call_0
    jmp proc_help
.call_0:
.if_0:
    mov rax, [ret_stack_rsp]
    add rax, 8
    mov qword [ret_stack_rsp], rax
    mov qword [rax], .call_1
    jmp proc_os_cwd
.call_1:
    mov rax, [ret_stack_rsp]
    add rax, 8
    mov qword [ret_stack_rsp], rax
    mov qword [rax], .call_2
    jmp proc_cstr_println
.call_2:
    push qword 0
    mov rax, 60
    pop rdi
    syscall
proc_main:
    push qword 1
    mov rax, [args_ptr]
    mov rax, [rax]
    push rax
    mov rcx, 0
    mov rdx, 1
    pop rax
    pop rbx
    cmp rax, rbx
    cmove rcx, rdx
    push rcx
    pop rbx
    test rbx, rbx
    jz .if_0
    push qword 1
    mov rax, [ret_stack_rsp]
    add rax, 8
    mov qword [ret_stack_rsp], rax
    mov qword [rax], .call_0
    jmp proc_help
.call_0:
.if_0:
    push qword 1
    mov rax, [ret_stack_rsp]
    add rax, 8
    mov qword [ret_stack_rsp], rax
    mov qword [rax], .call_1
    jmp proc_os_args
.call_1:
    pop rax
    push rax
    push rax
    push str_137
    mov rax, [ret_stack_rsp]
    add rax, 8
    mov qword [ret_stack_rsp], rax
    mov qword [rax], .call_2
    jmp proc_cstr_eq
.call_2:
    pop rbx
    test rbx, rbx
    jz .if_1
    mov rax, [ret_stack_rsp]
    add rax, 8
    mov qword [ret_stack_rsp], rax
    mov qword [rax], .call_3
    jmp proc_init
.call_3:
.if_1:
    pop rax
    push rax
    push rax
    push str_138
    mov rax, [ret_stack_rsp]
    add rax, 8
    mov qword [ret_stack_rsp], rax
    mov qword [rax], .call_4
    jmp proc_cstr_eq
.call_4:
    pop rbx
    test rbx, rbx
    jz .if_2
    mov rax, [ret_stack_rsp]
    add rax, 8
    mov qword [ret_stack_rsp], rax
    mov qword [rax], .call_5
    jmp proc_install
.call_5:
.if_2:
    pop rax
    push rax
    push rax
    push str_139
    mov rax, [ret_stack_rsp]
    add rax, 8
    mov qword [ret_stack_rsp], rax
    mov qword [rax], .call_6
    jmp proc_cstr_eq
.call_6:
    pop rbx
    test rbx, rbx
    jz .if_3
    mov rax, [ret_stack_rsp]
    add rax, 8
    mov qword [ret_stack_rsp], rax
    mov qword [rax], .call_7
    jmp proc_remove
.call_7:
.if_3:
    pop rax
    push rax
    push rax
    push str_140
    mov rax, [ret_stack_rsp]
    add rax, 8
    mov qword [ret_stack_rsp], rax
    mov qword [rax], .call_8
    jmp proc_cstr_eq
.call_8:
    pop rbx
    test rbx, rbx
    jz .if_4
    mov rax, [ret_stack_rsp]
    add rax, 8
    mov qword [ret_stack_rsp], rax
    mov qword [rax], .call_9
    jmp proc_develop
.call_9:
.if_4:
    pop rax
    push qword 2
    mov rax, [ret_stack_rsp]
    add rax, 8
    mov qword [ret_stack_rsp], rax
    mov qword [rax], .call_10
    jmp proc_help
.call_10:
    mov rax, [ret_stack_rsp]
    sub rax, 8
    mov qword [ret_stack_rsp], rax
    add rax, 8
    jmp qword [rax]
_start:
    mov qword [args_ptr], rsp
    mov qword [ret_stack_rsp], ret_stack
    mov rax, [ret_stack_rsp] 
    mov qword [rax], quit
    jmp proc_main
quit:
    mov rax, 60
    mov rdi, 0
    syscall
section '.data'
str_0: db 10, 0 ;\n
str_1: db 83, 116, 114, 105, 110, 103, 32, 105, 115, 32, 110, 111, 116, 32, 97, 32, 110, 117, 109, 98, 101, 114, 0 ;String is not a number
str_2: db 99, 111, 117, 108, 100, 32, 110, 111, 116, 32, 97, 108, 108, 111, 99, 97, 116, 101, 32, 104, 101, 97, 112, 0 ;could not allocate heap
str_3: db 72, 69, 65, 80, 32, 77, 65, 80, 0 ;HEAP MAP
str_4: db 45, 45, 45, 45, 45, 45, 45, 45, 0 ;--------
str_5: db 115, 105, 122, 101, 58, 32, 32, 32, 0 ;size:   
str_6: db 79, 98, 106, 101, 99, 116, 0 ;Object
str_7: db 32, 32, 97, 100, 100, 114, 58, 32, 0 ;  addr: 
str_8: db 32, 32, 115, 105, 122, 101, 58, 32, 0 ;  size: 
str_9: db 117, 115, 101, 100, 58, 32, 0 ;used: 
str_10: db 66, 97, 100, 32, 102, 114, 101, 101, 32, 99, 97, 108, 108, 0 ;Bad free call
str_11: db 66, 97, 100, 32, 114, 101, 97, 108, 108, 111, 99, 32, 99, 97, 108, 108, 0 ;Bad realloc call
str_12: db 101, 91, 49, 59, 51, 49, 109, 0 ;\e[1;31m
str_13: db 91, 0 ;[
str_14: db 93, 32, 0 ;]\ 
str_15: db 101, 91, 48, 59, 48, 109, 0 ;\e[0;0m
str_16: db 101, 91, 48, 59, 51, 50, 109, 0 ;\e[0;32m
str_17: db 91, 0 ;[
str_18: db 93, 32, 0 ;]\ 
str_19: db 101, 91, 48, 59, 48, 109, 0 ;\e[0;0m
str_20: db 101, 91, 48, 59, 51, 51, 109, 0 ;\e[0;33m
str_21: db 91, 0 ;[
str_22: db 93, 32, 0 ;]\ 
str_23: db 101, 91, 48, 59, 48, 109, 0 ;\e[0;0m
str_24: db 91, 0 ;[
str_25: db 93, 32, 0 ;]\ 
str_26: db 69, 82, 82, 79, 82, 58, 32, 99, 97, 110, 116, 32, 111, 112, 101, 110, 32, 47, 100, 101, 118, 47, 110, 117, 108, 108, 0 ;ERROR: cant open /dev/null
str_27: db 47, 100, 101, 118, 47, 110, 117, 108, 108, 0 ;/dev/null
str_28: db 69, 82, 82, 79, 82, 0 ;ERROR
str_29: db 69, 82, 82, 79, 82, 0 ;ERROR
str_30: db 67, 77, 68, 0 ;CMD
str_31: db 82, 117, 110, 58, 32, 0 ;Run: 
str_32: db 32, 0 ; 
str_33: db 67, 77, 68, 0 ;CMD
str_34: db 82, 117, 110, 58, 32, 0 ;Run: 
str_35: db 32, 0 ; 
str_36: db 66, 97, 100, 32, 97, 114, 103, 0 ;Bad arg
str_37: db 69, 114, 114, 111, 114, 32, 111, 112, 101, 110, 105, 110, 103, 32, 102, 105, 108, 101, 0 ;Error opening file
str_38: db 69, 114, 114, 111, 114, 32, 119, 114, 105, 116, 105, 110, 103, 32, 102, 105, 108, 101, 0 ;Error writing file
str_39: db 69, 114, 114, 111, 114, 32, 114, 101, 97, 100, 105, 110, 103, 32, 102, 105, 108, 101, 0 ;Error reading file
str_40: db 69, 114, 114, 111, 114, 32, 99, 108, 111, 115, 105, 110, 103, 32, 102, 105, 108, 101, 0 ;Error closing file
str_41: db 48, 46, 49, 46, 48, 0 ;0.1.0
str_42: db 115, 108, 97, 109, 32, 99, 111, 109, 112, 105, 108, 101, 114, 32, 118, 0 ;slam compiler v
str_43: db 69, 82, 82, 79, 82, 58, 32, 89, 111, 117, 32, 109, 117, 115, 116, 32, 115, 112, 101, 99, 105, 102, 121, 32, 97, 110, 32, 111, 112, 101, 114, 97, 116, 105, 111, 110, 0 ;ERROR: You must specify an operation
str_44: db 69, 82, 82, 79, 82, 58, 32, 73, 110, 118, 97, 108, 105, 100, 32, 111, 112, 101, 114, 97, 116, 105, 111, 110, 32, 96, 0 ;ERROR: Invalid operation `
str_45: db 96, 0 ;`
str_46: db 69, 82, 82, 79, 82, 58, 32, 89, 111, 117, 32, 109, 117, 115, 116, 32, 115, 112, 101, 99, 105, 102, 121, 32, 97, 32, 112, 97, 99, 107, 97, 103, 101, 32, 110, 97, 109, 101, 0 ;ERROR: You must specify a package name
str_47: db 115, 112, 97, 107, 105, 103, 32, 116, 104, 101, 32, 83, 108, 97, 109, 32, 112, 97, 99, 107, 97, 103, 101, 32, 109, 97, 110, 97, 103, 101, 114, 32, 118, 0 ;spakig the Slam package manager v
str_48: db 32, 117, 115, 97, 103, 101, 58, 0 ; usage:
str_49: db 32, 32, 32, 32, 115, 112, 97, 107, 105, 103, 32, 105, 110, 115, 116, 97, 108, 108, 32, 91, 112, 97, 99, 107, 97, 103, 101, 110, 97, 109, 101, 93, 0 ;    spakig install [packagename]
str_50: db 32, 32, 32, 32, 115, 112, 97, 107, 105, 103, 32, 114, 101, 109, 111, 118, 101, 32, 32, 91, 112, 97, 99, 107, 97, 103, 101, 110, 97, 109, 101, 93, 0 ;    spakig remove  [packagename]
str_51: db 32, 32, 32, 32, 115, 112, 97, 107, 105, 103, 32, 105, 110, 105, 116, 0 ;    spakig init
str_52: db 104, 116, 116, 112, 58, 47, 47, 103, 105, 116, 104, 117, 98, 46, 99, 111, 109, 47, 0 ;http://github.com/
str_53: db 47, 117, 115, 114, 47, 98, 105, 110, 47, 103, 105, 116, 0 ;/usr/bin/git
str_54: db 99, 108, 111, 110, 101, 0 ;clone
str_55: db 47, 117, 115, 114, 47, 98, 105, 110, 47, 103, 105, 116, 0 ;/usr/bin/git
str_56: db 45, 67, 0 ;-C
str_57: db 112, 117, 108, 108, 0 ;pull
str_58: db 45, 102, 0 ;-f
str_59: db 45, 113, 0 ;-q
str_60: db 47, 0 ;/
str_61: db 47, 0 ;/
str_62: db 72, 79, 77, 69, 0 ;HOME
str_63: db 47, 46, 108, 111, 99, 97, 108, 47, 115, 108, 97, 109, 47, 98, 105, 110, 47, 115, 112, 97, 107, 105, 103, 0 ;/.local/slam/bin/spakig
str_64: db 105, 110, 115, 116, 97, 108, 108, 0 ;install
str_65: db 46, 115, 108, 109, 0 ;.slm
str_66: db 47, 117, 115, 114, 47, 98, 105, 110, 47, 115, 108, 97, 109, 0 ;/usr/bin/slam
str_67: db 45, 111, 0 ;-o
str_68: db 72, 79, 77, 69, 0 ;HOME
str_69: db 47, 46, 108, 111, 99, 97, 108, 47, 115, 108, 97, 109, 47, 108, 105, 98, 47, 0 ;/.local/slam/lib/
str_70: db 47, 117, 115, 114, 47, 98, 105, 110, 47, 99, 112, 0 ;/usr/bin/cp
str_71: db 45, 114, 0 ;-r
str_72: db 72, 79, 77, 69, 0 ;HOME
str_73: db 47, 46, 108, 111, 99, 97, 108, 47, 115, 108, 97, 109, 47, 108, 105, 98, 47, 0 ;/.local/slam/lib/
str_74: db 47, 117, 115, 114, 47, 98, 105, 110, 47, 99, 112, 0 ;/usr/bin/cp
str_75: db 115, 114, 99, 0 ;src
str_76: db 114, 101, 113, 0 ;req
str_77: db 98, 105, 110, 0 ;bin
str_78: db 108, 105, 98, 0 ;lib
str_79: db 108, 105, 98, 100, 0 ;libd
str_80: db 69, 82, 82, 0 ;ERR
str_81: db 105, 110, 118, 97, 108, 105, 100, 32, 99, 111, 109, 109, 97, 110, 100, 58, 32, 96, 0 ;invalid command: `
str_82: db 96, 0 ;`
str_83: db 34, 0 ;"
str_84: db 72, 79, 77, 69, 0 ;HOME
str_85: db 47, 46, 108, 111, 99, 97, 108, 47, 115, 108, 97, 109, 47, 99, 97, 99, 104, 101, 47, 0 ;/.local/slam/cache/
str_86: db 72, 79, 77, 69, 0 ;HOME
str_87: db 47, 46, 108, 111, 99, 97, 108, 47, 115, 108, 97, 109, 47, 108, 105, 98, 47, 0 ;/.local/slam/lib/
str_88: db 72, 79, 77, 69, 0 ;HOME
str_89: db 47, 46, 108, 111, 99, 97, 108, 47, 115, 108, 97, 109, 47, 98, 105, 110, 47, 0 ;/.local/slam/bin/
str_90: db 47, 117, 115, 114, 47, 98, 105, 110, 47, 109, 107, 100, 105, 114, 0 ;/usr/bin/mkdir
str_91: db 45, 112, 0 ;-p
str_92: db 72, 79, 77, 69, 0 ;HOME
str_93: db 47, 46, 108, 111, 99, 97, 108, 47, 115, 108, 97, 109, 47, 99, 97, 99, 104, 101, 47, 0 ;/.local/slam/cache/
str_94: db 115, 108, 97, 109, 0 ;slam
str_95: db 47, 117, 115, 114, 47, 98, 105, 110, 47, 103, 105, 116, 0 ;/usr/bin/git
str_96: db 99, 108, 111, 110, 101, 0 ;clone
str_97: db 104, 116, 116, 112, 58, 47, 47, 103, 105, 116, 104, 117, 98, 46, 99, 111, 109, 47, 115, 108, 97, 109, 45, 108, 97, 110, 103, 47, 115, 108, 97, 109, 0 ;http://github.com/slam-lang/slam
str_98: db 105, 110, 115, 116, 97, 108, 108, 0 ;install
str_99: db 115, 108, 97, 109, 45, 108, 97, 110, 103, 47, 115, 108, 97, 109, 45, 115, 116, 100, 108, 105, 98, 0 ;slam-lang/slam-stdlib
str_100: db 105, 110, 115, 116, 97, 108, 108, 0 ;install
str_101: db 115, 108, 97, 109, 45, 108, 97, 110, 103, 47, 109, 97, 116, 104, 0 ;slam-lang/math
str_102: db 72, 79, 77, 69, 0 ;HOME
str_103: db 47, 46, 108, 111, 99, 97, 108, 47, 115, 108, 97, 109, 47, 99, 97, 99, 104, 101, 47, 115, 108, 97, 109, 46, 111, 0 ;/.local/slam/cache/slam.o
str_104: db 72, 79, 77, 69, 0 ;HOME
str_105: db 47, 46, 108, 111, 99, 97, 108, 47, 115, 108, 97, 109, 47, 99, 97, 99, 104, 101, 47, 115, 108, 97, 109, 47, 115, 108, 97, 109, 46, 97, 115, 109, 0 ;/.local/slam/cache/slam/slam.asm
str_106: db 47, 117, 115, 114, 47, 98, 105, 110, 47, 102, 97, 115, 109, 0 ;/usr/bin/fasm
str_107: db 72, 79, 77, 69, 0 ;HOME
str_108: db 47, 46, 108, 111, 99, 97, 108, 47, 115, 108, 97, 109, 47, 98, 105, 110, 47, 115, 108, 97, 109, 0 ;/.local/slam/bin/slam
str_109: db 72, 79, 77, 69, 0 ;HOME
str_110: db 47, 46, 108, 111, 99, 97, 108, 47, 115, 108, 97, 109, 47, 99, 97, 99, 104, 101, 47, 115, 108, 97, 109, 46, 111, 0 ;/.local/slam/cache/slam.o
str_111: db 47, 117, 115, 114, 47, 98, 105, 110, 47, 108, 100, 0 ;/usr/bin/ld
str_112: db 45, 100, 121, 110, 97, 109, 105, 99, 45, 108, 105, 110, 107, 101, 114, 0 ;-dynamic-linker
str_113: db 47, 108, 105, 98, 54, 52, 47, 108, 100, 45, 108, 105, 110, 117, 120, 45, 120, 56, 54, 45, 54, 52, 46, 115, 111, 46, 50, 0 ;/lib64/ld-linux-x86-64.so.2
str_114: db 45, 111, 0 ;-o
str_115: db 45, 108, 99, 0 ;-lc
str_116: db 45, 109, 101, 108, 102, 95, 120, 56, 54, 95, 54, 52, 0 ;-melf_x86_64
str_117: db 72, 79, 77, 69, 0 ;HOME
str_118: db 47, 46, 108, 111, 99, 97, 108, 47, 115, 108, 97, 109, 47, 99, 97, 99, 104, 101, 47, 115, 108, 97, 109, 46, 111, 0 ;/.local/slam/cache/slam.o
str_119: db 47, 117, 115, 114, 47, 98, 105, 110, 47, 114, 109, 0 ;/usr/bin/rm
str_120: db 45, 114, 102, 0 ;-rf
str_121: db 105, 110, 115, 116, 97, 108, 108, 0 ;install
str_122: db 115, 108, 97, 109, 45, 108, 97, 110, 103, 47, 115, 112, 97, 107, 105, 103, 0 ;slam-lang/spakig
str_123: db 105, 110, 115, 116, 97, 108, 108, 0 ;install
str_124: db 115, 108, 97, 109, 45, 108, 97, 110, 103, 47, 115, 108, 97, 109, 0 ;slam-lang/slam
str_125: db 72, 79, 77, 69, 0 ;HOME
str_126: db 47, 46, 108, 111, 99, 97, 108, 47, 115, 108, 97, 109, 47, 99, 97, 99, 104, 101, 47, 0 ;/.local/slam/cache/
str_127: db 72, 79, 77, 69, 0 ;HOME
str_128: db 47, 46, 108, 111, 99, 97, 108, 47, 115, 108, 97, 109, 47, 108, 105, 98, 47, 0 ;/.local/slam/lib/
str_129: db 72, 79, 77, 69, 0 ;HOME
str_130: db 47, 46, 108, 111, 99, 97, 108, 47, 115, 108, 97, 109, 47, 98, 105, 110, 47, 0 ;/.local/slam/bin/
str_131: db 47, 117, 115, 114, 47, 98, 105, 110, 47, 109, 107, 100, 105, 114, 0 ;/usr/bin/mkdir
str_132: db 45, 112, 0 ;-p
str_133: db 47, 112, 97, 99, 107, 97, 103, 101, 46, 115, 112, 107, 0 ;/package.spk
str_134: db 69, 82, 82, 79, 82, 58, 32, 78, 111, 32, 112, 97, 99, 107, 97, 103, 101, 32, 102, 105, 108, 101, 32, 105, 110, 32, 114, 101, 112, 111, 0 ;ERROR: No package file in repo
str_135: db 83, 80, 75, 0 ;SPK
str_136: db 73, 110, 115, 116, 97, 108, 108, 105, 110, 103, 32, 0 ;Installing 
str_137: db 105, 110, 105, 116, 0 ;init
str_138: db 105, 110, 115, 116, 97, 108, 108, 0 ;install
str_139: db 114, 101, 109, 111, 118, 101, 0 ;remove
str_140: db 100, 101, 118, 101, 108, 111, 112, 0 ;develop
section '.bss'
args_ptr: rq 1
ret_stack_rsp: rq 1
ret_stack: rb 65536
mem: rb 3198
