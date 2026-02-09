; This track was ripped from: fe7-original.gba
; Track offset 0xac6108
GoingMyWay01:
	.incbin "music/fe7_music/goingmyway01-00.bin"
	.byte 0xb3
	.word GoingMyWay01 + 24
	.byte 0xb3
	.word GoingMyWay01 + 24
	.incbin "music/fe7_music/goingmyway01-01.bin"
	.byte 0xb3
	.word GoingMyWay01 + 72
	.byte 0xb3
	.word GoingMyWay01 + 72
	.incbin "music/fe7_music/goingmyway01-02.bin"
	.byte 0xb3
	.word GoingMyWay01 + 120
	.incbin "music/fe7_music/goingmyway01-03.bin"
	.byte 0xb2
	.word GoingMyWay01 + 2
	.byte 0xb1
	.align 4

; blank line