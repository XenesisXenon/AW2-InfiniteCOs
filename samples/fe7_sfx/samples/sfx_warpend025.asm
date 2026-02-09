SFX_WarpEnd025WavOffset:
	.incbin "samples/fe7_sfx/samples/sfx_warpend025.bin"
	.align 4

	SFX_WarpEnd025Entry equ 0x00003c00,SFX_WarpEnd025WavOffset,0x00ff00ff

; blank line