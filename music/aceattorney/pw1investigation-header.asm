; This song was ripped from: gs1.gba
; Song offset: 0x48D18
PW1InvestigationHeader:
	.word 0xbc000006
	.word PW1InvestigationTable
	.word PW1InvestigationTrack00
	.word PW1InvestigationTrack01
	.word PW1InvestigationTrack02
	.word PW1InvestigationTrack03
	.word PW1InvestigationTrack04
	.word PW1InvestigationTrack05

	.include "music/aceattorney/pw1investigation-data.asm"
