SFX_WarpEnd001WavOffset:
	.incbin "samples/fe7_sfx/samples/sfx_warpend001.bin"
	.align 4

	SFX_WarpEnd001Entry equ 0x00003c00,SFX_WarpEnd001WavOffset,0x00ff00ff

; blank line