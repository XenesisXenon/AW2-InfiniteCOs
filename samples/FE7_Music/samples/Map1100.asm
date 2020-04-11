Map1100WavOffset:
	.incbin "samples/FE7_Music/samples/Map1100.bin"
	.align 4

	Map1100Entry equ 0x00003c00,Map1100WavOffset,0xa5ff00ff

; blank line