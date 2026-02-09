; This track was ripped from: fe7-original.gba
; Track offset 0xaca1e6
NergalsTheme01:
	.incbin "music/fe7_music/nergalstheme01-00.bin"
	.byte 0xb3
	.word NergalsTheme01 + 15
	.incbin "music/fe7_music/nergalstheme01-01.bin"
	.byte 0xb2
	.word NergalsTheme01 + 2
	.byte 0xb1
	.align 4

; blank line