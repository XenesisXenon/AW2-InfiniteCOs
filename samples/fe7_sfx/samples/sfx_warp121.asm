SFX_Warp121WavOffset:
	.incbin "samples/fe7_sfx/samples/sfx_warp121.bin"
	.align 4

	SFX_Warp121Entry equ 0x00003c00,SFX_Warp121WavOffset,0x00ff00ff

; blank line