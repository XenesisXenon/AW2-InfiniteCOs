; This track was ripped from: fe7-original.gba
; Track offset 0xab13e8
IntoTheDark02:
	.incbin "music/fe7_music/intothedark02-00.bin"
	.byte 0xb3
	.word IntoTheDark02 + 70
	.incbin "music/fe7_music/intothedark02-01.bin"
	.byte 0xb2
	.word IntoTheDark02 + 2
	.byte 0xb1
	.align 4

; blank line