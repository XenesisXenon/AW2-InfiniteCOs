SFX_WarpEnd000WavOffset:
	.incbin "samples/fe7_sfx/samples/sfx_warpend000.bin"
	.align 4

	SFX_WarpEnd000Entry equ 0x00003c00,SFX_WarpEnd000WavOffset,0x00ff00ff

; blank line