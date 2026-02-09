SFX_Warp040WavOffset:
	.incbin "samples/fe7_sfx/samples/sfx_warp040.bin"
	.align 4

	SFX_Warp040Entry equ 0x00003c00,SFX_Warp040WavOffset,0x00ff00ff

; blank line