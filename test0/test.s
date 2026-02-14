
.section .text:
.global _start
_start:
	b _end
	
_end:
	MOV R0,#0
	LDR R7,[R0]
	