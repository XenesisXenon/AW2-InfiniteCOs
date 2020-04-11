;MenuActionDebugSubmenu.asm

MenuActionDebugSubmenu:
	push	{r14}
	bl	LongMenuLoadFunctionA	;0x0801A614
	bl	LongMenuLoadFunctionB	;0x0801A168
	ldr	r0,=MenuDebugSubmenuList
	bl	MenuActionDebugSubmenuLoad
	pop	{r0}
	bx	r0
	.pool
	
MenuActionDebugSubmenuLoad:
	push	{r4,r14}
	add	sp,-0x4
	push	{r0}
	mov	r4,0x1
	ldr	r0,=0x030033E4
	ldrh	r1,[r0]
	ldr	r0,=0x08499590
	ldr	r0,[r0]
	mov	r2,0x4
	ldsh	r0,[r0,r2]
	cmp	r0,0x0
	bge	MenuActionDebugSubmenuLoad1
	
	add	r0,0xF
MenuActionDebugSubmenuLoad1:	
	asr	r0,r0,0x4
	sub	r0,r1,r0
	cmp	r0,0x6
	bgt	MenuActionDebugSubmenuLoad2
	
	mov	r4,0x14
MenuActionDebugSubmenuLoad2:
	bl	LongMenuLoadFunctionC;0x08024268
	pop	{r0}
	ldr	r1,=0x0802D52C+1
	bx	r1
	.pool	
	
;LongMenuLoadFunctionA:
;	LongBL	r0,0x0801A614+1
;LongMenuLoadFunctionB:
;	LongBL	r0,0x0801A168+1
;LongMenuLoadFunctionC:
;	LongBL	r0,0x08024268+1
;Blank Line	
