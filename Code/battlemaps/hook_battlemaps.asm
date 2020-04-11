;hook_battlemaps.asm
;Set up game changing options here

;Swaps the Unlock Lists
	;Set Bit once
	;This one runs first
.org 0x0803C7A2
	ldr	r0,=Core_BattlemapsList_Swap+1
	bx	r0
	.pool

;Swaps the title text
.org 0x08048AE0
	ldr	r0,=Core_TitleTextSwap+1
	bx	r0
	.pool

.org 0x0803C86A
	ldr	r3,=Battlemaps_ListSwap_1+1
	bx	r3
	.pool
.org 0x080487DC
	ldr	r1,=Battlemaps_ListSwap_2+1
	bx	r1
	.pool
.org 0x080494D8
	ldr	r2,=Battlemaps_ListSwap_3+1
	bx	r2
	.pool
	
;Checks Item Cost for Purchase
.org 0x08049566
	ldr	r2,=Battlemaps_ListSwap_4+1
	bx	r2
	.pool
.org 0x080495CE
	ldr	r2,=Battlemaps_ListSwap_5+1
	bx	r2
	.pool
.org 0x08049668
	ldr	r2,=Battlemaps_ListSwap_6+1
	bx	r2
	.pool
