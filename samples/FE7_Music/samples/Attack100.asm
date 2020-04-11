Attack100WavOffset:
	.incbin "samples/FE7_Music/samples/Attack100.bin"
	.align 4

	Attack100Entry equ 0x00003c00,Attack100WavOffset,0x59ff00ff

; blank line