;macros_mapheader.asm
;Defines Macros for a Map Header

	.macro setMapID,MapNumber
	
	.endmacro	

	.macro setMap,MapID,MapPointer	;Sets Hard Map = Normal Map by default
		.org	MapHeaderTable + (MapID)*MapHeader_Length + 0x0
		.dw	MapPointer
		.org	MapHeaderTable + (MapID)*MapHeader_Length + 0x2C
		.dw	MapPointer
		.org	MapHeaderTable + (MapID)*MapHeader_Length + 0x30
		.dw	MapPointer		
	.endmacro

	.macro setMapHard,MapID,MapPointer
		.org	MapHeaderTable + (MapID)*MapHeader_Length + 0x30
		.dw	MapPointer
	.endmacro

	.macro	setMapEvents,MapID,EntryValue
		.org	MapHeaderTable + (MapID)*MapHeader_Length + 0x4
		.dw	EntryValue
	.endmacro

	.macro	setMapTerms,MapID,EntryValue
		.org	MapHeaderTable + (MapID)*MapHeader_Length + 0x8
		.dw	EntryValue
	.endmacro

	.macro	setMapLoadScript,MapID,EntryValue
		.org	MapHeaderTable + (MapID)*MapHeader_Length + 0xC
		.dw	EntryValue
	.endmacro
	
	.macro	setMapCustomProperty,MapID,EntryValue
		.org	MapHeaderTable + (MapID)*MapHeader_Length + 0x10
		.dw	EntryValue
	.endmacro

	.macro	setMapName,MapID,EntryValue
		.org	MapHeaderTable + (MapID)*MapHeader_Length + 0x14
		.dh	EntryValue
	.endmacro

	.macro	setMapVictoryWallpaper,MapID,EntryValue
		.org	MapHeaderTable + (MapID)*MapHeader_Length + 0x16
		.db	EntryValue
	.endmacro

	.macro	setMapFogOfWar,MapID,EntryValue
		.org	MapHeaderTable + (MapID)*MapHeader_Length + 0x17
		.db	EntryValue
	.endmacro

	.macro	setMapPlayers,MapID,EntryValue
		.org	MapHeaderTable + (MapID)*MapHeader_Length + 0x18
		.dh	EntryValue
	.endmacro

	.macro	setMapCase,MapID,EntryValue
		.org	MapHeaderTable + (MapID)*MapHeader_Length + 0x1A
		.dh	EntryValue
	.endmacro

	.macro	setMapSpeedRank,MapID,EntryValue
		.org	MapHeaderTable + (MapID)*MapHeader_Length + 0x20
		.dh	EntryValue
	.endmacro

	.macro	setMapSpeedRankHard,MapID,EntryValue
		.org	MapHeaderTable + (MapID)*MapHeader_Length + 0x22
		.dh	EntryValue
	.endmacro

	.macro	setMapDayLimit,MapID,EntryValue
		.org	MapHeaderTable + (MapID)*MapHeader_Length + 0x24
		.dh	EntryValue
	.endmacro

	.macro	setMapAIProfile,MapID,EntryValue
		.org	MapHeaderTable + (MapID)*MapHeader_Length + 0x27
		.db	EntryValue
	.endmacro

	.macro	setMapAIAttackPipeseams,MapID,EntryValue
		.org	MapHeaderTable + (MapID)*MapHeader_Length + 0x28
		.if EntryValue == 0
		.db	1
		.endif
		.if EntryValue == 1
		.db	0
		.endif
	.endmacro

	.macro	setMapUnitList,MapID,EntryValue
		.org	MapHeaderTable + (MapID)*MapHeader_Length + 0x34
		.dw	EntryValue
	.endmacro

	.macro	setMapUnitListHard,MapID,EntryValue
		.org	MapHeaderTable + (MapID)*MapHeader_Length + 0x38
		.dw	EntryValue
	.endmacro

	.macro	setMapCO1,MapID,EntryValue
		.org	MapHeaderTable + (MapID)*MapHeader_Length + 0x3C
		.db	EntryValue
	.endmacro
	.macro	setMapCO2,MapID,EntryValue
		.org	MapHeaderTable + (MapID)*MapHeader_Length + 0x3D
		.db	EntryValue
	.endmacro
	.macro	setMapCO3,MapID,EntryValue
		.org	MapHeaderTable + (MapID)*MapHeader_Length + 0x3E
		.db	EntryValue
	.endmacro
	.macro	setMapCO4,MapID,EntryValue
		.org	MapHeaderTable + (MapID)*MapHeader_Length + 0x3F
		.db	EntryValue
	.endmacro
	.macro	setMapArmy1,MapID,EntryValue
		.org	MapHeaderTable + (MapID)*MapHeader_Length + 0x40
		.db	EntryValue
	.endmacro
	.macro	setMapArmy2,MapID,EntryValue
		.org	MapHeaderTable + (MapID)*MapHeader_Length + 0x41
		.db	EntryValue
	.endmacro
	.macro	setMapArmy3,MapID,EntryValue
		.org	MapHeaderTable + (MapID)*MapHeader_Length + 0x42
		.db	EntryValue
	.endmacro
	.macro	setMapArmy4,MapID,EntryValue
		.org	MapHeaderTable + (MapID)*MapHeader_Length + 0x43
		.db	EntryValue
	.endmacro
	.macro	setMapAlliance1,MapID,EntryValue
		.org	MapHeaderTable + (MapID)*MapHeader_Length + 0x44
		.db	EntryValue
	.endmacro
	.macro	setMapAlliance2,MapID,EntryValue
		.org	MapHeaderTable + (MapID)*MapHeader_Length + 0x45
		.db	EntryValue
	.endmacro
	.macro	setMapAlliance3,MapID,EntryValue
		.org	MapHeaderTable + (MapID)*MapHeader_Length + 0x46
		.db	EntryValue
	.endmacro
	.macro	setMapAlliance4,MapID,EntryValue
		.org	MapHeaderTable + (MapID)*MapHeader_Length + 0x47
		.db	EntryValue
	.endmacro

	.macro	setMapCampaignIntro,MapID,EntryValue
		.org	MapHeaderTable + (MapID)*MapHeader_Length + 0x58
		.db	EntryValue
	.endmacro
	
	.macro setMapUnknown,MapID,Offset,EntryValue
		.org	MapHeaderTable + (MapID)*MapHeader_Length + Offset
		.dh	EntryValue	
	.endmacro
	
	.macro setMapGameVersion,MapID,EntryValue
		.org	MapHeaderTable + (MapID)*MapHeader_Length + 0x5A
		.db	EntryValue
	.endmacro	

	.macro	setMapDefaults,MapID
	setMap					MapID,0x081ba084	;Bean Island
	setMapHard				MapID,0
	setMapEvents			MapID,0
	setMapTerms				MapID,0
	setMapCustomProperty	MapID,0
	setMapName				MapID,2266		;"None"
	setMapVictoryWallpaper	MapID,1
	setMapFogOfWar			MapID,0
	setMapPlayers			MapID,2
	setMapCase				MapID,3
	setMapSpeedRank			MapID,14
	setMapSpeedRankHard		MapID,14
	setMapDayLimit			MapID,0
	setMapAIProfile			MapID,0
	setMapAIAttackPipeseams	MapID,1
	setMapUnitList			MapID,0
	setMapUnitListHard		MapID,0
	setMapCO1				MapID,0
	setMapCO2				MapID,0
	setMapCO3				MapID,0
	setMapCO4				MapID,0
	setMapArmy1				MapID,1
	setMapArmy2				MapID,2
	setMapArmy3				MapID,3
	setMapArmy4				MapID,4
	setMapAlliance1			MapID,1
	setMapAlliance2			MapID,2
	setMapAlliance3			MapID,3
	setMapAlliance4			MapID,4
	setMapCampaignIntro		MapID,0
	setMapLoadScript		MapID,0
	
	.org	MapHeaderTable + (MapID)*MapHeader_Length + 0x1C	;Unknown 0x1C
		.dh	1,1
	.org	MapHeaderTable + (MapID)*MapHeader_Length + 0x26	;Unknown +0x26
		.db	0xFF
	.org	MapHeaderTable + (MapID)*MapHeader_Length + 0x29	;Unknown +0x29,0x2A
		.db	0x0
		.dh	0x0
	.org	MapHeaderTable + (MapID)*MapHeader_Length + 0x48	;Unknown +0x48
		.dw	0x0000ffff, 0x0000ffff, 0x0000ffff, 0x0000ffff
	.org	MapHeaderTable + (MapID)*MapHeader_Length + 0x59	;Unknown +0x59,0x5A
		.db	0x0
		.dh	0x0
	.endmacro