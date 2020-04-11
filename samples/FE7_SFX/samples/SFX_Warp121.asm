SFX_Warp121WavOffset:
	.incbin "samples/FE7_SFX/samples/SFX_Warp121.bin"
	.align 4

	SFX_Warp121Entry equ 0x00003c00,SFX_Warp121WavOffset,0x00ff00ff

; blank line