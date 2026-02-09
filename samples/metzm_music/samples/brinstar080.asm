Brinstar080WavOffset:
	.incbin "samples/metzm_music/samples/brinstar080.bin"
	.align 4

	Brinstar080Entry equ 0x00003c00,Brinstar080WavOffset,0xf9e70040

; blank line