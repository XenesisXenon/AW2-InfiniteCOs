SFX_Warp000WavOffset:
	.incbin "samples/FE7_SFX/samples/SFX_Warp000.bin"
	.align 4

	SFX_Warp000Entry equ 0x00003c00,SFX_Warp000WavOffset,0x00ff00ff

; blank line