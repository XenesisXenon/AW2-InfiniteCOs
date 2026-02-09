; This song was ripped from: fe7-original.gba
; Song offset: 0xAA3898
Music_Eliwood1Header:
	.word 0x800a0006
	.word FE7_Eliwood1_Table;Eliwood1Table
	.word Eliwood1Track00
	.word Eliwood1Track01
	.word Eliwood1Track02
	.word Eliwood1Track03
	.word Eliwood1Track04
	.word Eliwood1Track05

	.include "music/fe7_music/eliwood1-data.asm"
