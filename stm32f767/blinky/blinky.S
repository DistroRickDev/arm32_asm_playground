.section .data

.section .bss

.section .text
.global _start

enable_rcc_register:
    @RCC Register 0x40023800
    @RCC_AHB1ENR OFFSET 0x30
    LDR R0,=0x40023800
    MOV R1,#0x04
    STR R1,[R0, #0x30]
    
@User LD1: a green user LED is connected to the STM32 I/O PB0 (SB120 ON and SB119
@OFF) or PA5 (SB119 ON and SB120 OFF) corresponding to the ST Zio D13.
@User LD2: a blue user LED is connected to PB7.
@User LD3: a red user LED is connected to PB14.
@GPIOB 0x40020400 - 0x400207FF
@GPIOx_ODR offset 0x14

set_led_gpio_out:
    LDR R0, =0x40020400
    MOV R1, #0x1000
    STR R1, [R0] 

turn_on_led2:
    LDR R0,=0x40020400
    MOV R1,#0x07
    STR R1, [R0, #0x14]

_start:
    B enable_rcc_register
    B set_led_gpio_out
    B turn_on_led2
