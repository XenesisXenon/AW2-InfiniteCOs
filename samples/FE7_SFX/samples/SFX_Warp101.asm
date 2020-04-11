SFX_Warp101WavOffset:
	.incbin "samples/FE7_SFX/samples/SFX_Warp101.bin"
	.align 4

	SFX_Warp101Entry equ 0x00003c00,SFX_Warp101WavOffset,0x00ff00ff

; blank line