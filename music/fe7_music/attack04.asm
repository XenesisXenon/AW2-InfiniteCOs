; This track was ripped from: fe7-original.gba
; Track offset 0xab430d
Attack04:
	.incbin "music/fe7_music/attack04-00.bin"
	.byte 0xb2
	.word Attack04 + 10
	.byte 0xb1
	.align 4

; blank line