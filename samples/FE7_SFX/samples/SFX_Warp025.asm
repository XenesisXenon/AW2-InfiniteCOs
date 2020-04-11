SFX_Warp025WavOffset:
	.incbin "samples/FE7_SFX/samples/SFX_Warp025.bin"
	.align 4

	SFX_Warp025Entry equ 0x00003c00,SFX_Warp025WavOffset,0x00ff00ff

; blank line