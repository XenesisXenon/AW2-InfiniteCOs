Eliwood1100WavOffset:
	.incbin "samples/fe7_music/samples/eliwood1100.bin"
	.align 4

	Eliwood1100Entry equ 0x00003c00,Eliwood1100WavOffset,0xa5ff00ff

; blank line