SFX_WarpEnd030WavOffset:
	.incbin "samples/fe7_sfx/samples/sfx_warpend030.bin"
	.align 4

	SFX_WarpEnd030Entry equ 0x00003c00,SFX_WarpEnd030WavOffset,0x00ff00ff

; blank line