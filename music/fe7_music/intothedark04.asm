; This track was ripped from: fe7-original.gba
; Track offset 0xab1823
IntoTheDark04:
	.incbin "music/fe7_music/intothedark04-00.bin"
	.byte 0xb3
	.word IntoTheDark04 + 30
	.incbin "music/fe7_music/intothedark04-01.bin"
	.byte 0xb2
	.word IntoTheDark04 + 2
	.byte 0xb1
	.align 4

; blank line