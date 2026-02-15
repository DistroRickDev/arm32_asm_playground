/* Define the end of RAM and limit of stack memory */
/* (512KB SRAM on the STM32F767x line, 524288 = 0x80000) */
/* (RAM starts at address 0x20000000) */
_estack = 0x20080000;

MEMORY {
    FLASH   (rx)    :   ORIGIN = 0x08000000,  LENGTH = 2M
    RAM   (rwx)     :   ORIGIN = 0x20000000,  LENGTH = 512K
}