SFX_Warp096WavOffset:
	.incbin "samples/FE7_SFX/samples/SFX_Warp096.bin"
	.align 4

	SFX_Warp096Entry equ 0x00003c00,SFX_Warp096WavOffset,0x00ff00ff

; blank line