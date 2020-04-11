SFX_Warp080WavOffset:
	.incbin "samples/FE7_SFX/samples/SFX_Warp080.bin"
	.align 4

	SFX_Warp080Entry equ 0x00003c00,SFX_Warp080WavOffset,0x00ff00ff

; blank line