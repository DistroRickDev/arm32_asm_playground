MEMORY {
    BOOTLOADER_FLASH    (rx)       :   ORIGIN = 0x08000000,  LENGTH = 16k
    APPLICATION_FLASH   (rx)       :   ORIGIN = 0x08004000,  LENGTH = 1984K
    RAM                 (rwx)      :   ORIGIN = 0x20000000,  LENGTH = 512K
}

SECTIONS {
    
}