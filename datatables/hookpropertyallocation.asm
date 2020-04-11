;hookpropertyallocation.asm
;Allocation table for the property capture tile/setting.

.org 0x08024198
	.dw	Table_PropertyTileAllocation	;0x08499B0C
	
.org 0x08090A24
	.dw	Table_PropertyTileAllocation	;0x08499B0C
	.dw	Table_PropertyTileAllocation	;Is entered twice in code
;Blank Line
