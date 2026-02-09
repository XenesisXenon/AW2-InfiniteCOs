Attack101WavOffset:
	.incbin "samples/fe7_music/samples/attack101.bin"
	.align 4

	Attack101Entry equ 0x00003c00,Attack101WavOffset,0x59ff00ff

; blank line