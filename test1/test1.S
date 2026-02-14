.global _start

_exit:
    MOV R0, #0          @ Exit code: 0 (success)
    MOV R7, #1          @ Syscall number for exit
    SVC 0               @ Invoke system call

_start:
	LDR R1,=0xFF200000
	MOV R2,#1
	STR R2,[R1]
	B _exit
