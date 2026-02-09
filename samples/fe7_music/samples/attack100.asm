Attack100WavOffset:
	.incbin "samples/fe7_music/samples/attack100.bin"
	.align 4

	Attack100Entry equ 0x00003c00,Attack100WavOffset,0x59ff00ff

; blank line