; This song was ripped from: fe7-original.gba
; Song offset: 0xAC6664
Music_GoingMyWayHeader:
	.word 0x800a0007
	.word FE7_GoingMyWay_Table;GoingMyWayTable
	.word GoingMyWayTrack00
	.word GoingMyWayTrack01
	.word GoingMyWayTrack02
	.word GoingMyWayTrack03
	.word GoingMyWayTrack04
	.word GoingMyWayTrack05
	.word GoingMyWayTrack06

	.include "music/FE7_Music/GoingMyWay-data.asm"
