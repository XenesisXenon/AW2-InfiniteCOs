Attack001WavOffset:
	.incbin "samples/fe7_music/samples/attack001.bin"
	.align 4

	Attack001Entry equ 0x00003c00,Attack001WavOffset,0xa5ff00ff

; blank line