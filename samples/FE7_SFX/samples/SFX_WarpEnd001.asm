SFX_WarpEnd001WavOffset:
	.incbin "samples/FE7_SFX/samples/SFX_WarpEnd001.bin"
	.align 4

	SFX_WarpEnd001Entry equ 0x00003c00,SFX_WarpEnd001WavOffset,0x00ff00ff

; blank line