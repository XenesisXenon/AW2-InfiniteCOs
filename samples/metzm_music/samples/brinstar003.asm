Brinstar003WavOffset:
	.incbin "samples/metzm_music/samples/brinstar003.bin"
	.align 4

	Brinstar003Entry equ 0x00003c00,Brinstar003WavOffset,0xeb80eb40

; blank line