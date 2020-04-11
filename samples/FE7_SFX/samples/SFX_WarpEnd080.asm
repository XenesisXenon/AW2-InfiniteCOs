SFX_WarpEnd080WavOffset:
	.incbin "samples/FE7_SFX/samples/SFX_WarpEnd080.bin"
	.align 4

	SFX_WarpEnd080Entry equ 0x00003c00,SFX_WarpEnd080WavOffset,0x00ff00ff

; blank line