;hook32tileallocation.asm
;Defines the Behaviour for each of the 32x32 Tiles
;0x400 Tiles in Total

.org 0x080C1BC4
Table_TileTerrain_Alloc:
	;0x0
	.db	TerrainClass_Null
	.db	TerrainClass_Plain	
	.db	TerrainClass_Mountain
	.db	TerrainClass_Plain
	.db	TerrainClass_Plain
	.db	TerrainClass_Null
	.db	TerrainClass_Null
	.db	TerrainClass_Null
	.db	TerrainClass_Sea
	.db	TerrainClass_Sea
	.db	TerrainClass_Sea
	.db	TerrainClass_Sea
	.db	TerrainClass_Sea
	.db	TerrainClass_Sea
	.db	TerrainClass_Null
	.db	TerrainClass_Null
	
	;0x10
	.db	TerrainClass_Shoal
	.db	TerrainClass_Null
	.db	TerrainClass_Null
	.db	TerrainClass_Bridge
	.db	TerrainClass_Bridge
	.db	TerrainClass_Bridge
	.db	TerrainClass_Bridge
	.db	TerrainClass_Sea
	.db	TerrainClass_River
	.db	TerrainClass_River
	.db	TerrainClass_River
	.db	TerrainClass_River
	.db	TerrainClass_River
	.db	TerrainClass_River
	.db	TerrainClass_River
	.db	TerrainClass_River
		
	;0x20
	.db	TerrainClass_Mountain
	.db	TerrainClass_Plain
	.db	TerrainClass_Mountain
	.db	TerrainClass_Mountain
	.db	TerrainClass_Wood
	.db	TerrainClass_Wood
	.db	TerrainClass_Wood
	.db	TerrainClass_Wood
	.db	TerrainClass_Sea
	.db	TerrainClass_Sea
	.db	TerrainClass_Sea
	.db	TerrainClass_Sea
	.db	TerrainClass_Sea
	.db	TerrainClass_Sea
	.db	TerrainClass_Shoal
	.db	TerrainClass_Shoal
		
	;0x30
	.db	TerrainClass_Null
	.db	TerrainClass_Shoal
	.db	TerrainClass_Shoal
	.db	TerrainClass_Sea
	.db	TerrainClass_Sea
	.db	TerrainClass_Sea
	.db	TerrainClass_Bridge
	.db	TerrainClass_Sea
	.db	TerrainClass_River
	.db	TerrainClass_River
	.db	TerrainClass_River
	.db	TerrainClass_Null
	.db	TerrainClass_River
	.db	TerrainClass_River
	.db	TerrainClass_Null
	.db	TerrainClass_Null
		
	;0x40
	.db	TerrainClass_Road
	.db	TerrainClass_Road
	.db	TerrainClass_Road
	.db	TerrainClass_Plain
	.db	TerrainClass_Wood
	.db	TerrainClass_Wood
	.db	TerrainClass_Wood
	.db	TerrainClass_Wood
	.db	TerrainClass_Sea
	.db	TerrainClass_Sea
	.db	TerrainClass_Sea
	.db	TerrainClass_Sea
	.db	TerrainClass_Sea
	.db	TerrainClass_Null
	.db	TerrainClass_Null
	.db	TerrainClass_Shoal
		
	;0x50
	.db	TerrainClass_Shoal
	.db	TerrainClass_Shoal
	.db	TerrainClass_Null
	.db	TerrainClass_Shoal
	.db	TerrainClass_Shoal
	.db	TerrainClass_Shoal
	.db	TerrainClass_Null
	.db	TerrainClass_River
	.db	TerrainClass_River
	.db	TerrainClass_River
	.db	TerrainClass_River
	.db	TerrainClass_River
	.db	TerrainClass_River
	.db	TerrainClass_River
	.db	TerrainClass_River
	.db	TerrainClass_River
		
	;0x60
	.db	TerrainClass_Road
	.db	TerrainClass_Road
	.db	TerrainClass_Road
	.db	TerrainClass_Null
	.db	TerrainClass_Wood
	.db	TerrainClass_Wood
	.db	TerrainClass_Wood
	.db	TerrainClass_Wood
	.db	TerrainClass_Sea
	.db	TerrainClass_Sea
	.db	TerrainClass_Sea
	.db	TerrainClass_Sea
	.db	TerrainClass_Sea
	.db	TerrainClass_Shoal
	.db	TerrainClass_Shoal
	.db	TerrainClass_Null
		
	;0x70
	.db	TerrainClass_Null
	.db	TerrainClass_Null
	.db	TerrainClass_Null
	.db	TerrainClass_Null
	.db	TerrainClass_Null
	.db	TerrainClass_Shoal
	.db	TerrainClass_Null
	.db	TerrainClass_Null
	.db	TerrainClass_River
	.db	TerrainClass_River
	.db	TerrainClass_River
	.db	TerrainClass_River
	.db	TerrainClass_River
	.db	TerrainClass_River
	.db	TerrainClass_River
	.db	TerrainClass_River
		
	;0x80
	.db	TerrainClass_Road
	.db	TerrainClass_Road
	.db	TerrainClass_Road
	.db	TerrainClass_Road
	.db	TerrainClass_Road
	.db	TerrainClass_Road
	.db	TerrainClass_Wood
	.db	TerrainClass_Wood
	.db	TerrainClass_Sea
	.db	TerrainClass_Sea
	.db	TerrainClass_Sea
	.db	TerrainClass_Sea
	.db	TerrainClass_Null
	.db	TerrainClass_Null
	.db	TerrainClass_Null
	.db	TerrainClass_Shoal
		
	;0x90
	.db	TerrainClass_Null
	.db	TerrainClass_Null
	.db	TerrainClass_Shoal
	.db	TerrainClass_Shoal
	.db	TerrainClass_Null
	.db	TerrainClass_Null
	.db	TerrainClass_Null
	.db	TerrainClass_Null
	.db	TerrainClass_River
	.db	TerrainClass_River
	.db	TerrainClass_River
	.db	TerrainClass_River
	.db	TerrainClass_River
	.db	TerrainClass_River
	.db	TerrainClass_River
	.db	TerrainClass_River
		
	;0xA0
	.db	TerrainClass_Road
	.db	TerrainClass_Road
	.db	TerrainClass_Road
	.db	TerrainClass_Road
	.db	TerrainClass_Road
	.db	TerrainClass_Road
	.db	TerrainClass_Wood
	.db	TerrainClass_Wood
	.db	TerrainClass_Sea
	.db	TerrainClass_Sea
	.db	TerrainClass_Sea
	.db	TerrainClass_Sea
	.db	TerrainClass_Null
	.db	TerrainClass_Null
	.db	TerrainClass_Null
	.db	TerrainClass_Shoal
		
	;0xB0
	.db	TerrainClass_Shoal
	.db	TerrainClass_Null
	.db	TerrainClass_Shoal
	.db	TerrainClass_Shoal
	.db	TerrainClass_Null
	.db	TerrainClass_Null
	.db	TerrainClass_Shoal
	.db	TerrainClass_Shoal
	.db	TerrainClass_River
	.db	TerrainClass_River
	.db	TerrainClass_River
	.db	TerrainClass_River
	.db	TerrainClass_River
	.db	TerrainClass_River
	.db	TerrainClass_River
	.db	TerrainClass_River
		
	;0xC0
	.db	TerrainClass_Road
	.db	TerrainClass_Road
	.db	TerrainClass_Road
	.db	TerrainClass_Road
	.db	TerrainClass_Road
	.db	TerrainClass_Road
	.db	TerrainClass_Wood
	.db	TerrainClass_Wood
	.db	TerrainClass_Sea
	.db	TerrainClass_Sea
	.db	TerrainClass_Null
	.db	TerrainClass_Null
	.db	TerrainClass_Null
	.db	TerrainClass_Shoal
	.db	TerrainClass_Shoal
	.db	TerrainClass_Shoal
		
	;0xD0
	.db	TerrainClass_Shoal
	.db	TerrainClass_Null
	.db	TerrainClass_Shoal
	.db	TerrainClass_Shoal
	.db	TerrainClass_Null
	.db	TerrainClass_Null
	.db	TerrainClass_Shoal
	.db	TerrainClass_Shoal
	.db	TerrainClass_River
	.db	TerrainClass_River
	.db	TerrainClass_River
	.db	TerrainClass_River
	.db	TerrainClass_River
	.db	TerrainClass_River
	.db	TerrainClass_River
	.db	TerrainClass_River
		
	;0xE0
	.db	TerrainClass_Road
	.db	TerrainClass_Road
	.db	TerrainClass_Road
	.db	TerrainClass_Road
	.db	TerrainClass_Road
	.db	TerrainClass_Road
	.db	TerrainClass_Wood
	.db	TerrainClass_Null
	.db	TerrainClass_Sea
	.db	TerrainClass_Sea
	.db	TerrainClass_Sea
	.db	TerrainClass_Sea
	.db	TerrainClass_Sea
	.db	TerrainClass_Null
	.db	TerrainClass_Null
	.db	TerrainClass_Shoal
		
	;0xF0
	.db	TerrainClass_Null
	.db	TerrainClass_Null
	.db	TerrainClass_Shoal
	.db	TerrainClass_Shoal
	.db	TerrainClass_Null
	.db	TerrainClass_Null
	.db	TerrainClass_Null
	.db	TerrainClass_Null
	.db	TerrainClass_River
	.db	TerrainClass_River
	.db	TerrainClass_River
	.db	TerrainClass_River
	.db	TerrainClass_River
	.db	TerrainClass_River
	.db	TerrainClass_Null
	.db	TerrainClass_Null
		
	;0x100
	.db	TerrainClass_Road
	.db	TerrainClass_Road
	.db	TerrainClass_Pipeline
	.db	TerrainClass_Pipeline
	.db	TerrainClass_Road
	.db	TerrainClass_Road
	.db	TerrainClass_Plain
	.db	TerrainClass_Plain
	.db	TerrainClass_Sea
	.db	TerrainClass_Sea
	.db	TerrainClass_Sea
	.db	TerrainClass_Sea
	.db	TerrainClass_Sea
	.db	TerrainClass_Null
	.db	TerrainClass_Null
	.db	TerrainClass_Null
	
	;0x110
	.db	TerrainClass_Null
	.db	TerrainClass_Null
	.db	TerrainClass_Shoal
	.db	TerrainClass_Shoal
	.db	TerrainClass_Null
	.db	TerrainClass_Null
	.db	TerrainClass_Null
	.db	TerrainClass_Null
	.db	TerrainClass_River
	.db	TerrainClass_River
	.db	TerrainClass_River
	.db	TerrainClass_River
	.db	TerrainClass_River
	.db	TerrainClass_River
	.db	TerrainClass_Null
	.db	TerrainClass_Null
		
	;0x120
	.db	TerrainClass_Pipeline
	.db	TerrainClass_Pipeline
	.db	TerrainClass_Plain
	.db	TerrainClass_Plain
	.db	TerrainClass_Road
	.db	TerrainClass_Road
	.db	TerrainClass_Plain
	.db	TerrainClass_Plain
	.db	TerrainClass_Sea
	.db	TerrainClass_Sea
	.db	TerrainClass_Sea
	.db	TerrainClass_Sea
	.db	TerrainClass_Sea
	.db	TerrainClass_Null
	.db	TerrainClass_Null
	.db	TerrainClass_Null
		
	;0x130
	.db	TerrainClass_Null
	.db	TerrainClass_Null
	.db	TerrainClass_Null
	.db	TerrainClass_Null
	.db	TerrainClass_Null
	.db	TerrainClass_Null
	.db	TerrainClass_Null
	.db	TerrainClass_Null
	.db	TerrainClass_River
	.db	TerrainClass_River
	.db	TerrainClass_Null
	.db	TerrainClass_Null
	.db	TerrainClass_Null
	.db	TerrainClass_Null
	.db	TerrainClass_Null
	.db	TerrainClass_Null
		
	;0x140
	.db	TerrainClass_Pipeline
	.db	TerrainClass_Pipeline
	.db	TerrainClass_Pipeline
	.db	TerrainClass_Pipeline
	.db	TerrainClass_Road
	.db	TerrainClass_Road
	.db	TerrainClass_Mountain;TerrainClass_Null	;AWDS Mountains
	.db	TerrainClass_Mountain;TerrainClass_Null
	.db	TerrainClass_Null
	.db	TerrainClass_Null
	.db	TerrainClass_Null
	.db	TerrainClass_Null
	.db	TerrainClass_Null
	.db	TerrainClass_Null
	.db	TerrainClass_Null
	.db	TerrainClass_Null
		
	;0x150
	.db	TerrainClass_Null
	.db	TerrainClass_Null
	.db	TerrainClass_Null
	.db	TerrainClass_Null
	.db	TerrainClass_Null
	.db	TerrainClass_Null
	.db	TerrainClass_Null
	.db	TerrainClass_Null
	.db	TerrainClass_Null
	.db	TerrainClass_Null
	.db	TerrainClass_Null
	.db	TerrainClass_Null
	.db	TerrainClass_Null
	.db	TerrainClass_Null
	.db	TerrainClass_Null
	.db	TerrainClass_Null
		
	;0x160
	.db	TerrainClass_Pipeline
	.db	TerrainClass_Pipeline
	.db	TerrainClass_PipelineSeam
	.db	TerrainClass_PipelineSeam
	.db	TerrainClass_Road
	.db	TerrainClass_Road
	.db	TerrainClass_Null
	.db	TerrainClass_Null
	.db	TerrainClass_Reef
	.db	TerrainClass_Null
	.db	TerrainClass_Null
	.db	TerrainClass_Null
	.db	TerrainClass_Null
	.db	TerrainClass_Null
	.db	TerrainClass_Null
	.db	TerrainClass_Null
		
	;0x170
	.db	TerrainClass_Null
	.db	TerrainClass_Null
	.db	TerrainClass_Null
	.db	TerrainClass_Null
	.db	TerrainClass_Null
	.db	TerrainClass_Null
	.db	TerrainClass_Null
	.db	TerrainClass_Null
	.db	TerrainClass_Null
	.db	TerrainClass_Null
	.db	TerrainClass_Null
	.db	TerrainClass_Null
	.db	TerrainClass_Null
	.db	TerrainClass_Null
	.db	TerrainClass_Null
	.db	TerrainClass_Null
		
	;0x180
	.db	TerrainClass_Silo
	.db	TerrainClass_Laser
	.db	TerrainClass_MiniCannonS
	.db	TerrainClass_MiniCannonS;TerrainClass_MiniCannonN
	.db	TerrainClass_MiniCannonS;TerrainClass_MiniCannonE
	.db	TerrainClass_MiniCannonS;TerrainClass_MiniCannonW
	.db	TerrainClass_Underlay
	.db	TerrainClass_BlackCannonS
	.db	TerrainClass_Underlay
	.db	TerrainClass_Underlay
	.db	TerrainClass_BlackCannonN
	.db	TerrainClass_Underlay
	.db	TerrainClass_Underlay
	.db	TerrainClass_Factory
	.db	TerrainClass_Underlay
	.db	TerrainClass_Underlay
		
	;0x190
	.db	TerrainClass_Deathray
	.db	TerrainClass_Underlay
	.db	TerrainClass_Null
	.db	TerrainClass_Null
	.db	TerrainClass_Null
	.db	TerrainClass_Null
	.db	TerrainClass_Null
	.db	TerrainClass_Null
	.db	TerrainClass_Null
	.db	TerrainClass_Null
	.db	TerrainClass_Null
	.db	TerrainClass_Null
	.db	TerrainClass_Null
	.db	TerrainClass_Null
	.db	TerrainClass_Null
	.db	TerrainClass_Null
		
	;0x1A0
	.db	TerrainClass_UsedSilo
	.db	TerrainClass_Plain;TerrainClass_Null
	.db	TerrainClass_Volcano;TerrainClass_Null
	.db	TerrainClass_Volcano;TerrainClass_Null
	.db	TerrainClass_Underlay
	.db	TerrainClass_Underlay
	.db	TerrainClass_Underlay
	.db	TerrainClass_Volcano
	.db	TerrainClass_Underlay
	.db	TerrainClass_Underlay
	.db	TerrainClass_Underlay
	.db	TerrainClass_CustomTile
	.db	TerrainClass_Underlay
	.db	TerrainClass_Underlay
	.db	TerrainClass_Underlay
	.db	TerrainClass_CustomTile
		
	;0x1B0
	.db	TerrainClass_Underlay
	.db	TerrainClass_Underlay
	.db	TerrainClass_Null
	.db	TerrainClass_Null
	.db	TerrainClass_Null
	.db	TerrainClass_Null
	.db	TerrainClass_Null
	.db	TerrainClass_Null
	.db	TerrainClass_Null
	.db	TerrainClass_CommTower;TerrainClass_Null	;This is for AWDS Map Towers
	.db	TerrainClass_CommTower + TerrainClass_P1;TerrainClass_Null
	.db	TerrainClass_CommTower + TerrainClass_P2;TerrainClass_Null
	.db	TerrainClass_CommTower + TerrainClass_P3;TerrainClass_Null
	.db	TerrainClass_CommTower + TerrainClass_P4;TerrainClass_Null
	.db	TerrainClass_Null
	.db	TerrainClass_Null
		
	;0x1C0
	.db	TerrainClass_HQ
	.db	TerrainClass_Base
	.db	TerrainClass_City
	.db	TerrainClass_Airport
	.db	TerrainClass_Port
	.db	TerrainClass_HQ + TerrainClass_P1
	.db	TerrainClass_Base + TerrainClass_P1
	.db	TerrainClass_City + TerrainClass_P1
	.db	TerrainClass_Airport + TerrainClass_P1
	.db	TerrainClass_Port + TerrainClass_P1
	.db	TerrainClass_HQ + TerrainClass_P2
	.db	TerrainClass_Base + TerrainClass_P2
	.db	TerrainClass_City + TerrainClass_P2
	.db	TerrainClass_Airport + TerrainClass_P2
	.db	TerrainClass_Port + TerrainClass_P2
	.db	TerrainClass_HQ + TerrainClass_P3
		
	;0x1D0
	.db	TerrainClass_Base + TerrainClass_P3
	.db	TerrainClass_City + TerrainClass_P3
	.db	TerrainClass_Airport + TerrainClass_P3
	.db	TerrainClass_Port + TerrainClass_P3
	.db	TerrainClass_HQ + TerrainClass_P4
	.db	TerrainClass_Base + TerrainClass_P4
	.db	TerrainClass_City + TerrainClass_P4
	.db	TerrainClass_Airport + TerrainClass_P4
	.db	TerrainClass_Port + TerrainClass_P4
	.db	TerrainClass_Lab
	.db	TerrainClass_Lab + TerrainClass_P1
	.db	TerrainClass_Lab + TerrainClass_P2
	.db	TerrainClass_Lab + TerrainClass_P3
	.db	TerrainClass_Lab + TerrainClass_P4
	.db	TerrainClass_Null
	.db	TerrainClass_Null
		
	;0x1E0
	.db	TerrainClass_HQ
	.db	TerrainClass_Base
	.db	TerrainClass_City
	.db	TerrainClass_Airport
	.db	TerrainClass_Port
	.db	TerrainClass_HQ + TerrainClass_P1
	.db	TerrainClass_Base + TerrainClass_P1
	.db	TerrainClass_City + TerrainClass_P1
	.db	TerrainClass_Airport + TerrainClass_P1
	.db	TerrainClass_Port + TerrainClass_P1
	.db	TerrainClass_HQ + TerrainClass_P2
	.db	TerrainClass_Base + TerrainClass_P2
	.db	TerrainClass_City + TerrainClass_P2
	.db	TerrainClass_Airport + TerrainClass_P2
	.db	TerrainClass_Port + TerrainClass_P2
	.db	TerrainClass_HQ + TerrainClass_P3
		
	;0x1F0
	.db	TerrainClass_Base + TerrainClass_P3
	.db	TerrainClass_City + TerrainClass_P3
	.db	TerrainClass_Airport + TerrainClass_P3
	.db	TerrainClass_Port + TerrainClass_P3
	.db	TerrainClass_HQ + TerrainClass_P4
	.db	TerrainClass_Base + TerrainClass_P4
	.db	TerrainClass_City + TerrainClass_P4
	.db	TerrainClass_Airport + TerrainClass_P4
	.db	TerrainClass_Port + TerrainClass_P4
	.db	TerrainClass_Lab
	.db	TerrainClass_Lab + TerrainClass_P1
	.db	TerrainClass_Lab + TerrainClass_P2
	.db	TerrainClass_Lab + TerrainClass_P3
	.db	TerrainClass_Lab + TerrainClass_P4
	.db	TerrainClass_Null
	.db	TerrainClass_Null
		
	;0x200
	.db	TerrainClass_Null
	.db	TerrainClass_Null
	.db	TerrainClass_Null
	.db	TerrainClass_Null
	.db	TerrainClass_Null
	.db	TerrainClass_Null
	.db	TerrainClass_Null
	.db	TerrainClass_Null
	.db	TerrainClass_Null
	.db	TerrainClass_Null
	.db	TerrainClass_Null
	.db	TerrainClass_Null
	.db	TerrainClass_Null
	.db	TerrainClass_Null
	.db	TerrainClass_Null
	.db	TerrainClass_Null
	
	;0x210
	.db	TerrainClass_Null
	.db	TerrainClass_Null
	.db	TerrainClass_Null
	.db	TerrainClass_Null
	.db	TerrainClass_Null
	.db	TerrainClass_Null
	.db	TerrainClass_Null
	.db	TerrainClass_Null
	.db	TerrainClass_Null
	.db	TerrainClass_Null
	.db	TerrainClass_Null
	.db	TerrainClass_Null
	.db	TerrainClass_Null
	.db	TerrainClass_Null
	.db	TerrainClass_Null
	.db	TerrainClass_Null
		
	;0x220
	.db	TerrainClass_Null
	.db	TerrainClass_Null
	.db	TerrainClass_Null
	.db	TerrainClass_Null
	.db	TerrainClass_Null
	.db	TerrainClass_Null
	.db	TerrainClass_Null
	.db	TerrainClass_Null
	.db	TerrainClass_Null
	.db	TerrainClass_Null
	.db	TerrainClass_Null
	.db	TerrainClass_Null
	.db	TerrainClass_Null
	.db	TerrainClass_Null
	.db	TerrainClass_Null
	.db	TerrainClass_Null
		
	;0x230
	.db	TerrainClass_Null
	.db	TerrainClass_Null
	.db	TerrainClass_Null
	.db	TerrainClass_Null
	.db	TerrainClass_Null
	.db	TerrainClass_Null
	.db	TerrainClass_Null
	.db	TerrainClass_Null
	.db	TerrainClass_Null
	.db	TerrainClass_Null
	.db	TerrainClass_Null
	.db	TerrainClass_Null
	.db	TerrainClass_Null
	.db	TerrainClass_Null
	.db	TerrainClass_Null
	.db	TerrainClass_Null
		
	;0x240
	.db	TerrainClass_Null
	.db	TerrainClass_Null
	.db	TerrainClass_Null
	.db	TerrainClass_Null
	.db	TerrainClass_Null
	.db	TerrainClass_Null
	.db	TerrainClass_Null
	.db	TerrainClass_Null
	.db	TerrainClass_Null
	.db	TerrainClass_Null
	.db	TerrainClass_Null
	.db	TerrainClass_Null
	.db	TerrainClass_Null
	.db	TerrainClass_Null
	.db	TerrainClass_Null
	.db	TerrainClass_Null
		
	;0x250
	.db	TerrainClass_Null
	.db	TerrainClass_Null
	.db	TerrainClass_Null
	.db	TerrainClass_Null
	.db	TerrainClass_Null
	.db	TerrainClass_Null
	.db	TerrainClass_Null
	.db	TerrainClass_Null
	.db	TerrainClass_Null
	.db	TerrainClass_Null
	.db	TerrainClass_Null
	.db	TerrainClass_Null
	.db	TerrainClass_Null
	.db	TerrainClass_Null
	.db	TerrainClass_Null
	.db	TerrainClass_Null
		
	;0x260
	.db	TerrainClass_Null
	.db	TerrainClass_Null
	.db	TerrainClass_Null
	.db	TerrainClass_Null
	.db	TerrainClass_Null
	.db	TerrainClass_Null
	.db	TerrainClass_Null
	.db	TerrainClass_Null
	.db	TerrainClass_Null
	.db	TerrainClass_Null
	.db	TerrainClass_Null
	.db	TerrainClass_Null
	.db	TerrainClass_Null
	.db	TerrainClass_Null
	.db	TerrainClass_Null
	.db	TerrainClass_Null
		
	;0x270
	.db	TerrainClass_Null
	.db	TerrainClass_Null
	.db	TerrainClass_Null
	.db	TerrainClass_Null
	.db	TerrainClass_Null
	.db	TerrainClass_Null
	.db	TerrainClass_Null
	.db	TerrainClass_Null
	.db	TerrainClass_Null
	.db	TerrainClass_Null
	.db	TerrainClass_Null
	.db	TerrainClass_Null
	.db	TerrainClass_Null
	.db	TerrainClass_Null
	.db	TerrainClass_Null
	.db	TerrainClass_Null
		
	;0x280
	.db	TerrainClass_Null
	.db	TerrainClass_Null
	.db	TerrainClass_Null
	.db	TerrainClass_Null
	.db	TerrainClass_Null
	.db	TerrainClass_Null
	.db	TerrainClass_Null
	.db	TerrainClass_Null
	.db	TerrainClass_Null
	.db	TerrainClass_Null
	.db	TerrainClass_Null
	.db	TerrainClass_Null
	.db	TerrainClass_Null
	.db	TerrainClass_Null
	.db	TerrainClass_Null
	.db	TerrainClass_Null
		
	;0x290
	.db	TerrainClass_Null
	.db	TerrainClass_Null
	.db	TerrainClass_Null
	.db	TerrainClass_Null
	.db	TerrainClass_Null
	.db	TerrainClass_Null
	.db	TerrainClass_Null
	.db	TerrainClass_Null
	.db	TerrainClass_Null
	.db	TerrainClass_Null
	.db	TerrainClass_Null
	.db	TerrainClass_Null
	.db	TerrainClass_Null
	.db	TerrainClass_Null
	.db	TerrainClass_Null
	.db	TerrainClass_Null
		
	;0x2A0
	.db	TerrainClass_Null
	.db	TerrainClass_Null
	.db	TerrainClass_Null
	.db	TerrainClass_Null
	.db	TerrainClass_Null
	.db	TerrainClass_Null
	.db	TerrainClass_Null
	.db	TerrainClass_Null
	.db	TerrainClass_Null
	.db	TerrainClass_Null
	.db	TerrainClass_Null
	.db	TerrainClass_Null
	.db	TerrainClass_Null
	.db	TerrainClass_Null
	.db	TerrainClass_Null
	.db	TerrainClass_Null
		
	;0x2B0
	.db	TerrainClass_Null
	.db	TerrainClass_Null
	.db	TerrainClass_Null
	.db	TerrainClass_Null
	.db	TerrainClass_Null
	.db	TerrainClass_Null
	.db	TerrainClass_Null
	.db	TerrainClass_Null
	.db	TerrainClass_Null
	.db	TerrainClass_Null
	.db	TerrainClass_Null
	.db	TerrainClass_Null
	.db	TerrainClass_Null
	.db	TerrainClass_Null
	.db	TerrainClass_Null
	.db	TerrainClass_Null
		
	;0x2C0
	.db	TerrainClass_Null
	.db	TerrainClass_Null
	.db	TerrainClass_Null
	.db	TerrainClass_Null
	.db	TerrainClass_Null
	.db	TerrainClass_Null
	.db	TerrainClass_Null
	.db	TerrainClass_Null
	.db	TerrainClass_Null
	.db	TerrainClass_Null
	.db	TerrainClass_Null
	.db	TerrainClass_Null
	.db	TerrainClass_Null
	.db	TerrainClass_Null
	.db	TerrainClass_Null
	.db	TerrainClass_Null
		
	;0x2D0
	.db	TerrainClass_Null
	.db	TerrainClass_Null
	.db	TerrainClass_Null
	.db	TerrainClass_Null
	.db	TerrainClass_Null
	.db	TerrainClass_Null
	.db	TerrainClass_Null
	.db	TerrainClass_Null
	.db	TerrainClass_Null
	.db	TerrainClass_Null
	.db	TerrainClass_Null
	.db	TerrainClass_Null
	.db	TerrainClass_Null
	.db	TerrainClass_Null
	.db	TerrainClass_Null
	.db	TerrainClass_Null
		
	;0x2E0
	.db	TerrainClass_Null
	.db	TerrainClass_Null
	.db	TerrainClass_Null
	.db	TerrainClass_Null
	.db	TerrainClass_Null
	.db	TerrainClass_Null
	.db	TerrainClass_Null
	.db	TerrainClass_Null
	.db	TerrainClass_Null
	.db	TerrainClass_Null
	.db	TerrainClass_Null
	.db	TerrainClass_Null
	.db	TerrainClass_Null
	.db	TerrainClass_Null
	.db	TerrainClass_Null
	.db	TerrainClass_Null
		
	;0x2F0
	.db	TerrainClass_Null
	.db	TerrainClass_Null
	.db	TerrainClass_Null
	.db	TerrainClass_Null
	.db	TerrainClass_Null
	.db	TerrainClass_Null
	.db	TerrainClass_Null
	.db	TerrainClass_Null
	.db	TerrainClass_Null
	.db	TerrainClass_Null
	.db	TerrainClass_Null
	.db	TerrainClass_Null
	.db	TerrainClass_Null
	.db	TerrainClass_Null
	.db	TerrainClass_Null
	.db	TerrainClass_Null
		
	;0x300
	.db	TerrainClass_Null
	.db	TerrainClass_Null
	.db	TerrainClass_Null
	.db	TerrainClass_Null
	.db	TerrainClass_Null
	.db	TerrainClass_Null
	.db	TerrainClass_Null
	.db	TerrainClass_Null
	.db	TerrainClass_Null
	.db	TerrainClass_Null
	.db	TerrainClass_Null
	.db	TerrainClass_Null
	.db	TerrainClass_Null
	.db	TerrainClass_Null
	.db	TerrainClass_Null
	.db	TerrainClass_Null
	
	;0x310
	.db	TerrainClass_Null
	.db	TerrainClass_Null
	.db	TerrainClass_Null
	.db	TerrainClass_Null
	.db	TerrainClass_Null
	.db	TerrainClass_Null
	.db	TerrainClass_Null
	.db	TerrainClass_Null
	.db	TerrainClass_Null
	.db	TerrainClass_Null
	.db	TerrainClass_Null
	.db	TerrainClass_Null
	.db	TerrainClass_Null
	.db	TerrainClass_Null
	.db	TerrainClass_Null
	.db	TerrainClass_Null
		
	;0x320
	.db	TerrainClass_Null
	.db	TerrainClass_Null
	.db	TerrainClass_Null
	.db	TerrainClass_Null
	.db	TerrainClass_Null
	.db	TerrainClass_Null
	.db	TerrainClass_Null
	.db	TerrainClass_Null
	.db	TerrainClass_Null
	.db	TerrainClass_Null
	.db	TerrainClass_Null
	.db	TerrainClass_Null
	.db	TerrainClass_Null
	.db	TerrainClass_Null
	.db	TerrainClass_Null
	.db	TerrainClass_Null
		
	;0x330
	.db	TerrainClass_Null
	.db	TerrainClass_Null
	.db	TerrainClass_Null
	.db	TerrainClass_Null
	.db	TerrainClass_Null
	.db	TerrainClass_Null
	.db	TerrainClass_Null
	.db	TerrainClass_Null
	.db	TerrainClass_Null
	.db	TerrainClass_Null
	.db	TerrainClass_Null
	.db	TerrainClass_Null
	.db	TerrainClass_Null
	.db	TerrainClass_Null
	.db	TerrainClass_Null
	.db	TerrainClass_Null
		
	;0x340
	.db	TerrainClass_Null
	.db	TerrainClass_Null
	.db	TerrainClass_Null
	.db	TerrainClass_Null
	.db	TerrainClass_Null
	.db	TerrainClass_Null
	.db	TerrainClass_Null
	.db	TerrainClass_Null
	.db	TerrainClass_Null
	.db	TerrainClass_Null
	.db	TerrainClass_Null
	.db	TerrainClass_Null
	.db	TerrainClass_Null
	.db	TerrainClass_Null
	.db	TerrainClass_Null
	.db	TerrainClass_Null
		
	;0x350
	.db	TerrainClass_Null
	.db	TerrainClass_Null
	.db	TerrainClass_Null
	.db	TerrainClass_Null
	.db	TerrainClass_Null
	.db	TerrainClass_Null
	.db	TerrainClass_Null
	.db	TerrainClass_Null
	.db	TerrainClass_Null
	.db	TerrainClass_Null
	.db	TerrainClass_Null
	.db	TerrainClass_Null
	.db	TerrainClass_Null
	.db	TerrainClass_Null
	.db	TerrainClass_Null
	.db	TerrainClass_Null
		
	;0x360
	.db	TerrainClass_Null
	.db	TerrainClass_Null
	.db	TerrainClass_Null
	.db	TerrainClass_Null
	.db	TerrainClass_Null
	.db	TerrainClass_Null
	.db	TerrainClass_Null
	.db	TerrainClass_Null
	.db	TerrainClass_Null
	.db	TerrainClass_Null
	.db	TerrainClass_Null
	.db	TerrainClass_Null
	.db	TerrainClass_Null
	.db	TerrainClass_Null
	.db	TerrainClass_Null
	.db	TerrainClass_Null
		
	;0x370
	.db	TerrainClass_Null
	.db	TerrainClass_Null
	.db	TerrainClass_Null
	.db	TerrainClass_Null
	.db	TerrainClass_Null
	.db	TerrainClass_Null
	.db	TerrainClass_Null
	.db	TerrainClass_Null
	.db	TerrainClass_Null
	.db	TerrainClass_Null
	.db	TerrainClass_Null
	.db	TerrainClass_Null
	.db	TerrainClass_Null
	.db	TerrainClass_Null
	.db	TerrainClass_Null
	.db	TerrainClass_Null
		
	;0x380
	.db	TerrainClass_Null
	.db	TerrainClass_Null
	.db	TerrainClass_Null
	.db	TerrainClass_Null
	.db	TerrainClass_Null
	.db	TerrainClass_Null
	.db	TerrainClass_Null
	.db	TerrainClass_Null
	.db	TerrainClass_Null
	.db	TerrainClass_Null
	.db	TerrainClass_Null
	.db	TerrainClass_Null
	.db	TerrainClass_Null
	.db	TerrainClass_Null
	.db	TerrainClass_Null
	.db	TerrainClass_Null
		
	;0x390
	.db	TerrainClass_Null
	.db	TerrainClass_Null
	.db	TerrainClass_Null
	.db	TerrainClass_Null
	.db	TerrainClass_Null
	.db	TerrainClass_Null
	.db	TerrainClass_Null
	.db	TerrainClass_Null
	.db	TerrainClass_Null
	.db	TerrainClass_Null
	.db	TerrainClass_Null
	.db	TerrainClass_Null
	.db	TerrainClass_Null
	.db	TerrainClass_Null
	.db	TerrainClass_Null
	.db	TerrainClass_Null
		
	;0x3A0
	.db	TerrainClass_Null
	.db	TerrainClass_Null
	.db	TerrainClass_Null
	.db	TerrainClass_Null
	.db	TerrainClass_Null
	.db	TerrainClass_Null
	.db	TerrainClass_Null
	.db	TerrainClass_Null
	.db	TerrainClass_Null
	.db	TerrainClass_Null
	.db	TerrainClass_Null
	.db	TerrainClass_Null
	.db	TerrainClass_Null
	.db	TerrainClass_Null
	.db	TerrainClass_Null
	.db	TerrainClass_Null
		
	;0x3B0
	.db	TerrainClass_Null
	.db	TerrainClass_Null
	.db	TerrainClass_Null
	.db	TerrainClass_Null
	.db	TerrainClass_Null
	.db	TerrainClass_Null
	.db	TerrainClass_Null
	.db	TerrainClass_Null
	.db	TerrainClass_Null
	.db	TerrainClass_Null
	.db	TerrainClass_Null
	.db	TerrainClass_Null
	.db	TerrainClass_Null
	.db	TerrainClass_Null
	.db	TerrainClass_Null
	.db	TerrainClass_Null
		
	;0x3C0
	.db	TerrainClass_Null
	.db	TerrainClass_Null
	.db	TerrainClass_Null
	.db	TerrainClass_Null
	.db	TerrainClass_Null
	.db	TerrainClass_Null
	.db	TerrainClass_Null
	.db	TerrainClass_Null
	.db	TerrainClass_Null
	.db	TerrainClass_Null
	.db	TerrainClass_Null
	.db	TerrainClass_Null
	.db	TerrainClass_Null
	.db	TerrainClass_Null
	.db	TerrainClass_Null
	.db	TerrainClass_Null
		
	;0x3D0
	.db	TerrainClass_Null
	.db	TerrainClass_Null
	.db	TerrainClass_Null
	.db	TerrainClass_Null
	.db	TerrainClass_Null
	.db	TerrainClass_Null
	.db	TerrainClass_Null
	.db	TerrainClass_Null
	.db	TerrainClass_Null
	.db	TerrainClass_Null
	.db	TerrainClass_Null
	.db	TerrainClass_Null
	.db	TerrainClass_Null
	.db	TerrainClass_Null
	.db	TerrainClass_Null
	.db	TerrainClass_Null
		
	;0x3E0
	.db	TerrainClass_Null
	.db	TerrainClass_Null
	.db	TerrainClass_Null
	.db	TerrainClass_Null
	.db	TerrainClass_Null
	.db	TerrainClass_Null
	.db	TerrainClass_Null
	.db	TerrainClass_Null
	.db	TerrainClass_Null
	.db	TerrainClass_Null
	.db	TerrainClass_Null
	.db	TerrainClass_Null
	.db	TerrainClass_Null
	.db	TerrainClass_Null
	.db	TerrainClass_Null
	.db	TerrainClass_Null
		
	;0x3F0
	.db	TerrainClass_Null
	.db	TerrainClass_Null
	.db	TerrainClass_Null
	.db	TerrainClass_Null
	.db	TerrainClass_Null
	.db	TerrainClass_Null
	.db	TerrainClass_Null
	.db	TerrainClass_Null
	.db	TerrainClass_Null
	.db	TerrainClass_Null
	.db	TerrainClass_Null
	.db	TerrainClass_Null
	.db	TerrainClass_Null
	.db	TerrainClass_Null
	.db	TerrainClass_Null
	.db	0;TerrainClass_Null ;Update last Alloc to be Game ID
	
;.org 0x080C1BC4
;	.relativeinclude on
;	.include "16tileallocation_awdor.asm"
;	.relativeinclude off
		
;Blank Line	
