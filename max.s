    .data
Numbers:
    .long 1
    .long 15
    .long 4
    .long 2
    .long 7
    .long 9
    .long 23
    .long 7
    .long 3
    .long 11
Array_length:
    .long 10
format:
    .string "Maximum = %d\n"

    .text
    .globl main
main:
    leaq Numbers(%rip),%rdi
    movl Array_length(%rip),%esi
    movl (%rdi),%eax
    addq $4,%rdi
    subl $1,%esi
loop_label:
    cmpl $0,%esi
    jle done
    cmpl (%rdi),%eax
    jge next
    movl (%rdi),%eax
next:
    addq $4,%rdi
    subl $1,%esi
    jmp loop_label
done:
    leaq format(%rip),%rdi
    movl %eax,%esi
    movl $0,%eax
    subq $8,%rsp
    call printf@PLT
    addq $8,%rsp
    movl $0,%eax
    ret
    .section .note.GNU-stack,"",@progbits
