; This song was ripped from: fe7-original.gba
; Song offset: 0xAB4848
Music_FE7AttackHeader:
	.word 0x800a0007
	.word FE7_Attack_Table;AttackTable
	.word AttackTrack00
	.word AttackTrack01
	.word AttackTrack02
	.word AttackTrack03
	.word AttackTrack04
	.word AttackTrack05
	.word AttackTrack06

	.include "music/fe7_music/attack-data.asm"
