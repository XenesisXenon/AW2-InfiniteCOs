Attack051WavOffset:
	.incbin "samples/FE7_Music/samples/Attack051.bin"
	.align 4

	Attack051Entry equ 0x00003c00,Attack051WavOffset,0x59ff00ff

; blank line