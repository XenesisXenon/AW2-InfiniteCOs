;DesignMapsJukeboxSubmenu.asm

DesignMapsJukeboxSubmenu:
	push	{r14}
	bl	LongDesignMapsMenuLoadFunctionA;0x0801A614
	bl	LongDesignMapsMenuLoadFunctionB;0x0801A168
	bl	LongDesignMapsMenuLoadFunctionC;0x08024268
	mov	r0,0x70
	bl	LongDesignMapsMenuLoadFunctionD;0x0801B780
	
	ldr	r0,=DesignMapsJukeboxMenuList
	mov	r1,0x2 ;XOffset
	mov	r2,0x1	;YOffset
	mov	r3,0x0
	bl	LongDesignMapsMenuLoadFunctionE;0x0801A148
	bl	DesignMapsJukeboxSubmenuIconClear
	pop	{r0}
	bx	r0
	.pool
	
DesignMapsJukeboxSubmenuIconClear:
	push	{r14}
	ldr	r1,=0x06010000
	ldr	r2,=0x28D
	mov	r0,0x0
	mov	r3,0x1D
	bl	LongDesignMapsMenuLoadFunctionF;0x0801F150
	pop	{r0}
	bx	r0
	.pool

LongDesignMapsMenuLoadFunctionA:
	LongBL	r0,0x0801A614+1
	
LongDesignMapsMenuLoadFunctionB:
	LongBL	r0,0x0801A168+1
	
LongDesignMapsMenuLoadFunctionC:
	LongBL	r0,0x08024268+1	
	
LongDesignMapsMenuLoadFunctionD:
	LongBl	r2,0x0801B780+1
	
LongDesignMapsMenuLoadFunctionE:
	push	{r4,r14}
	LongBL	r4,0x0801A14A+1	

LongDesignMapsMenuLoadFunctionF:
	push	{r4,r5,r14}
	LongBL	r5,0x0801F152+1
	

