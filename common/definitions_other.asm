;Common Definitions

;GBA System
Button_A	equ 0x1
Button_B	equ 0x2
Button_Select	equ 0x4
Button_Start	equ 0x8
Button_Right	equ 0x10
Button_Left	equ 0x20
Button_Up	equ 0x40
Button_Down	equ 0x80
Button_R	equ 0x100
Button_L	equ 0x200


;Game
Game_AW2		equ 0x0
Game_AW1		equ 0x1
Game_AWDS		equ 0x3
Game_AWDoR		equ 0x4
Game_SFW		equ 0x5
Game_Custom		equ Game_AW2

;System Stuff
System_FramesPerSecond	equ 50

;Booleans
BooleanOn 		equ 0x1
BooleanTrue		equ 0x1
BooleanOff 		equ 0x0
BooleanFalse		equ 0x0

;Player Numbers
PlayerOne			equ 0x1
PlayerTwo			equ 0x2
PlayerThree			equ 0x3
PlayerFour			equ 0x4
	
;Army Types
ArmyOrangeStar 		equ 0x1
ArmyBlueMoon 		equ 0x2
ArmyGreenEarth 		equ 0x3
ArmyYellowComet 	equ 0x4
ArmyBlackHole 		equ 0x5

;Current Weather
CurrentWeatherSnow 	equ 0x1
CurrentWeatherRain 	equ 0x2
CurrentWeatherSandstorm	equ 0x3

;ASM
CPUModeThumb		equ 0x1

;Terrain Classes
TerrainClass_Null		equ 0	;0 
TerrainClass_Plain		equ 1	;1
TerrainClass_River		equ 2	;2
TerrainClass_Mountain		equ 3	;3
TerrainClass_Wood		equ 4	;4
TerrainClass_Road		equ 5	;5
TerrainClass_City		equ 6	;6
TerrainClass_Sea		equ 7	;7
TerrainClass_HQ			equ 8	;8
TerrainClass_Underlay		equ 9	;9
TerrainClass_Airport		equ 10	;A
TerrainClass_Port		equ 11	;B
TerrainClass_Bridge		equ 12	;C
TerrainClass_Shoal		equ 13	;D
TerrainClass_Base		equ 14	;E
TerrainClass_Pipeline		equ 15	;F
TerrainClass_PipelineSeam	equ 16	;10
TerrainClass_Silo		equ 17	;11
TerrainClass_UsedSilo		equ 18	;12
TerrainClass_Reef		equ 19	;13
TerrainClass_Lab		equ 20	;14
TerrainClass_MiniCannonS	equ 21	;15
TerrainClass_MiniCannonN	equ 22	;16
TerrainClass_MiniCannonE	equ 23	;17
TerrainClass_MiniCannonW	equ 24	;18
TerrainClass_Laser		equ 25	;19
TerrainClass_BlackCannonS	equ 26	;1A
TerrainClass_BlackCannonN	equ 27	;1B
TerrainClass_Volcano		equ 28	;1C
TerrainClass_Factory		equ 29	;1D
TerrainClass_Deathray		equ 30	;1E
TerrainClass_CustomTile		equ 31	;1F

;Custom Terrain Clases, after re-allocation
TerrainClass_CommTower		equ 22	;16
Terrain_Strength_CommTower	equ 10	;+10% per Comm Tower

;AWDoR Terrain Classes, Allocate to Existing Terrain
TerrainClass_Wasteland		equ 24		;Wasteland Terrain
TerrainClass_Mist		equ TerrainClass_Reef		;Misty Seas Terrain
TerrainClass_Bridge_S		equ TerrainClass_Bridge		;Ocean Bridges
TerrainClass_Bridge_R		equ TerrainClass_Bridge		;River Bridges
TerrainClass_RoughSea		equ TerrainClass_Sea		;Rough Seas
TerrainClass_Plasma_L		equ TerrainClass_Pipeline	;Plasma (Plains when Cleared)
TerrainClass_Plasma_S		equ TerrainClass_Pipeline	;Plasma (Sea when Cleared)
TerrainClass_TempAir		equ TerrainClass_Plain		;Temporary Airport
TerrainClass_TempPort		equ TerrainClass_Plain		;Temporary Port
TerrainClass_Fire		equ TerrainClass_Mountain	;Fire
TerrainClass_Radar		equ TerrainClass_City		;Radar Stations
TerrainClass_Meteor_L		equ TerrainClass_PipelineSeam	;Meteor (Plains when Cleared)
TerrainClass_Meteor_S		equ TerrainClass_PipelineSeam	;Meteor (Sea when Cleared)
TerrainClass_Ruins		equ 23		;Ruins

TerrainClass_P1				equ 0x20
TerrainClass_P2				equ 0x40
TerrainClass_P3				equ 0x60
TerrainClass_P4				equ 0x80

;Graphics Stuff
Graphics_AWDS_ForceRanks_Icons equ	Graphics_AWDS_ForceRanks_Palette+0x20	

