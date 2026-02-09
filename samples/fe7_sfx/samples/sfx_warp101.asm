SFX_Warp101WavOffset:
	.incbin "samples/fe7_sfx/samples/sfx_warp101.bin"
	.align 4

	SFX_Warp101Entry equ 0x00003c00,SFX_Warp101WavOffset,0x00ff00ff

; blank line