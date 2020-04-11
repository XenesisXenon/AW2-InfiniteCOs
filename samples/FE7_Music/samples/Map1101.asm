Map1101WavOffset:
	.incbin "samples/FE7_Music/samples/Map1101.bin"
	.align 4

	Map1101Entry equ 0x00003c00,Map1101WavOffset,0xa5ff00ff

; blank line