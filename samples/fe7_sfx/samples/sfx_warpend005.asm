SFX_WarpEnd005WavOffset:
	.incbin "samples/fe7_sfx/samples/sfx_warpend005.bin"
	.align 4

	SFX_WarpEnd005Entry equ 0x00003c00,SFX_WarpEnd005WavOffset,0x00ff00ff

; blank line