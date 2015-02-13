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
ImportMusicPhoenixWrightInvestigation equ 0xE0
	.dw PW1InvestigationTable
	.dh 1
	.dh 1
	
ImportMusicPhoenixWrightRevealTruth equ 0xE1
	.dw PW1RevealTruthHeader
	.dh 1
	.dh 1
	
ImportMusicPhoenixWrightObjection equ 0xE2
	.dw PW1ObjectionHeader
	.dh 1
	.dh 1

ImportMusicFireRedDeoxys equ	0xE3
	.dw DeoxysBattleHeader
	.dh 1
	.dh 1
	
;ImportMusicIoTIncan equ 0xE4
;	.dw IoTIncanHeader
;	.dh 1
;	.dh 1
	
	
	
;Blank Line	
