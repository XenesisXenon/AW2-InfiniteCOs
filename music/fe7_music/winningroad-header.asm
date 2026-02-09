; This song was ripped from: fe7-original.gba
; Song offset: 0xAA8CB0
Music_WinningRoadHeader:
	.word 0x800a0006
	.word FE7_WinningRoad_Table;WinningRoadTable
	.word WinningRoadTrack00
	.word WinningRoadTrack01
	.word WinningRoadTrack02
	.word WinningRoadTrack03
	.word WinningRoadTrack04
	.word WinningRoadTrack05

	.include "music/fe7_music/winningroad-data.asm"
