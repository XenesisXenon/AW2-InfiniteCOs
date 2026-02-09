SFX_Warp102WavOffset:
	.incbin "samples/fe7_sfx/samples/sfx_warp102.bin"
	.align 4

	SFX_Warp102Entry equ 0x00003c00,SFX_Warp102WavOffset,0x00ff00ff

; blank line