Attack050WavOffset:
	.incbin "samples/FE7_Music/samples/Attack050.bin"
	.align 4

	Attack050Entry equ 0x00003c00,Attack050WavOffset,0x59ff00ff

; blank line