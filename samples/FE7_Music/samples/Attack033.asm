Attack033WavOffset:
	.incbin "samples/FE7_Music/samples/Attack033.bin"
	.align 4

	Attack033Entry equ 0x00003c00,Attack033WavOffset,0xa500fcff

; blank line