;HookMusic.asm
;Music Table References

;ImportMusicKirbyClassicLevel equ 0xDD
;.org 0x08242A74
;	.dw KirbyClassicStageHeader
;	.dh 1
;	.dh 1
	
;ImportMusicKirbyBossBattle equ 0xDE
;.org 0x08242A7C
;	.dw KirbyBossBattleHeader
;	.dh 1
;	.dh 1
;ImportMusicKirbyDededeBattle equ 0xDF
;.org 0x8242A84
;	.dw KirbyDededeBattleHeader
;	.dh 1
;	.dh 1

.org 0x8242A8C	
;ImportMusicPhoenixWrightInvestigation equ 0xE0
	.dw PW1InvestigationHeader
	.dh 1
	.dh 1
;	
.org 0x8242A94	
;ImportMusicPhoenixWrightRevealTruth equ 0xE1
	.dw PW1RevealTruthHeader
	.dh 1
	.dh 1
;	
.org 0x8242A9C	
;ImportMusicPhoenixWrightObjection equ 0xE2
	.dw ObjectionHeader
	.dh 1
	.dh 1
;
;ImportMusicFireRedDeoxys equ	0xE3
;	.dw DeoxysBattleHeader
;	.dh 1
;	.dh 1
	
;ImportMusicIoTIncan equ 0xE4
;	.dw IoTIncanHeader
;	.dh 1
;	.dh 1
.org 0x08242AB4
;Music_FireEmblem7_Eliwood1 equ 0xE5
	.dw	Music_Eliwood1Header
	.dh	1
	.dh	1
.org 0x08242ABC
;Music_FireEmblem7_GoingMyWay equ 0xE6
	.dw	Music_GoingMyWayHeader
	.dh	1
	.dh	1
	
.org 0x08242AC4
;Music_FireEmblem7_WinningRoad equ 0xE7
	.dw	Music_WinningRoadHeader
	.dh	1
	.dh	1
	
.org 0x08242ACC
;Music_FireEmblem7_Attack equ 0xE8
	.dw	Music_FE7AttackHeader
	.dh	1
	.dh	1
	
.org 0x08242AD4
;Music_FireEmblem7_Map1 equ 0xE9
	.dw	Music_FE7Map1Header
	.dh	1
	.dh	1	

.org 0x08242ADC
	.dw	Music_MetZMBrinstarHeader
	.dh	1
	.dh	1

.org 0x08242AE4
	.dw	Music_MetZMKraidsLairHeader
	.dh	1
	.dh	1
	
.org 0x08242AEC
	.dw	Music_FE7NergalsThemeHeader
	.dh	1
	.dh	1	
.org 0x08242AF4
	.dw	Music_FE7NergalsWrathHeader
	.dh	1
	.dh	1	
.org 0x08242AFC
	.dw	Music_FE7RiseToTheChallengeHeader
	.dh	1
	.dh	1
.org 0x08242B04
	.dw	Music_FE7IntoTheDarkHeader
	.dh	1
	.dh	1
.org 0x08242B0C
	.dw	SFX_FE7_Warp
	.dh	4
	.dh	4
.org 0x08242B14
	.dw	SFX_FE7_WarpEnd
	.dh	5
	.dh	5
;Blank Line	
