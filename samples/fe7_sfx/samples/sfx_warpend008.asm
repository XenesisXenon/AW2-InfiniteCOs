SFX_WarpEnd008WavOffset:
	.incbin "samples/fe7_sfx/samples/sfx_warpend008.bin"
	.align 4

	SFX_WarpEnd008Entry equ 0x00003c00,SFX_WarpEnd008WavOffset,0x00ff00ff

; blank line