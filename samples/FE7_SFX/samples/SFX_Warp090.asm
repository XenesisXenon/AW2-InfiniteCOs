SFX_Warp090WavOffset:
	.incbin "samples/FE7_SFX/samples/SFX_Warp090.bin"
	.align 4

	SFX_Warp090Entry equ 0x00003c00,SFX_Warp090WavOffset,0x00ff00ff

; blank line