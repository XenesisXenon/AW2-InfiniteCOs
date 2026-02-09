Brinstar040WavOffset:
	.incbin "samples/metzm_music/samples/brinstar040.bin"
	.align 4

	Brinstar040Entry equ 0x00003c00,Brinstar040WavOffset,0xfc80bcff

; blank line