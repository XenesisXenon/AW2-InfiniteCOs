; This track was ripped from: fe7-original.gba
; Track offset 0xab010d
RiseToTheChallenge02:
	.incbin "music/fe7_music/risetothechallenge02-00.bin"
	.byte 0xb3
	.word RiseToTheChallenge02 + 799
	.incbin "music/fe7_music/risetothechallenge02-01.bin"
	.byte 0xb2
	.word RiseToTheChallenge02 + 155
	.byte 0xb1
	.align 4

; blank line