Brinstar050WavOffset:
	.incbin "samples/metzm_music/samples/brinstar050.bin"
	.align 4

	Brinstar050Entry equ 0x00003c00,Brinstar050WavOffset,0xf98000ff

; blank line