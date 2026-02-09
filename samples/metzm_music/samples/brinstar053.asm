Brinstar053WavOffset:
	.incbin "samples/metzm_music/samples/brinstar053.bin"
	.align 4

	Brinstar053Entry equ 0x00003c00,Brinstar053WavOffset,0xeb8000ff

; blank line