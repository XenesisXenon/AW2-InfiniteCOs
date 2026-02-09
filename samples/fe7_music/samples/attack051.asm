Attack051WavOffset:
	.incbin "samples/fe7_music/samples/attack051.bin"
	.align 4

	Attack051Entry equ 0x00003c00,Attack051WavOffset,0x59ff00ff

; blank line