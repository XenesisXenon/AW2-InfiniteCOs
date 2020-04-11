SFX_Warp001WavOffset:
	.incbin "samples/FE7_SFX/samples/SFX_Warp001.bin"
	.align 4

	SFX_Warp001Entry equ 0x00003c00,SFX_Warp001WavOffset,0x00ff00ff

; blank line