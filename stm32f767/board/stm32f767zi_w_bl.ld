MEMORY {
    BOOTLOADER_FLASH    (rx)       :   ORIGIN = 0x08000000,  LENGTH = 16k
    APPLICATION_FLASH   (rx)       :   ORIGIN = 0x08004000,  LENGTH = 1984K
    SRAM1               (rwx)      :   ORIGIN = 0x20020000,  LENGTH = 368K
    SRAM2               (rwx)      :   ORIGIN = 0x2007C000,  LENGTH = 16K
}

SECTIONS {
    
}