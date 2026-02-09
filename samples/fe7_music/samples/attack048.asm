Attack048WavOffset:
	.incbin "samples/fe7_music/samples/attack048.bin"
	.align 4

	Attack048Entry equ 0x00003c00,Attack048WavOffset,0x59ff00ff

; blank line