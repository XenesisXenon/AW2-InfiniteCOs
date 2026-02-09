Attack050WavOffset:
	.incbin "samples/fe7_music/samples/attack050.bin"
	.align 4

	Attack050Entry equ 0x00003c00,Attack050WavOffset,0x59ff00ff

; blank line