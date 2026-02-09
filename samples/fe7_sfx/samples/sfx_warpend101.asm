SFX_WarpEnd101WavOffset:
	.incbin "samples/fe7_sfx/samples/sfx_warpend101.bin"
	.align 4

	SFX_WarpEnd101Entry equ 0x00003c00,SFX_WarpEnd101WavOffset,0x00ff00ff

; blank line