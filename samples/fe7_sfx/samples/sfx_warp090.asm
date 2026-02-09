SFX_Warp090WavOffset:
	.incbin "samples/fe7_sfx/samples/sfx_warp090.bin"
	.align 4

	SFX_Warp090Entry equ 0x00003c00,SFX_Warp090WavOffset,0x00ff00ff

; blank line