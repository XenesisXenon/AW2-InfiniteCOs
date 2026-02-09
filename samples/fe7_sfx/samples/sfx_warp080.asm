SFX_Warp080WavOffset:
	.incbin "samples/fe7_sfx/samples/sfx_warp080.bin"
	.align 4

	SFX_Warp080Entry equ 0x00003c00,SFX_Warp080WavOffset,0x00ff00ff

; blank line