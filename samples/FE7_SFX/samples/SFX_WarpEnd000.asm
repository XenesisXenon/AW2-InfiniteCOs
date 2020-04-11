SFX_WarpEnd000WavOffset:
	.incbin "samples/FE7_SFX/samples/SFX_WarpEnd000.bin"
	.align 4

	SFX_WarpEnd000Entry equ 0x00003c00,SFX_WarpEnd000WavOffset,0x00ff00ff

; blank line