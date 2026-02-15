.syntax unified
.cpu cortex-m7
.fpu fpv5-d16
.thumb

.global vector_table
.global reset_handler

.type vector_table,%object
vector_table:
    .word _estack
    .word vector_table
.size vector_table, .-vector_table

.type reset_handler,%function
reset_handler:
  // Set the stack pointer to the end of the stack.
  // The '_estack' value is defined in our linker script.
  LDR  R0, =_estack
  MOV  SP, R0
.size reset_handler, .-reset_handler
