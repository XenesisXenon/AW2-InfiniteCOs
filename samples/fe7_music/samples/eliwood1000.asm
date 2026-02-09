Eliwood1000WavOffset:
	.incbin "samples/fe7_music/samples/eliwood1000.bin"
	.align 4

	Eliwood1000Entry equ 0x00003c00,Eliwood1000WavOffset,0xa5ff00ff

; blank line