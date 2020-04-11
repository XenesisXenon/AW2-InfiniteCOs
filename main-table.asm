;Advance Wars 2 - AW Infinite COs Complete Build
;main-table.asm

;For tables that require code in dynamic locations
;Battle Maps Purchaseable Item Table
 	.align 4
	.include "./datatables/core_tileallocation_table.asm"
	.align 4
	.include "./datatables/core_forcerank_table.asm"
	.align 4
	.include "./graphics/coregraphics.asm"
	.align 4
	.include "./datatables/table_campaignforces.asm"
	.align 4
	.include "./datatables/table_battlemaps_custom.asm"
	.align 4
	.include "./datatables/corecomain.asm"	
	.align 4
	.include "./datatables/macroco.asm"
	.align 4
	.include "./datatables/tablepropertyallocation.asm"
	.align 4
	.include "./code/defencedisplay/blinkcheckexpanded.asm"
	.align 4
	.include "./Event/core_event.asm"

