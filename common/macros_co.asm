;macros_co.asm
;Defines Macros for defining Commanding Officers

;	coGFXTable		equ ;0x08700000
;	coGFX_Length		equ 68
;	coDatatable 		equ ;0x08705000
;	coData_Length		equ 260
;	coData_Power_Length	equ 68
;	PHackUltraPointer	equ ;0x0870E000

	
	; text ID for name
	.macro setCOName,COID,nameID
		.org coDataTable + (coID*coData_Length) + Gather_CO_Name;0
		.word nameID
	.endmacro
	; song id for Music
	.macro setCOMusic,COID,songID
		.org coDataTable + (coID*coData_Length) + Gather_CO_Music;4
		.halfword songID
	.endmacro
	; chance of snow
	.macro setCOSnowPerc,COID,perc
		.org coDataTable + (coID*coData_Length) + Gather_CO_Snowbringer;6
		.halfword perc
	.endmacro
	; chance of rain
	.macro setCORainPerc,COID,perc
		.org coDataTable + (coID*coData_Length) + Gather_CO_Rainbringer;8
		.halfword perc
	.endmacro
	; 0xa-0xb unused
	;Co-opt for a game value
	.macro setCOGameID,COID,value
		.org coDataTable + (coID*coData_Length) + Gather_CO_GameID;10
		.dh	value
	.endmacro
	
	; COP cost
	.macro setCOPowerCost,COID,stars
		.org coDataTable + (coID*coData_Length) + Gather_CO_PowerStars;12
		.word stars
	.endmacro
	; SCOP cost
	.macro setCOSuperCost,COID,stars
		.org coDataTable + (coID*coData_Length) + Gather_CO_SuperStars;16
		.word stars
	.endmacro
	; unit army style
	.macro setCOArmyStyle,COID,styleID
		.org coDataTable + (coID*coData_Length) + Gather_CO_ArmyStyle;20
		.byte styleID
	.endmacro
	; property army style (just HQ, really.)
	; this value starts at 0 instead of 1
	; so subtract 1 when you write it.
	.macro setCOPropStyle,COID,styleID
		.org coDataTable + (coID*coData_Length) + Gather_CO_PropertyStyle;21
		.byte styleID-1
	.endmacro
	
	;Combination Macro for the above three.
	.macro setCOFaction,COID,styleID
		setCOArmyStyle COID,styleID
		setCOPropStyle COID,styleID
		setCOColor COID,styleID
	.endmacro
	
	; War Room Color.
	.macro setCOColor,COID,styleID
		.org coDataTable + (coID*coData_Length) + Gather_CO_ArmyColour;22
		.byte styleID
	.endmacro
	.macro setCOColour,COID,styleID
		setCOColor COID,styleID
	.endmacro	
	
	; charge threshold for COP when used by AIs.
	.macro setCOAIPowerRange,COID,perc
		.org coDataTable + (coID*coData_Length) + Gather_CO_AICOPowerThreshold;23
		.byte perc
	.endmacro
	
	; chance of activating COP for AI.
	.macro setCOAIPowerTrigger,COID,perc
		.org coDataTable + (coID*coData_Length) + Gather_CO_AICOPowerChance;24
		.word perc
	.endmacro
	; routine to call AI's rules for activating COP
	.macro setCOAIPowerTriggerASM,COID,routine
		.org coDataTable + (coID*coData_Length) + Gather_CO_AICOPowerActivateASM;28
		.word routine+1
	.endmacro
	
	; COP quotes.
	.macro setCOpowerText,COID,q1,q2,q3,q4,q5,q6
		.org coDataTable + (coID*coData_Length) + Gather_CO_PowerQuote1;32
		.halfword q1,q2,q3,q4,q5,q6
	.endmacro
	; CO Power descriptions.
	.macro setCOprofileText,COID,p1,p2,p3,p4
		.org coDataTable + (coID*coData_Length) + Gather_CO_ProfileDesc1;44
		.halfword p1,p2,p3,p4
	.endmacro
	; victory quote.
	.macro setCOvictoryText,COID,textID
		.org coDataTable + (coID*coData_Length) + Gather_CO_VictoryQuote;52
		.word textID
	.endmacro
	; 56-59 Unused
	
	; d2d assembly effects (Custom)
	.macro setCOd2dASM,COID,routine
		.org coDataTable + (coID*coData_Length) + 68*0 + 56 + 4
		.word routine+1
	.endmacro
	; d2d ability flags
	.macro setCOd2dAbilities,COID,abil
		.org coDataTable + (coID*coData_Length) + 68*0 + 56 + 8
		.word abil
	.endmacro
	; d2d vision
	.macro setCOd2dVision,COID,vision
		.org coDataTable + (coID*coData_Length) + 68*0 + 56 + 12
		.halfword vision
	.endmacro
	; d2d luck and negaluck
	.macro setCOd2dLuck,COID,luck
		.org coDataTable + (coID*coData_Length) + 68*0 + 56 + 14
		.halfword luck
	.endmacro
	.macro setCOd2dBadLuck,COID,luck
		.org coDataTable + (coID*coData_Length) + 68*0 + 56 + 16
		.halfword luck
	.endmacro
	; counterattack bonus (%modifier, signed)
	.macro setCOd2dCounter,COID,boost
		.org coDataTable + (coID*coData_Length) + 68*0 + 56 + 18
		.halfword boost
	.endmacro
	; price modifier (%modifier, signed)
	.macro setCOd2dPrice,COID,boost
		.org coDataTable + (coID*coData_Length) + 68*0 + 56 + 20
		.halfword boost
	.endmacro
	; capture modifier (%modifier, signed)
	.macro setCOd2dCapture,COID,boost
		.org coDataTable + (coID*coData_Length) + 68*0 + 56 + 22
		.halfword boost
	.endmacro
	; movement tables
	.macro setCOd2dMove,COID,moveNorm,moveSnow,moveRain
		.org coDataTable + (coID*coData_Length) + 68*0 + 56 + 24
		.word moveNorm,moveSnow,moveRain
	.endmacro
	; 92-93 unused

	; Xen's infiniCOs additions.
	;D2D Repair Bonus
	.macro setCOd2dRepair,COID,boost
		.org coDataTable + (coID*coData_Length) + 68*0 + 56 + 38
		.dh boost	
	.endmacro	
	;D2D Income Bonus
	.macro setCOd2dIncome,COID,boost
		.org coDataTable + (coID*coData_Length) + 68*0 + 56 + 40
		.dh boost	
	.endmacro
	;D2D Direct Defence Bonus
	.macro setCOd2dDirectDefence,COID,boost
		.org coDataTable + (coID*coData_Length) + 68*0 + 56 + 42
		.dh boost	
	.endmacro
	;D2D Indirect Defence Bonus
	.macro setCOd2dIndirectDefence,COID,boost
		.org coDataTable + (coID*coData_Length) + 68*0 + 56 + 44
		.dh boost	
	.endmacro
	;D2D Terrain Star Cut
	.macro setCOd2dTerrainStarReduction,COID,boost
		.org coDataTable + (coID*coData_Length) + 68*0 + 56 + 46
		.dh boost	
	.endmacro
	;D2D Terrain-to-Firepower Boost Table
	.macro setCOd2dTerrainFirepowerList,COID,pointer
		.org coDataTable + (coID*coData_Length) + 68*0 + 56 + 48
		.dw pointer	
	.endmacro
	;D2D Damage to Funds
	.macro setCOd2dDamageToFunds,COID,boost
		.org coDataTable + (coID*coData_Length) + 68*0 + 56 + 52
		.dh boost	
	.endmacro
	;D2D Terrain Star Boost
	.macro setCOd2dExtraTerrainStars,COID,boost,unitclass
		.org coDataTable + (coID*coData_Length) + 68*0 + 56 + 54
		.db boost,unitclass	
	.endmacro	
	;D2D Flat Capture Boost
	.macro setCOd2dFlatCaptureBonus,COID,boost
		.org coDataTable + (coID*coData_Length) + 68*0 + 56 + 56
		.dh boost	
	.endmacro
	;D2D Flat Income Boost
	.macro setCOd2dFlatIncomeBonus,COID,boost
		.org coDataTable + (coID*coData_Length) + 68*0 + 56 + 58
		.dh boost	
	.endmacro	
	;D2D Snow Firepower
	.macro setCOd2dSnowFirepower,COID,boost
		.org coDataTable + (coID*coData_Length) + 68*0 + 56 + 60
		.db boost	
	.endmacro	
	;D2D Rain Firepower
	.macro setCOd2dRainFirepower,COID,boost
		.org coDataTable + (coID*coData_Length) + 68*0 + 56 + 61
		.db boost	
	.endmacro
	;D2D Terrain Into Firepower Multiplier
	.macro setCOd2dTerrainPowerMult,COID,boost
		.org coDataTable + (coID*coData_Length) + 68*0 + 56 + 62
		.dh boost	
	.endmacro
	;D2D Damage Reflect
	.macro setCOd2dDamageReflect,COID,boost
		.org coDataTable + (coID*coData_Length) + 68*0 + 56 + 64
		.dh boost	
	.endmacro	
	
	; COP name
	.macro setCOPowerName,COID,textID
		.org coDataTable + (coID*coData_Length) + 68*1 + 56 + 0
		.word textID
	.endmacro
	; COP special effects
	.macro setCOPowerASM,COID,routine
		.org coDataTable + (coID*coData_Length) + 68*1 + 56 + 4
		.word routine+1
	.endmacro
	; COP ability flags
	.macro setCOPowerAbilities,COID,abil
		.org coDataTable + (coID*coData_Length) + 68*1 + 56 + 8
		.word abil
	.endmacro
	; COP vision
	.macro setCOPowerVision,COID,vision
		.org coDataTable + (coID*coData_Length) + 68*1 + 56 + 12
		.halfword vision
	.endmacro
	; COP luck and negaluck
	.macro setCOPowerLuck,COID,luck
		.org coDataTable + (coID*coData_Length) + 68*1 + 56 + 14
		.halfword luck
	.endmacro
	.macro setCOPowerBadLuck,COID,luck
		.org coDataTable + (coID*coData_Length) + 68*1 + 56 + 16
		.halfword luck
	.endmacro
	; counterattack bonus (%modifier, signed)
	.macro setCOPowerCounter,COID,boost
		.org coDataTable + (coID*coData_Length) + 68*1 + 56 + 18
		.halfword boost
	.endmacro
	; price modifier (%modifier, signed)
	.macro setCOPowerPrice,COID,boost
		.org coDataTable + (coID*coData_Length) + 68*1 + 56 + 20
		.halfword boost
	.endmacro
	; capture modifier (%modifier, signed)
	.macro setCOPowerCapture,COID,boost
		.org coDataTable + (coID*coData_Length) + 68*1 + 56 + 22
		.halfword boost
	.endmacro
	; movement tables
	.macro setCOPowerMove,COID,moveNorm,moveSnow,moveRain
		.org coDataTable + (coID*coData_Length) + 68*1 + 56 + 24
		.word moveNorm,moveSnow,moveRain
	.endmacro
	
	.macro setCOPowerMusic,COID,songID
		.org coDataTable + (coID*coData_Length) + 68*1 + 56 + 36
		.halfword songID
	.endmacro
	; Xen's infiniCOs additions.
	;COPower Repair Bonus
	.macro setCOPowerRepair,COID,boost
		.org coDataTable + (coID*coData_Length) + 68*1 + 56 + 38
		.dh boost	
	.endmacro
	;COPower Income Bonus
	.macro setCOPowerIncome,COID,boost
		.org coDataTable + (coID*coData_Length) + 68*1 + 56 + 40
		.dh boost	
	.endmacro
	;COPower Direct Defence Bonus
	.macro setCOPowerDirectDefence,COID,boost
		.org coDataTable + (coID*coData_Length) + 68*1 + 56 + 42
		.dh boost	
	.endmacro
	;COPower Indirect Defence Bonus
	.macro setCOPowerIndirectDefence,COID,boost
		.org coDataTable + (coID*coData_Length) + 68*1 + 56 + 44
		.dh boost	
	.endmacro
	;COPower Terrain Star Cut
	.macro setCOPowerTerrainStarReduction,COID,boost
		.org coDataTable + (coID*coData_Length) + 68*1 + 56 + 46
		.dh boost	
	.endmacro
	;COPower Terrain-to-Firepower Boost Table
	.macro setCOPowerTerrainFirepowerList,COID,pointer
		.org coDataTable + (coID*coData_Length) + 68*1 + 56 + 48
		.dw pointer	
	.endmacro
	;COPower Damage to Funds
	.macro setCOPowerDamageToFunds,COID,boost
		.org coDataTable + (coID*coData_Length) + 68*1 + 56 + 52
		.dh boost	
	.endmacro
	;COPower Terrain Star Boost
	.macro setCOPowerExtraTerrainStars,COID,boost,unitclass
		.org coDataTable + (coID*coData_Length) + 68*1 + 56 + 54
		.db boost,unitclass	
	.endmacro	
	;COPower Flat Capture Boost
	.macro setCOPowerFlatCaptureBonus,COID,boost
		.org coDataTable + (coID*coData_Length) + 68*1 + 56 + 56
		.dh boost	
	.endmacro
	;COPower Flat Income Boost
	.macro setCOPowerFlatIncomeBonus,COID,boost
		.org coDataTable + (coID*coData_Length) + 68*0 + 56 + 58
		.dh boost	
	.endmacro	
	;COPower Snow Firepower
	.macro setCOPowerSnowFirepower,COID,boost
		.org coDataTable + (coID*coData_Length) + 68*1 + 56 + 60
		.db boost	
	.endmacro	
	;COPower Rain Firepower
	.macro setCOPowerRainFirepower,COID,boost
		.org coDataTable + (coID*coData_Length) + 68*1 + 56 + 61
		.db boost	
	.endmacro
	;COPower Terrain Into Firepower Multiplier
	.macro setCOPowerTerrainPowerMult,COID,boost
		.org coDataTable + (coID*coData_Length) + 68*1 + 56 + 62
		.dh boost	
	.endmacro
	;COPower Damage Reflect
	.macro setCOPowerDamageReflect,COID,boost
		.org coDataTable + (coID*coData_Length) + 68*1 + 56 + 64
		.dh boost	
	.endmacro	
	
	; COP name
	.macro setCOSuperName,COID,textID
		.org coDataTable + (coID*coData_Length) + 68*2 + 56 + 0
		.word textID
	.endmacro
	; COP special effects
	.macro setCOSuperASM,COID,routine
		.org coDataTable + (coID*coData_Length) + 68*2 + 56 + 4
		.word routine+1
	.endmacro
	; COP ability flags
	.macro setCOSuperAbilities,COID,abil
		.org coDataTable + (coID*coData_Length) + 68*2 + 56 + 8
		.word abil
	.endmacro
	; COP vision
	.macro setCOSuperVision,COID,vision
		.org coDataTable + (coID*coData_Length) + 68*2 + 56 + 12
		.halfword vision
	.endmacro
	; COP luck and negaluck
	.macro setCOSuperLuck,COID,luck
		.org coDataTable + (coID*coData_Length) + 68*2 + 56 + 14
		.halfword luck
	.endmacro
	.macro setCOSuperBadLuck,COID,luck
		.org coDataTable + (coID*coData_Length) + 68*2 + 56 + 16
		.halfword luck
	.endmacro
	; counterattack bonus (%modifier, signed)
	.macro setCOSuperCounter,COID,boost
		.org coDataTable + (coID*coData_Length) + 68*2 + 56 + 18
		.halfword boost
	.endmacro
	; price modifier (%modifier, signed)
	.macro setCOSuperPrice,COID,boost
		.org coDataTable + (coID*coData_Length) + 68*2 + 56 + 20
		.halfword boost
	.endmacro
	; capture modifier (%modifier, signed)
	.macro setCOSuperCapture,COID,boost
		.org coDataTable + (coID*coData_Length) + 68*2 + 56 + 22
		.halfword boost
	.endmacro
	; movement tables
	.macro setCOSuperMove,COID,moveNorm,moveSnow,moveRain
		.org coDataTable + (coID*coData_Length) + 68*2 + 56 + 24
		.word moveNorm,moveSnow,moveRain
	.endmacro
	
	.macro setCOSuperMusic,COID,songID
		.org coDataTable + (coID*coData_Length) + 68*2 + 56 + 36
		.halfword songID
	.endmacro
	; Xen's infiniCOs additions.
	;COSuper Repair Bonus
	.macro setCOSuperRepair,COID,boost
		.org coDataTable + (coID*coData_Length) + 68*2 + 56 + 38
		.dh boost	
	.endmacro
	;COSuper Income Bonus
	.macro setCOSuperIncome,COID,boost
		.org coDataTable + (coID*coData_Length) + 68*2 + 56 + 40
		.dh boost	
	.endmacro
	;COSuper Direct Defence Bonus
	.macro setCOSuperDirectDefence,COID,boost
		.org coDataTable + (coID*coData_Length) + 68*2 + 56 + 42
		.dh boost	
	.endmacro
	;COSuper Indirect Defence Bonus
	.macro setCOSuperIndirectDefence,COID,boost
		.org coDataTable + (coID*coData_Length) + 68*2 + 56 + 44
		.dh boost	
	.endmacro
	;COSuper Terrain Star Cut
	.macro setCOSuperTerrainStarReduction,COID,boost
		.org coDataTable + (coID*coData_Length) + 68*2 + 56 + 46
		.dh boost	
	.endmacro
	;COSuper Terrain-to-Firepower Boost Table
	.macro setCOSuperTerrainFirepowerList,COID,pointer
		.org coDataTable + (coID*coData_Length) + 68*2 + 56 + 48
		.dw pointer	
	.endmacro
	;COSuper Damage to Funds
	.macro setCOSuperDamageToFunds,COID,boost
		.org coDataTable + (coID*coData_Length) + 68*2 + 56 + 52
		.dh boost	
	.endmacro
	;COSuper Terrain Star Boost
	.macro setCOSuperExtraTerrainStars,COID,boost,unitclass
		.org coDataTable + (coID*coData_Length) + 68*2 + 56 + 54
		.db boost,unitclass	
	.endmacro	
	;COSuper Flat Capture Boost
	.macro setCOSuperFlatCaptureBonus,COID,boost
		.org coDataTable + (coID*coData_Length) + 68*2 + 56 + 56
		.dh boost	
	.endmacro
	;COSuper Flat Income Boost
	.macro setCOSuperFlatIncomeBonus,COID,boost
		.org coDataTable + (coID*coData_Length) + 68*2 + 56 + 58
		.dh boost	
	.endmacro	
	;COSuper Snow Firepower
	.macro setCOSuperSnowFirepower,COID,boost
		.org coDataTable + (coID*coData_Length) + 68*2 + 56 + 60
		.db boost	
	.endmacro	
	;COSuper Rain Firepower
	.macro setCOSuperRainFirepower,COID,boost
		.org coDataTable + (coID*coData_Length) + 68*2 + 56 + 61
		.db boost	
	.endmacro
	;COSuper Terrain Into Firepower Multiplier
	.macro setCOSuperTerrainPowerMult,COID,boost
		.org coDataTable + (coID*coData_Length) + 68*2 + 56 + 62
		.dh boost	
	.endmacro
	;COSuper Damage Reflect
	.macro setCOSuperDamageReflect,COID,boost
		.org coDataTable + (coID*coData_Length) + 68*2 + 56 + 64
		.dh boost	
	.endmacro	
	
	; co GFX data
	; fullbody graphics pointer
	; pointer to two graphic pointers (compressed)
	.macro setCOGFXFullbody,COID,pointer
		.org coGFXTable + (COID)*68 + 0
		.word pointer
	.endmacro
	; name graphics (compressed)
	.macro setCOGFXName,COID,pointer
		.org coGFXTable + (COID)*68 + 4
		.word pointer
	.endmacro
	; palettes
	.macro setCOGFXPalette,COID,pointer
		.org coGFXTable + (COID)*68 + 8
		.word pointer
	.endmacro
	; facial expressions (compressed)
	.macro setCOGFXFace,COID,pointer1,pointer2,pointer3
		.org coGFXTable + (COID)*68 + 12
		.word pointer1,pointer2,pointer3
	.endmacro
	; smaller face section (uncompressed)
	.macro setCOGFXSmallFace,COID,pointer
		.org coGFXTable + (COID)*68 + 24
		.word pointer
	.endmacro
	; COP animation GFX
	.macro setCOGFXPowerAnim,COID,b1,b2
		.org coGFXTable + (COID)*68 + 28
		.byte b1,b2
	.endmacro
	; COP animation "rule", i.e. what units to animate over
	.macro setCOGFXPowerRule,COID,routine
		.org coGFXTable + (COID)*68 + 32
		.word routine+1
	.endmacro
	; COP animation effect
	.macro setCOGFXPowerFX,COID,routine
		.org coGFXTable + (COID)*68 + 36
		.word routine+1
	.endmacro
	; ???
	.macro setCOGFXPowerType,COID,routine
		.org coGFXTable + (COID)*68 + 40
		.word routine+1
	.endmacro
	; SFX
	.macro setCOGFXPowerSFX,COID,fx1,fx2
		.org coGFXTable + (COID)*68 + 44
		.halfword fx1,fx2
	.endmacro
	
	; SCOP animation GFX
	.macro setCOGFXSuperAnim,COID,b1,b2
		.org coGFXTable + (COID)*68 + 48
		.byte b1,b2
	.endmacro
	; SCOP animation "rule", i.e. what units to animate over
	.macro setCOGFXSuperRule,COID,routine
		.org coGFXTable + (COID)*68 + 52
		.word routine+1
	.endmacro
	; SCOP animation effect
	.macro setCOGFXSuperFX,COID,routine
		.org coGFXTable + (COID)*68 + 56
		.word routine+1
	.endmacro
	; ???
	.macro setCOGFXSuperType,COID,routine
		.org coGFXTable + (COID)*68 + 60
		.word routine+1
	.endmacro
	; SFX
	.macro setCOGFXSuperSFX,COID,fx1,fx2
		.org coGFXTable + (COID)*68 + 64
		.halfword fx1,fx2
	.endmacro
	
	.macro setCOGFXBarGFX,COID,gfxLocation
		.org coBarTable + (COID)*256
		.incbin gfxLocation
	.endMacro
	
	;Unit Stat Tables (Pointer Hack Ultra)
	.macro setCOD2DUnitStat,COID,Unit,Attack,Defence,Movement,Range
		.org PHackUltraPointer + (COID)*624 + (Unit-1)*8 + 8
		.dh Attack,Defence,Movement,Range
	.endmacro
	.macro setCOPowerUnitStat,COID,Unit,Attack,Defence,Movement,Range
		.org PHackUltraPointer + (COID)*624 + (Unit-1)*8 + 8 + 208
		.dh Attack,Defence,Movement,Range
	.endmacro
	.macro setCOSuperUnitStat,COID,Unit,Attack,Defence,Movement,Range
		.org PHackUltraPointer + (COID)*624 + (Unit-1)*8 + 8 + 416
		.dh Attack,Defence,Movement,Range
	.endmacro

	; macros for existing unit classes
	.macro setCOD2DAllStat, COID,Attack,Defence,Movement,Range
		setCOD2DUnitStat		COID,1,Attack,Defence,Movement,Range
		setCOD2DUnitStat		COID,2,Attack,Defence,Movement,Range
		setCOD2DUnitStat		COID,3,Attack,Defence,Movement,Range
		setCOD2DUnitStat		COID,4,Attack,Defence,Movement,Range
		setCOD2DUnitStat		COID,5,Attack,Defence,Movement,Range
		setCOD2DUnitStat		COID,6,Attack,Defence,Movement,Range
		setCOD2DUnitStat		COID,7,Attack,Defence,Movement,Range
		setCOD2DUnitStat		COID,8,Attack,Defence,Movement,Range
		setCOD2DUnitStat		COID,9,Attack,Defence,Movement,Range
		setCOD2DUnitStat		COID,10,Attack,Defence,Movement,Range
		setCOD2DUnitStat		COID,11,Attack,Defence,Movement,Range
		setCOD2DUnitStat		COID,12,Attack,Defence,Movement,Range
		setCOD2DUnitStat		COID,13,Attack,Defence,Movement,Range
		setCOD2DUnitStat		COID,14,Attack,Defence,Movement,Range
		setCOD2DUnitStat		COID,15,Attack,Defence,Movement,Range
		setCOD2DUnitStat		COID,16,Attack,Defence,Movement,Range
		setCOD2DUnitStat		COID,17,Attack,Defence,Movement,Range
		setCOD2DUnitStat		COID,18,Attack,Defence,Movement,Range
		setCOD2DUnitStat		COID,19,Attack,Defence,Movement,Range
		setCOD2DUnitStat		COID,20,Attack,Defence,Movement,Range
		setCOD2DUnitStat		COID,21,Attack,Defence,Movement,Range
		setCOD2DUnitStat		COID,22,Attack,Defence,Movement,Range
		setCOD2DUnitStat		COID,23,Attack,Defence,Movement,Range
		setCOD2DUnitStat		COID,24,Attack,Defence,Movement,Range
	.endmacro
	.macro setCOD2DSoldierStat, COID,Attack,Defence,Movement,Range
		setCOD2DUnitStat		COID,Unit_Infantry,Attack,Defence,Movement,Range
		setCOD2DUnitStat		COID,Unit_Mech,Attack,Defence,Movement,Range
	.endmacro
	.macro setCOD2DDirectStat, COID,Attack,Defence,Movement,Range
		setCOD2DUnitStat		COID,Unit_MidTank,Attack,Defence,Movement,Range
		setCOD2DUnitStat		COID,Unit_Tank,Attack,Defence,Movement,Range
		setCOD2DUnitStat		COID,Unit_Recon,Attack,Defence,Movement,Range
		setCOD2DUnitStat		COID,Unit_Neotank,Attack,Defence,Movement,Range
		setCOD2DUnitStat		COID,Unit_Antiair,Attack,Defence,Movement,Range
		setCOD2DUnitStat		COID,Unit_Fighter,Attack,Defence,Movement,Range
		setCOD2DUnitStat		COID,Unit_Bomber,Attack,Defence,Movement,Range
		setCOD2DUnitStat		COID,Unit_BattleCopter,Attack,Defence,Movement,Range
		setCOD2DUnitStat		COID,Unit_Cruiser,Attack,Defence,Movement,Range
		setCOD2DUnitStat		COID,Unit_Sub,Attack,Defence,Movement,Range
	.endmacro
	.macro setCOD2DIndirectStat, COID,Attack,Defence,Movement,Range
		setCOD2DUnitStat		COID,Unit_Artillery,Attack,Defence,Movement,Range
		setCOD2DUnitStat		COID,Unit_Rockets,Attack,Defence,Movement,Range
		setCOD2DUnitStat		COID,Unit_Missiles,Attack,Defence,Movement,Range
		setCOD2DUnitStat		COID,Unit_Battleship,Attack,Defence,Movement,Range
	.endmacro
	.macro setCOD2DTransportStat, COID,Attack,Defence,Movement,Range
		setCOD2DUnitStat		COID,Unit_APC,Attack,Defence,Movement,Range
		setCOD2DUnitStat		COID,Unit_TransportCopter,Attack,Defence,Movement,Range
		setCOD2DUnitStat		COID,Unit_Lander,Attack,Defence,Movement,Range
	.endmacro
	.macro setCOD2DLandStat, COID,Attack,Defence,Movement,Range
		setCOD2DUnitStat		COID,Unit_MidTank,Attack,Defence,Movement,Range
		setCOD2DUnitStat		COID,Unit_Tank,Attack,Defence,Movement,Range
		setCOD2DUnitStat		COID,Unit_Recon,Attack,Defence,Movement,Range
		setCOD2DUnitStat		COID,Unit_APC,Attack,Defence,Movement,Range
		setCOD2DUnitStat		COID,Unit_Neotank,Attack,Defence,Movement,Range
		setCOD2DUnitStat		COID,Unit_Artillery,Attack,Defence,Movement,Range
		setCOD2DUnitStat		COID,Unit_Rockets,Attack,Defence,Movement,Range
		setCOD2DUnitStat		COID,Unit_Antiair,Attack,Defence,Movement,Range
		setCOD2DUnitStat		COID,Unit_Missiles,Attack,Defence,Movement,Range
	.endmacro
	.macro setCOD2DIndirectLandStat, COID,Attack,Defence,Movement,Range
		setCOD2DUnitStat		COID,Unit_Artillery,Attack,Defence,Movement,Range
		setCOD2DUnitStat		COID,Unit_Rockets,Attack,Defence,Movement,Range
		setCOD2DUnitStat		COID,Unit_Antiair,Attack,Defence,Movement,Range
	.endmacro
	.macro setCOD2DAirStat, COID,Attack,Defence,Movement,Range
		setCOD2DUnitStat		COID,Unit_Fighter,Attack,Defence,Movement,Range
		setCOD2DUnitStat		COID,Unit_Bomber,Attack,Defence,Movement,Range
		setCOD2DUnitStat		COID,Unit_BattleCopter,Attack,Defence,Movement,Range
		setCOD2DUnitStat		COID,Unit_TransportCopter,Attack,Defence,Movement,Range
	.endmacro
	.macro setCOD2DNavyStat, COID,Attack,Defence,Movement,Range
		setCOD2DUnitStat		COID,Unit_Battleship,Attack,Defence,Movement,Range
		setCOD2DUnitStat		COID,Unit_Cruiser,Attack,Defence,Movement,Range
		setCOD2DUnitStat		COID,Unit_Lander,Attack,Defence,Movement,Range
		setCOD2DUnitStat		COID,Unit_Sub,Attack,Defence,Movement,Range
	.endmacro
	.macro setCOPowerAllStat, COID,Attack,Defence,Movement,Range
		setCOPowerUnitStat		COID,1,Attack,Defence,Movement,Range
		setCOPowerUnitStat		COID,2,Attack,Defence,Movement,Range
		setCOPowerUnitStat		COID,3,Attack,Defence,Movement,Range
		setCOPowerUnitStat		COID,4,Attack,Defence,Movement,Range
		setCOPowerUnitStat		COID,5,Attack,Defence,Movement,Range
		setCOPowerUnitStat		COID,6,Attack,Defence,Movement,Range
		setCOPowerUnitStat		COID,7,Attack,Defence,Movement,Range
		setCOPowerUnitStat		COID,8,Attack,Defence,Movement,Range
		setCOPowerUnitStat		COID,9,Attack,Defence,Movement,Range
		setCOPowerUnitStat		COID,10,Attack,Defence,Movement,Range
		setCOPowerUnitStat		COID,11,Attack,Defence,Movement,Range
		setCOPowerUnitStat		COID,12,Attack,Defence,Movement,Range
		setCOPowerUnitStat		COID,13,Attack,Defence,Movement,Range
		setCOPowerUnitStat		COID,14,Attack,Defence,Movement,Range
		setCOPowerUnitStat		COID,15,Attack,Defence,Movement,Range
		setCOPowerUnitStat		COID,16,Attack,Defence,Movement,Range
		setCOPowerUnitStat		COID,17,Attack,Defence,Movement,Range
		setCOPowerUnitStat		COID,18,Attack,Defence,Movement,Range
		setCOPowerUnitStat		COID,19,Attack,Defence,Movement,Range
		setCOPowerUnitStat		COID,20,Attack,Defence,Movement,Range
		setCOPowerUnitStat		COID,21,Attack,Defence,Movement,Range
		setCOPowerUnitStat		COID,22,Attack,Defence,Movement,Range
		setCOPowerUnitStat		COID,23,Attack,Defence,Movement,Range
		setCOPowerUnitStat		COID,24,Attack,Defence,Movement,Range
	.endmacro
	.macro setCOPowerSoldierStat, COID,Attack,Defence,Movement,Range
		setCOPowerUnitStat		COID,Unit_Infantry,Attack,Defence,Movement,Range
		setCOPowerUnitStat		COID,Unit_Mech,Attack,Defence,Movement,Range
	.endmacro
	.macro setCOPowerDirectStat, COID,Attack,Defence,Movement,Range
		setCOPowerUnitStat		COID,Unit_MidTank,Attack,Defence,Movement,Range
		setCOPowerUnitStat		COID,Unit_Tank,Attack,Defence,Movement,Range
		setCOPowerUnitStat		COID,Unit_Recon,Attack,Defence,Movement,Range
		setCOPowerUnitStat		COID,Unit_Neotank,Attack,Defence,Movement,Range
		setCOPowerUnitStat		COID,Unit_Antiair,Attack,Defence,Movement,Range
		setCOPowerUnitStat		COID,Unit_Fighter,Attack,Defence,Movement,Range
		setCOPowerUnitStat		COID,Unit_Bomber,Attack,Defence,Movement,Range
		setCOPowerUnitStat		COID,Unit_BattleCopter,Attack,Defence,Movement,Range
		setCOPowerUnitStat		COID,Unit_Cruiser,Attack,Defence,Movement,Range
		setCOPowerUnitStat		COID,Unit_Sub,Attack,Defence,Movement,Range
	.endmacro
	.macro setCOPowerIndirectStat, COID,Attack,Defence,Movement,Range
		setCOPowerUnitStat		COID,Unit_Artillery,Attack,Defence,Movement,Range
		setCOPowerUnitStat		COID,Unit_Rockets,Attack,Defence,Movement,Range
		setCOPowerUnitStat		COID,Unit_Missiles,Attack,Defence,Movement,Range
		setCOPowerUnitStat		COID,Unit_Battleship,Attack,Defence,Movement,Range
	.endmacro
	.macro setCOPowerTransportStat, COID,Attack,Defence,Movement,Range
		setCOPowerUnitStat		COID,Unit_APC,Attack,Defence,Movement,Range
		setCOPowerUnitStat		COID,Unit_TransportCopter,Attack,Defence,Movement,Range
		setCOPowerUnitStat		COID,Unit_Lander,Attack,Defence,Movement,Range
	.endmacro
	.macro setCOPowerLandStat, COID,Attack,Defence,Movement,Range
		setCOPowerUnitStat		COID,Unit_MidTank,Attack,Defence,Movement,Range
		setCOPowerUnitStat		COID,Unit_Tank,Attack,Defence,Movement,Range
		setCOPowerUnitStat		COID,Unit_Recon,Attack,Defence,Movement,Range
		setCOPowerUnitStat		COID,Unit_APC,Attack,Defence,Movement,Range
		setCOPowerUnitStat		COID,Unit_Neotank,Attack,Defence,Movement,Range
		setCOPowerUnitStat		COID,Unit_Artillery,Attack,Defence,Movement,Range
		setCOPowerUnitStat		COID,Unit_Rockets,Attack,Defence,Movement,Range
		setCOPowerUnitStat		COID,Unit_Antiair,Attack,Defence,Movement,Range
		setCOPowerUnitStat		COID,Unit_Missiles,Attack,Defence,Movement,Range
	.endmacro

	.macro setCOPowerIndirectLandStat, COID,Attack,Defence,Movement,Range
		setCOPowerUnitStat		COID,Unit_Artillery,Attack,Defence,Movement,Range
		setCOPowerUnitStat		COID,Unit_Rockets,Attack,Defence,Movement,Range
		setCOPowerUnitStat		COID,Unit_Antiair,Attack,Defence,Movement,Range
	.endmacro

	.macro setCOPowerAirStat, COID,Attack,Defence,Movement,Range
		setCOPowerUnitStat		COID,Unit_Fighter,Attack,Defence,Movement,Range
		setCOPowerUnitStat		COID,Unit_Bomber,Attack,Defence,Movement,Range
		setCOPowerUnitStat		COID,Unit_BattleCopter,Attack,Defence,Movement,Range
		setCOPowerUnitStat		COID,Unit_TransportCopter,Attack,Defence,Movement,Range
	.endmacro
	.macro setCOPowerNavyStat, COID,Attack,Defence,Movement,Range
		setCOPowerUnitStat		COID,Unit_Battleship,Attack,Defence,Movement,Range
		setCOPowerUnitStat		COID,Unit_Cruiser,Attack,Defence,Movement,Range
		setCOPowerUnitStat		COID,Unit_Lander,Attack,Defence,Movement,Range
		setCOPowerUnitStat		COID,Unit_Sub,Attack,Defence,Movement,Range
	.endmacro
	.macro setCOSuperAllStat, COID,Attack,Defence,Movement,Range
		setCOSuperUnitStat		COID,1,Attack,Defence,Movement,Range
		setCOSuperUnitStat		COID,2,Attack,Defence,Movement,Range
		setCOSuperUnitStat		COID,3,Attack,Defence,Movement,Range
		setCOSuperUnitStat		COID,4,Attack,Defence,Movement,Range
		setCOSuperUnitStat		COID,5,Attack,Defence,Movement,Range
		setCOSuperUnitStat		COID,6,Attack,Defence,Movement,Range
		setCOSuperUnitStat		COID,7,Attack,Defence,Movement,Range
		setCOSuperUnitStat		COID,8,Attack,Defence,Movement,Range
		setCOSuperUnitStat		COID,9,Attack,Defence,Movement,Range
		setCOSuperUnitStat		COID,10,Attack,Defence,Movement,Range
		setCOSuperUnitStat		COID,11,Attack,Defence,Movement,Range
		setCOSuperUnitStat		COID,12,Attack,Defence,Movement,Range
		setCOSuperUnitStat		COID,13,Attack,Defence,Movement,Range
		setCOSuperUnitStat		COID,14,Attack,Defence,Movement,Range
		setCOSuperUnitStat		COID,15,Attack,Defence,Movement,Range
		setCOSuperUnitStat		COID,16,Attack,Defence,Movement,Range
		setCOSuperUnitStat		COID,17,Attack,Defence,Movement,Range
		setCOSuperUnitStat		COID,18,Attack,Defence,Movement,Range
		setCOSuperUnitStat		COID,19,Attack,Defence,Movement,Range
		setCOSuperUnitStat		COID,20,Attack,Defence,Movement,Range
		setCOSuperUnitStat		COID,21,Attack,Defence,Movement,Range
		setCOSuperUnitStat		COID,22,Attack,Defence,Movement,Range
		setCOSuperUnitStat		COID,23,Attack,Defence,Movement,Range
		setCOSuperUnitStat		COID,24,Attack,Defence,Movement,Range
	.endmacro
	.macro setCOSuperSoldierStat, COID,Attack,Defence,Movement,Range
		setCOSuperUnitStat		COID,Unit_Infantry,Attack,Defence,Movement,Range
		setCOSuperUnitStat		COID,Unit_Mech,Attack,Defence,Movement,Range
	.endmacro
	.macro setCOSuperDirectStat, COID,Attack,Defence,Movement,Range
		setCOSuperUnitStat		COID,Unit_MidTank,Attack,Defence,Movement,Range
		setCOSuperUnitStat		COID,Unit_Tank,Attack,Defence,Movement,Range
		setCOSuperUnitStat		COID,Unit_Recon,Attack,Defence,Movement,Range
		setCOSuperUnitStat		COID,Unit_Neotank,Attack,Defence,Movement,Range
		setCOSuperUnitStat		COID,Unit_Antiair,Attack,Defence,Movement,Range
		setCOSuperUnitStat		COID,Unit_Fighter,Attack,Defence,Movement,Range
		setCOSuperUnitStat		COID,Unit_Bomber,Attack,Defence,Movement,Range
		setCOSuperUnitStat		COID,Unit_BattleCopter,Attack,Defence,Movement,Range
		setCOSuperUnitStat		COID,Unit_Cruiser,Attack,Defence,Movement,Range
		setCOSuperUnitStat		COID,Unit_Sub,Attack,Defence,Movement,Range
	.endmacro
	.macro setCOSuperIndirectStat, COID,Attack,Defence,Movement,Range
		setCOSuperUnitStat		COID,Unit_Artillery,Attack,Defence,Movement,Range
		setCOSuperUnitStat		COID,Unit_Rockets,Attack,Defence,Movement,Range
		setCOSuperUnitStat		COID,Unit_Missiles,Attack,Defence,Movement,Range
		setCOSuperUnitStat		COID,Unit_Battleship,Attack,Defence,Movement,Range
	.endmacro
	.macro setCOSuperTransportStat, COID,Attack,Defence,Movement,Range
		setCOSuperUnitStat		COID,Unit_APC,Attack,Defence,Movement,Range
		setCOSuperUnitStat		COID,Unit_TransportCopter,Attack,Defence,Movement,Range
		setCOSuperUnitStat		COID,Unit_Lander,Attack,Defence,Movement,Range
	.endmacro
	.macro setCOSuperLandStat, COID,Attack,Defence,Movement,Range
		setCOSuperUnitStat		COID,Unit_MidTank,Attack,Defence,Movement,Range
		setCOSuperUnitStat		COID,Unit_Tank,Attack,Defence,Movement,Range
		setCOSuperUnitStat		COID,Unit_Recon,Attack,Defence,Movement,Range
		setCOSuperUnitStat		COID,Unit_APC,Attack,Defence,Movement,Range
		setCOSuperUnitStat		COID,Unit_Neotank,Attack,Defence,Movement,Range
		setCOSuperUnitStat		COID,Unit_Artillery,Attack,Defence,Movement,Range
		setCOSuperUnitStat		COID,Unit_Rockets,Attack,Defence,Movement,Range
		setCOSuperUnitStat		COID,Unit_Antiair,Attack,Defence,Movement,Range
		setCOSuperUnitStat		COID,Unit_Missiles,Attack,Defence,Movement,Range
	.endmacro
	.macro setCOSuperIndirectLandStat, COID,Attack,Defence,Movement,Range
		setCOSuperUnitStat		COID,Unit_Artillery,Attack,Defence,Movement,Range
		setCOSuperUnitStat		COID,Unit_Rockets,Attack,Defence,Movement,Range
		setCOSuperUnitStat		COID,Unit_Missiles,Attack,Defence,Movement,Range
	.endmacro

	.macro setCOSuperAirStat, COID,Attack,Defence,Movement,Range
		setCOSuperUnitStat		COID,Unit_Fighter,Attack,Defence,Movement,Range
		setCOSuperUnitStat		COID,Unit_Bomber,Attack,Defence,Movement,Range
		setCOSuperUnitStat		COID,Unit_BattleCopter,Attack,Defence,Movement,Range
		setCOSuperUnitStat		COID,Unit_TransportCopter,Attack,Defence,Movement,Range
	.endmacro
	.macro setCOSuperNavyStat, COID,Attack,Defence,Movement,Range
		setCOSuperUnitStat		COID,Unit_Battleship,Attack,Defence,Movement,Range
		setCOSuperUnitStat		COID,Unit_Cruiser,Attack,Defence,Movement,Range
		setCOSuperUnitStat		COID,Unit_Lander,Attack,Defence,Movement,Range
		setCOSuperUnitStat		COID,Unit_Sub,Attack,Defence,Movement,Range
	.endmacro
	; sets a blanket set of stats for all units.
	.macro setCOAllStat, COID,Attack,Defence,Movement,Range
		setCOD2DAllStat 	COID,Attack,Defence,Movement,Range
		setCOPowerAllStat 	COID,Attack,Defence,Movement,Range
		setCOSuperAllStat 	COID,Attack,Defence,Movement,Range
	.endmacro
	
	; co blanker (set data to defaults (Andy))
	.macro setCODefaults,COID
		setCOName	COID, 0xA18			;Andy's Name
		setCOMusic	COID, MusicWarsWorldNews	;
		setCOPowerMusic COID, MusicPower
		setCOSuperMusic COID, MusicSuper
		setCOGameID	COID, Game_AW2			;AW2
		
		setCOSnowPerc	COID, 0
		setCORainPerc	COID, 0
		
		setCOPowerCost	COID, 3
		setCOSuperCost	COID, 6
		
		setCOArmyStyle	COID, ArmyOrangeStar		; OS army
		setCOPropStyle	COID, ArmyOrangeStar
		setCOColor		COID, 1
		
		setCOAIPowerRange	COID, 25
		setCOAIPowerTrigger	COID, 95
		setCOAIPowerTriggerASM	COID, AIActivateStartOfTurn
		; andy's quotes
		setCOpowerText		COID, 0xb5f,0xb60,0xb61,0xb62,0xb63,0xb64
		setCOprofileText	COID, 0x979,0x97a,0x97b,0x97c
		setCOvictoryText	COID, 0xb46
		
		setCOd2dASM				COID, 0	; no effects.
		setCOd2dAbilities			COID, 0
		setCOd2dVision				COID, 0 
		setCOd2dLuck				COID, 10
		setCOd2dBadLuck				COID, 0
		setCOd2dCounter				COID, 0
		setCOd2dPrice				COID, 0
		setCOd2dCapture				COID, 0
		setCOd2dMove				COID, MovementChartClear,MovementChartSnow,MovementChartRain
		setCOd2dRepair				COID, 0
		setCOd2dIncome				COID, 0
		setCOd2dDirectDefence			COID, 0
		setCOd2dIndirectDefence			COID, 0
		setCOd2dTerrainStarReduction		COID, 0
		setCOd2dTerrainFirepowerList		COID, 0
		setCOd2dDamageToFunds			COID, 0
		setCOd2dExtraTerrainStars		COID, 0,0
		setCOd2dFlatCaptureBonus		COID, 0
		setCOd2dFlatIncomeBonus			COID, 0
		setCOd2dSnowFirepower			COID, 0
		setCOd2dRainFirepower			COID, 0
		setCOd2dTerrainPowerMult		COID, 10
		setCOd2dDamageReflect			COID, 0
		
		setCOPowerName				COID,0x8e4
		setCOPowerASM				COID, COPowerDefault	; no effects.
		setCOPowerAbilities			COID, 0
		setCOPowerVision			COID, 0 
		setCOPowerLuck				COID, 10
		setCOPowerBadLuck			COID, 0
		setCOPowerCounter			COID, 0
		setCOPowerPrice				COID, 0
		setCOPowerCapture			COID, 0
		setCOPowerMove				COID, MovementChartClear,MovementChartSnow,MovementChartRain
		setCOPowerRepair			COID, 0
		setCOPowerIncome			COID, 0
		setCOPowerDirectDefence			COID, 0
		setCOPowerIndirectDefence		COID, 0
		setCOPowerTerrainStarReduction		COID, 0
		setCOPowerTerrainFirepowerList		COID, 0
		setCOPowerDamageToFunds			COID, 0
		setCOPowerExtraTerrainStars		COID, 0,0
		setCOPowerFlatCaptureBonus		COID, 0
		setCOPowerFlatIncomeBonus		COID, 0
		setCOPowerSnowFirepower			COID, 0
		setCOPowerRainFirepower			COID, 0
		setCOPowerTerrainPowerMult		COID, 10
		setCOPowerDamageReflect			COID, 0
		
		setCOSuperName				COID,0x8e5
		setCOSuperASM				COID, COPowerDefault	; no effects.
		setCOSuperAbilities			COID, 0
		setCOSuperVision			COID, 0 
		setCOSuperLuck				COID, 10
		setCOSuperBadLuck			COID, 0
		setCOSuperCounter			COID, 0
		setCOSuperPrice				COID, 0
		setCOSuperCapture			COID, 0
		setCOSuperMove				COID, MovementChartClear,MovementChartSnow,MovementChartRain
		setCOSuperRepair			COID, 0
		setCOSuperIncome			COID, 0
		setCOSuperDirectDefence			COID, 0
		setCOSuperIndirectDefence		COID, 0
		setCOSuperTerrainStarReduction		COID, 0
		setCOSuperTerrainFirepowerList		COID, 0
		setCOSuperDamageToFunds			COID, 0
		setCOSuperExtraTerrainStars		COID, 0,0
		setCOSuperFlatCaptureBonus		COID, 0
		setCOSuperFlatIncomeBonus		COID, 0
		setCOSuperSnowFirepower			COID, 0
		setCOSuperRainFirepower			COID, 0
		setCOSuperTerrainPowerMult		COID, 10
		setCOSuperDamageReflect			COID, 0
			
		; Generic units
		setCOAllStat	COID,0,0,0,0

		; andy's graphics
		setCOGFXFullbody	COID,0x085d3d40
		setCOGFXName		COID,0x080f5500
		setCOGFXPalette		COID,0x080e4500
		setCOGFXFace		COID,0x080e8324,0x080ec940,0x080f1090
		setCOGFXSmallFace	COID,0x080e5db8
	
		setCOGFXPowerAnim	COID,5,0
		setCOGFXPowerRule	COID,COPCheckAllUnits	; animate over all units.
		setCOGFXPowerFX		COID,COPEffectNone ; no effect
		setCOGFXPowerType	COID,COPowerTypeStandard ; standard type
		setCOGFXPowerSFX	COID,0xb4,0xb5
	
		setCOGFXSuperAnim	COID,7,7
		setCOGFXSuperRule	COID,COPCheckAllUnits	; animate over all units.
		setCOGFXSuperFX		COID,COPEffectNone ; no effect
		setCOGFXSuperType	COID,COPowerTypeStandard ; standard type
		setCOGFXSuperSFX	COID,0x1f8,0x1f7
		
	.endmacro
