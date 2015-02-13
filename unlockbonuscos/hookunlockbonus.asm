;hookunlockbonuscos.asm
;Allows bonus COs to always be used
.org 0x0803CAB8
	ldr	r1,=CoreUnlockBonusCOs+1
	bx	r1
	.pool
.org 0x08091378
	.dw VSCoSelectTable
	
.org 0x0807F608
	.dw WarRoomCOSelectTable
	
.org 0x08043CDC
	.db MaxCOId-0x5

;Blank Line
