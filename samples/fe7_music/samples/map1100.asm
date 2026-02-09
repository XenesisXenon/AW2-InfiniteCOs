Map1100WavOffset:
	.incbin "samples/fe7_music/samples/map1100.bin"
	.align 4

	Map1100Entry equ 0x00003c00,Map1100WavOffset,0xa5ff00ff

; blank line