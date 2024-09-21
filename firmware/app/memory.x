MEMORY
{
  /* NOTE 1 K = 1 KiBi = 1024 bytes */
  MBR                               : ORIGIN = 0x00000000, LENGTH = 4K
  SOFTDEVICE                        : ORIGIN = 0x00001000, LENGTH = 148K
  FLASH                             : ORIGIN = 0x00026000, LENGTH = 324K
  BOOTLOADER                        : ORIGIN = 0x00077000, LENGTH = 32K
  BOOTLOADER_STATE                  : ORIGIN = 0x0007F000, LENGTH = 4K

  DFU                               : ORIGIN = 0x00000000, LENGTH = 328K

  RAM                               : ORIGIN = 0x20000008, LENGTH = 32760
}

__bootloader_state_start = ORIGIN(BOOTLOADER_STATE);
__bootloader_state_end = ORIGIN(BOOTLOADER_STATE) + LENGTH(BOOTLOADER_STATE);

__bootloader_dfu_start = ORIGIN(DFU);
__bootloader_dfu_end = ORIGIN(DFU) + LENGTH(DFU);
