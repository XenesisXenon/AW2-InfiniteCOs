SFX_WarpEnd033WavOffset:
	.incbin "samples/fe7_sfx/samples/sfx_warpend033.bin"
	.align 4

	SFX_WarpEnd033Entry equ 0x00003c00,SFX_WarpEnd033WavOffset,0x00ff00ff

; blank line