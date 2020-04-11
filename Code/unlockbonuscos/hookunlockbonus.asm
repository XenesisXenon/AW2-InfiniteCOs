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
;Blank Line
