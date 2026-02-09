; This track was ripped from: fe7-original.gba
; Track offset 0xab3f88
Attack02:
	.incbin "music/fe7_music/attack02-00.bin"
	.byte 0xb2
	.word Attack02 + 13
	.byte 0xb1
	.align 4

; blank line