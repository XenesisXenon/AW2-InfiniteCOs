SFX_WarpEnd120WavOffset:
	.incbin "samples/fe7_sfx/samples/sfx_warpend120.bin"
	.align 4

	SFX_WarpEnd120Entry equ 0x00003c00,SFX_WarpEnd120WavOffset,0x00ff00ff

; blank line