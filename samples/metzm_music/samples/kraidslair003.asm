KraidsLair003WavOffset:
	.incbin "samples/metzm_music/samples/kraidslair003.bin"
	.align 4

	KraidsLair003Entry equ 0x00003c00,KraidsLair003WavOffset,0xeb80eb40

; blank line