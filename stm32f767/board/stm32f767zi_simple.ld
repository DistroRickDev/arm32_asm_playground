MEMORY {
    FLASH   (rx)    :   ORIGIN = 0x08000000,  LENGTH = 2M
    SRAM1   (rwx)   :   ORIGIN = 0x20020000,  LENGTH = 368K
    SRAM2   (rwx)   :   ORIGIN = 0x2007C000,  LENGTH = 16K
}

SECTIONS {
	.text : {
		*(.text)
	} >FLASH
	
	.data (NOLOAD) : {
		*(.data)
	} >SRAM1

    .bss (NOLOAD) : {
        *(.bss)
    } >SRAM2
}