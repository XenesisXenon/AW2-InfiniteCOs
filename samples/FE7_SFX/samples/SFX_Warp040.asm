SFX_Warp040WavOffset:
	.incbin "samples/FE7_SFX/samples/SFX_Warp040.bin"
	.align 4

	SFX_Warp040Entry equ 0x00003c00,SFX_Warp040WavOffset,0x00ff00ff

; blank line