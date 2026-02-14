.global _start

.section .data

.section .bss

.section .text
    LDR R0,=0x08000000
    MOV R1,#1
    STR R1,[R0]
