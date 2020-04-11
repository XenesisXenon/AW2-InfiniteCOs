SFX_Warp102WavOffset:
	.incbin "samples/FE7_SFX/samples/SFX_Warp102.bin"
	.align 4

	SFX_Warp102Entry equ 0x00003c00,SFX_Warp102WavOffset,0x00ff00ff

; blank line