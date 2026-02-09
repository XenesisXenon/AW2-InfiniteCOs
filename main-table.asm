;advance wars 2 - aw infinite cos complete build
;main-table.asm

;for tables that require code in dynamic locations
;battle maps purchaseable item table
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
	.include "./event/core_event.asm"

