SFX_Warp120WavOffset:
	.incbin "samples/fe7_sfx/samples/sfx_warp120.bin"
	.align 4

	SFX_Warp120Entry equ 0x00003c00,SFX_Warp120WavOffset,0x00ff00ff

; blank line