SFX_Warp120WavOffset:
	.incbin "samples/FE7_SFX/samples/SFX_Warp120.bin"
	.align 4

	SFX_Warp120Entry equ 0x00003c00,SFX_Warp120WavOffset,0x00ff00ff

; blank line