Brinstar100WavOffset:
	.incbin "samples/metzm_music/samples/brinstar100.bin"
	.align 4

	Brinstar100Entry equ 0x00003c00,Brinstar100WavOffset,0xebe70040

; blank line