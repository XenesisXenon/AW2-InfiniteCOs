;Common Definitions

;To Allocate
TilePaletteBuffer	equ 0x0
TileGraphicsBuffer	equ 0x0
OAMPaletteBuffer	equ 0x0
OAMGraphicsBuffer	equ 0x0
OAMBuffer		equ 0x0

;WRAM
SaveBuffer		equ 0x02000000
ChecksumSaveBuffer	equ 0x02002000
CurrentBattleMapsPoints	equ 0x0200C420

CurrentGameSetupMenu	equ 0x02017C54
	.include	"definitions_ramallocation_versussetup.asm"
TileBG0Buffer		equ 0x0201BC50
TileBG1Buffer		equ 0x0201C450
TileBG2Buffer		equ 0x0201CC50
TileBG3Buffer		equ 0x0201D450

CurrentMapData		equ 0x0201F882
MapTargeting		equ 0x0201FD8A
MapFogOfWarTiles	equ 0x0202079A
Map_TileAllocation_Table	equ 0x020233B0	;0x3FF Long

BasePlayerMemory 	equ 0x020232C0
	.include	"definitions_ramallocation_player.asm"

BaseUnitOffset 		equ 0x02022390
;	.include	"definitions_ramallocation_currentunit.asm"

CurrentMapSelectMenu	equ 0x02027F74

CurrentUnlockedStatus	equ 0x02028030
	.include	"definitions_ramallocation_unlocked.asm"

UnlockedCOMemory	equ CurrentUnlockedStatus+UnlockedCO;0x0202805A

CurrentCampaignOptions	equ 0x02028038
CurrentInventions	equ 0x02028360

;Custom Offsets
CustomMeteorBuffer	equ 0x0201FD80

;IW Ram
SappyTrackBuffer	equ 0x03000658

CustomSwapCORam		equ 0x03000CF0
COSwap_RamFlag		equ CustomSwapCORam+7
Custom_DossierCOBuffer	equ CustomSwapCORam+(8*4)
Custom_PathfindingRAM	equ Custom_DossierCOBuffer+(25*4)
CustomForceRankRAM	equ Custom_PathfindingRAM+4;CustomSwapCORam+(8*4)


CurrentBattle_Defender	equ 0x030013B0
CurrentBattle_Attacker	equ 0x030013D0

KeypadInput_Buffer	equ 0x03002090

CurrentPlayerTurn 	equ 0x030033EC
CurrentGameOptions 	equ 0x03003FC0	;Rules in RAM
	.include	"definitions_ramallocation_gameoptions.asm"
CurrentGameMode		equ CurrentGameOptions+GameRule_GameMode
CurrentGameplayMode	equ CurrentGameMode
CurrentMapNumber 	equ CurrentGameOptions+GameRule_MapID ;0x03003FC2
CurrentFogOfWar		equ CurrentGameOptions+GameRule_FogOfWar ;0x03003FCD
CurrentWeather		equ CurrentGameOptions+GameRule_ActiveWeather;0x03003FEC
CurrentTileset 		equ CurrentGameOptions+GameRule_Tileset 0x03003FEB

System_Frame_Counter 	equ 0x03004008
Turn_Frame_Counter	equ 0x03005AEC

CurrentGameDay		equ 0x03004080
CurrentChanceWeather 	equ 0x03004490
CurrentAIUnitPhase	equ 0x03004770

Current_MapCase			equ 0x0300596C
Custom_HardToggleFlag		equ 0x0300596E
Custom_MapSelectTextClearFlag	equ 0x0300596F
Custom_Versusmenu_ForceBuffer	equ 0x03005970+4	;Length in Players x Force Ranks (25 max)
Custom_BattlemapsToggleFlag	equ 0x03005990
Custom_MapSelect_TSAID		equ 0x03005991	;Holds what tilealloc is currently loaded for the current map.

CurrentCODossierPage		equ 0x03005940
Custom_CurrentCODossierPlayer	equ CurrentCODossierPage+1

SappyTrackBufferRepoint	equ 0x03007000

;Hardware I/O
Video_BG0_Position	equ	0x04000010
Video_BG1_Position	equ	0x04000014
Video_BG2_Position	equ	0x04000018
Video_BG3_Position	equ	0x0400001C


