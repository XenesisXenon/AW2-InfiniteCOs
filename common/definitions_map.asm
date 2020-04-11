;Common Definitions

AW2_MapID	equ 1
AW2_Map_Total	equ 190

WRH2_MapID	equ AW2_MapID + AW2_Map_Total
WRH2_Map_Total	equ 30

AW1_MapID	equ WRH2_MapID + WRH2_Map_Total + 1 - 115
AW1_Map_Total	equ 48

AWDS_MapID	equ WRH2_MapID + WRH2_Map_Total + AW1_Map_Total + 1 - 223
AWDS_Map_Total	equ 34

AWDS_3p_MapID		equ WRH2_MapID + WRH2_Map_Total + AW1_Map_Total + AWDS_Map_Total
AWDS_3p_Map_Total	equ 3

AWDS_4p_MapID		equ AWDS_3p_MapID + AWDS_3p_Map_Total
AWDS_4p_Map_Total	equ 11

AWDS_War_MapID		equ AWDS_4p_MapID + AWDS_4p_Map_Total
AWDS_War_Map_Total	equ 19

AWDS_Sur_MapID		equ AWDS_War_MapID + AWDS_War_Map_Total
AWDS_Sur_Map_Total	equ 33

AWDS_2p_MapID		equ AWDS_Sur_MapID + AWDS_Sur_Map_Total
AWDS_2p_Map_Total	equ 6

AWDS_Pre_MapID		equ AWDS_2p_MapID + AWDS_2p_Map_Total
AWDS_Pre_Map_Total	equ 11

AWDoR_MapID		equ AWDS_Pre_MapID + AWDS_Pre_Map_Total
AWDoR_2p_Map_Total	equ 99

Custom_MapID		equ AWDoR_MapID + AWDoR_2p_Map_Total
Custom_Map_Total	equ 3

Emblem7_MapID		equ Custom_MapID + Custom_Map_Total
Emblem7_Map_Total	equ 32 + 7

;Defines how many Maps there are
MapHeaderMaximum equ AW2_Map_Total+WRH2_Map_Total+AW1_Map_Total+AWDS_Map_Total+AWDS_3p_Map_Total+AWDS_4p_Map_Total+AWDS_War_Map_Total+AWDS_Sur_Map_Total+AWDS_2p_Map_Total+AWDS_Pre_Map_Total+Custom_Map_Total+AWDoR_2p_Map_Total+Emblem7_Map_Total

;Map Cases
CaseCampaign	equ 0x1
CaseClassic	equ 0x2
CaseVersus	equ 0x3
CasePredeployed	equ 0x4
Case3P		equ 0x5
Case4P		equ 0x6
CaseWarRoom	equ 0x7
CaseDesignMaps	equ 0x8
CaseExtraOne	equ 0x9
CaseExtraTwo	equ 0xA
CaseExtraThree	equ 0xB
CaseExtraFour	equ 0xC
CaseExtraFive	equ 0xD
CaseExtraSix	equ 0xE
CaseExtraSeven	equ 0xF

CaseAW1Campaign		equ CaseExtraOne
CaseAWDSCampaign	equ CaseExtraTwo
CaseAWDSSurvival	equ CaseExtraThree
CaseAWDORVersus		equ CaseExtraFour
CaseAWDoRTrial		equ CaseExtraFive
CaseFireEmblem		equ CaseExtraSix
CaseWarRoomHack2012	equ CaseExtraSeven
CaseAWDSWarRoom		equ CaseExtraSeven

;For Versus Mode Map Case Selection
CaseMinimum	equ	CaseCampaign
CaseMaximum	equ	CaseExtraSeven

;Wallpapers on Completion
VictoryWallpaperRandom		equ 0
VictoryWallpaperStandard	equ 1
VictoryWallpaperTankExplode	equ 2
VictoryWallpaperLaboratory	equ 3
VictoryWallpaperFactory		equ 4
VictoryWallpaperSoldiers	equ 5
VictoryWallpaperShipExplode	equ 6
VictoryWallpaperOrangeStar	equ 7
VictoryWallpaperRiver		equ 8
VictoryWallpaperPlaneExplode	equ 9
VictoryWallpaperBlackCanon	equ 10
VictoryWallpaperTownRubble	equ 11
VictoryWallpaperSilo		equ 12
VictoryWallpaperTankWoods	equ 13
VictoryWallpaperTankFortress	equ 14
VictoryWallpaperSeaFortress	equ 15
VictoryWallpaperTankVolcano	equ 16
VictoryWallpaperCannonBattery	equ 17
VictoryWallpaperDeathray	equ 18

MapSpriteNone 		equ 0x080D2DA8
MapSpriteGiantSilo 	equ 0x080D2DA8
MapSpriteFortress 	equ 0x080D38AC

;Offsets for the Map Header Data Table
Gather_Map_GameVersion	equ	0x5A