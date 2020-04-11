;macros_unitlist.asm
;Defines Macros for Unit scripts.

;Macro for Unit Entries in the Unit Scripts
	.macro	@@Unit,UnitID,UnitCurrentX,UnitCurrentY,UnitCurrentHP,UnitCurrentFuel,UnitCurrentAmmo,UnitStartAI
		.db	UnitCurrentX
		.db	UnitCurrentY
		.db	UnitID
		.db	00
		.db	UnitCurrentHP
		.db	UnitCurrentAmmo
		.db	UnitCurrentFuel
		.db	00
		.db	00
		.db	UnitStartAI
		.db	00
		.db	00
	.endmacro
	
	.macro @@UnitBasic,UnitID,UnitCurrentX,UnitCurrentY,UnitStartAI
		.db	UnitCurrentX
		.db	UnitCurrentY
		.db	UnitID
		.db	00
		.db	100
		.db	9
		.db	99
		.db	0
		.db	0
		.db	UnitStartAI
		.db	0
		.db	0
	.endmacro

	.macro	@@UnitCO,UnitID,UnitCurrentX,UnitCurrentY,UnitCurrentHP,UnitCurrentFuel,UnitCurrentAmmo,UnitStartAI,UnitCOOwner
		.db	UnitCurrentX
		.db	UnitCurrentY
		.db	UnitID
		.db	00
		.db	UnitCurrentHP
		.db	UnitCurrentAmmo
		.db	UnitCurrentFuel
		.db	00
		.db	00
		.db	UnitStartAI
		.db	1
		.db	UnitCOOwner+1
	.endmacro
	
	.macro @@UnitCOBasic,UnitID,UnitCurrentX,UnitCurrentY,UnitStartAI,UnitCOOwner
		.db	UnitCurrentX
		.db	UnitCurrentY
		.db	UnitID
		.db	00
		.db	100
		.db	9
		.db	99
		.db	0
		.db	0
		.db	UnitStartAI
		.db	1
		.db	UnitCOOwner+1
	.endmacro	

	.macro	@@UnitArmyStart,UnitArmyID
		.db	0xFE
		.db	UnitArmyID
		.dh	0
		.dw	0,0
	.endmacro
	
	.macro	@@UnitRandom,UnitCurrentX,UnitCurrentY,UnitStartAI,UnitRandomList
		.db	UnitCurrentX
		.db	UnitCurrentY
		.db	1
		.db	00
		.db	100
		.db	9
		.db	99
		.db	0
		.db	0
		.db	UnitStartAI
		.db	2
		.db	UnitRandomList
	.endmacro

	.macro	@@UnitListEnd
		.dw	0xFF,0,0
	.endmacro	