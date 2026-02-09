SFX_WarpEnd040WavOffset:
	.incbin "samples/fe7_sfx/samples/sfx_warpend040.bin"
	.align 4

	SFX_WarpEnd040Entry equ 0x00003c00,SFX_WarpEnd040WavOffset,0x00ff00ff

; blank line