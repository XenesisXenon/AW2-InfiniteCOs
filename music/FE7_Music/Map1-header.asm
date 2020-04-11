; This song was ripped from: fe7-original.gba
; Song offset: 0xAB6E48
Music_FE7Map1Header:
	.word 0x800a0006
	.word FE7_Map1_Table;Map1Table
	.word Map1Track00
	.word Map1Track01
	.word Map1Track02
	.word Map1Track03
	.word Map1Track04
	.word Map1Track05

	.include "music/FE7_Music/Map1-data.asm"
