;macros_unit.asm
;Defines Macros for defining Units

	;text ID for name
	.macro setUnitName,UnitID, textID
		.org 	UnitDataTable + (UnitID-1)*0x5C + 0
		.dh	textID
	.endmacro
	
	.macro setUnitUnknown,UnitID,Offset,Length,Value
		.org 	UnitDataTable + (UnitID-1)*0x5C + Offset
		.if Length == 1
		.db	Value
		.endif
		.if Length == 2
		.dh	Value
		.endif
		.if Length == 4
		.dw	Value
		.endif
	.endmacro
	
	;text ID for primary
	.macro setUnitPrimaryName,UnitID,textID
		.org 	UnitDataTable + (UnitID-1)*0x5C + 2
		.dh	textID
	.endmacro

	;text ID for name
	.macro setUnitSecondaryName,UnitID, textID
		.org 	UnitDataTable + (UnitID-1)*0x5C + 4
		.dh	textID
	.endmacro

	;Unit Price per HP
	.macro setUnitPrice,UnitID,EntryValue
		.org 	UnitDataTable + (UnitID-1)*0x5C + 6
		.dh	EntryValue
	.endmacro

	;Movement
	.macro setUnitMove,UnitID,EntryValue
		.org 	UnitDataTable + (UnitID-1)*0x5C + 10
		.db	EntryValue
	.endmacro

	;Ammo
	.macro setUnitAmmo,UnitID,EntryValue
		.org 	UnitDataTable + (UnitID-1)*0x5C + 11
		.db	EntryValue
	.endmacro

	;Vision
	.macro setUnitVision,UnitID,EntryValue
		.org 	UnitDataTable + (UnitID-1)*0x5C + 12
		.db	EntryValue
	.endmacro
	
	;AI Control Setting
	;Note that what the values for this do is currently unknown
	.macro setUnitAIControl,UnitID,EntryValue
		.org UnitDataTable + (UnitID-1)*0x5C + 13
		.db	EntryValue
	.endmacro

	;Minimum Range
	.macro setUnitMinRange,UnitID,EntryValue
		.org 	UnitDataTable + (UnitID-1)*0x5C + 14
		.db	EntryValue
		.if EntryValue > 1
			.org 	UnitDataTable + (UnitID-1)*0x5C + 17
			.db	BButtonIndirect
		.elseif EntryValue == 0
			.org 	UnitDataTable + (UnitID-1)*0x5C + 17
			.db	0
		.else
			.org 	UnitDataTable + (UnitID-1)*0x5C + 17
			.db	BButtonDirect
		.endif
	.endmacro

	;Max Range
	.macro setUnitMaxRange,UnitID,EntryValue
		.org 	UnitDataTable + (UnitID-1)*0x5C + 15
		.db	EntryValue
	.endmacro

	;Fuel
	.macro setUnitFuel,UnitID,EntryValue
		.org 	UnitDataTable + (UnitID-1)*0x5C + 16
		.db	EntryValue
	.endmacro

	;Transport Ability
	.macro setUnitTransport,UnitID,EntryValue
		.org 	UnitDataTable + (UnitID-1)*0x5C + 20
		.dw	EntryValue
	.endmacro

	;Unit Class
	.macro setUnitClass,UnitID,EntryValue
		.org 	UnitDataTable + (UnitID-1)*0x5C + 24
		.db	EntryValue
	.endmacro

	;Movement
	.macro setUnitMoveType,UnitID,EntryValue
		.org 	UnitDataTable + (UnitID-1)*0x5C + 25
		.db	EntryValue
	.endmacro

	;Build Location
	.macro setUnitBuildLocation,UnitID,EntryValue
		.org 	UnitDataTable + (UnitID-1)*0x5C + 26
		.db	EntryValue
	.endmacro

	;AI Type
	.macro setUnitAIType,UnitID,EntryValue
		.org 	UnitDataTable + (UnitID-1)*0x5C + 27
		.db	EntryValue
	.endmacro

	;AI Preferential Targeting
	.macro setUnitAIPriorityTarget,UnitID,EntryValue
		.org 	UnitDataTable + (UnitID-1)*0x5C + 28
		.db	EntryValue
	.endmacro

	;AI Unit Classification
	.macro setUnitAIUnitClass,UnitID,EntryValue
		.org 	UnitDataTable + (UnitID-1)*0x5C + 29
		.db	EntryValue
	.endmacro

	;Weapon Damage
	.macro setUnitDamagePrimary,UnitID,Damage,TargetedID
		.org 	UnitDataTable + (UnitID-1)*0x5C + 30 + TargetedID
		.db	Damage
	.endmacro

	;Weapon Damage
	.macro setUnitDamageSecondary,UnitID,Damage,TargetedID
		.org 	UnitDataTable + (UnitID-1)* 0x5C + 56 + TargetedID
		.db	Damage
	.endmacro

	;Terrain Supplied On
	.macro setUnitSupplyTerrain,UnitID,EntryValue
		.org 	UnitDataTable + (UnitID-1)* 0x5C + 84 
		.dw	EntryValue
	.endmacro

	;Fuel Used On
	.macro setUnitFuelBurn,UnitID,EntryValue
		.org 	UnitDataTable + (UnitID-1)* 0x5C + 88
		.dw	EntryValue
	.endmacro

	;Range Display
	.macro setUnitBRangeDisplay,UnitID,EntryValue
		.org 	UnitDataTable + (UnitID-1)*0x5C + 17
		.db	EntryValue
	.endmacro

	;Damage Vs. Inventions (Custom)
	.macro setUnitInventionDamage,UnitID,EntryValue1,EntryValue2
		.org 	UnitDataTable + (UnitID-1)* 0x5C + 82 
		.db	EntryValue1
		.db	EntryValue2
	.endmacro
	
;Set Defaults
	.macro setUnitDefaults,UnitID
		setUnitName		UnitID,2237	;Md Tank
		setUnitPrimaryName	UnitID,2258	;Md Tank
		setUnitSecondaryName	UnitID,2253	;Md Tank
		setUnitPrice		UnitID,100
		setUnitMove		UnitID,1
		setUnitAmmo		UnitID,0
		setUnitVision		UnitID,1
		setUnitMinRange		UnitID,1
		setUnitMaxRange		UnitID,1
		setUnitFuel		UnitID,99
		setUnitTransport	UnitID,0
		setUnitClass		UnitID,1
		setUnitMoveType		UnitID,0
		setUnitBuildLocation	UnitID,0
		setUnitAIControl	UnitID,4
		setUnitAIType		UnitID,0
		setUnitAIPriorityTarget	UnitID,0
		setUnitAIUnitClass	UnitID,0
		setUnitSupplyTerrain	UnitID,0
		setUnitFuelBurn		UnitID,0
		setUnitBRangeDisplay	UnitID,1
		setUnitInventionDamage	UnitID,0,0
		setUnitUnknown		UnitID,8,2,0
		setUnitUnknown		UnitID,18,2,0
		
		.org 	UnitDataTable + (UnitID-1)*0x5C + 30	;No Firepower for all Primary/Secondary Entries
		.dw	0,0,0,0,0,0,0,0,0,0,0,0,0

	.endmacro

;Macro Set Two - Unit Sprites/Graphics Animations
	;Range Display
	.macro setUnitSpriteMove,UnitID,EntryValueOS,EntryValueBM,EntryValueGE,EntryValueYC,EntryValueBH
		.org 	UnitAnimDataTable + (UnitID-1)*34
		.db	EntryValueOS,EntryValueBM,EntryValueGE,EntryValueYC,EntryValueBH
	.endmacro

