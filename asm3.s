.global _start
.intel_syntax noprefix

_start:
    CALL  print_hello_world
    JMP   exit

print_hello_world:
    CALL     find_str_len
    MOV      rax, 0x01
    MOV      rdi, 0x01
    LEA      rsi, [hello_str]
    MOV      rdx, rcx
    SYSCALL
    RET

find_str_len:
   LEA rdi, [hello_str]
   XOR rcx, rcx

.find_len_loop:
   CMP   byte ptr [rdi], 0
   JE   .found

   INC rcx
   INC rdi
   JMP .find_len_loop

.found:
    RET

exit:
    MOV      rax, 0x3c
    MOV      rdi, 0
    SYSCALL

.section .data
    hello_str: .asciz "hello, world!\n"
