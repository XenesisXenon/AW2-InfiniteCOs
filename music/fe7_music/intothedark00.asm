; This track was ripped from: fe7-original.gba
; Track offset 0xab0f50
IntoTheDark00:
	.incbin "music/fe7_music/intothedark00-00.bin"
	.byte 0xb3
	.word IntoTheDark00 + 37
	.incbin "music/fe7_music/intothedark00-01.bin"
	.byte 0xb2
	.word IntoTheDark00 + 2
	.byte 0xb1
	.align 4

; blank line