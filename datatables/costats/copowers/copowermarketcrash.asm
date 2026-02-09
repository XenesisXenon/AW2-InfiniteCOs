;copowergoldrush.asm
;Graphical Effect and Fund Multiplication for Gold Rush

.align 4
COPowerMarketCrash:
	push	{r4,r14}
	mov	r4,r0
;Business End	
	ldr	r0,=CurrentPlayerTurn
	ldrh	r0,[r0]
	ldr	r1,=0x08499598
	ldr	r2,[r1]
	lsl	r1,r0,0x4
	sub	r1,r1,r0
	lsl	r1,r1,0x2
	add	r1,r1,r2
	ldr	r1,[r1]
	
	ldr	r2,=50000
	sub	r2,r2,r1
	mov	r0,100
	mul	r0,r2
	cmp	r0,0
	bgt	COPowerMarketCrashFundsPositive
	mov	r0,0
COPowerMarketCrashFundsPositive:
	ldr	r1,=50000
	bl	DivisionFunction
	mov	r3,r0
	
	ldr	r0,=CurrentPlayerTurn
	ldrh	r0,[r0]
	ldr	r1,=0x08499598
	ldr	r2,[r1]
	lsl	r1,r0,0x4
	sub	r1,r1,r0
	lsl	r1,r1,0x2
	add	r1,r1,r2
;Load Alliance	
	add	r1,0x2A
	ldrb	r0,[r1]	
	mov	r1,r3
	bl	COPowerMarketCrashApplicator
	
	
;Graphical and SFX
	mov	r0,0xFB
	lsl	r0,r0,0x1
	push	{r4}
	bl	LongBLCOPowerMarketCrash1;0x0803B4DC
	pop	{r4}
	mov	r0,r4
	bl	LongBLCOPowerMarketCrash2;0x080443C4
	pop	{r4}
	pop	{r0}
	bx	r0
	.pool
	
COPowerMarketCrashApplicator:
	push	{r4,r14}
	add	sp,-0x8
	str	r0,[sp]
	str	r1,[sp,0x4]
	mov	r4,0x0
	
COPowerMarketCrashApplicatorLoop:
	ldr	r0,[sp]
	ldr	r1,[sp,0x4]
	ldr	r2,=BasePlayerMemory
	mov	r3,0x3C
	mul	r3,r4
	add	r2,r2,r3
	
	ldrb	r3,[r2,0x14]
	cmp	r3,0x0
	bne	COPowerMarketCrashApplicatorLoopEnd
	
	ldrb	r3,[r2,0x1B]
	cmp	r3,0x0
	beq	COPowerMarketCrashApplicatorLoopEnd
	
	mov	r3,r2
	add	r3,0x2A
	ldrb	r3,[r3]
	cmp	r3,r0
	beq	COPowerMarketCrashApplicatorLoopEnd
	ldr	r0,[r2,0x20]
	mul	r0,r1
	mov	r1,100
	bl	DivisionFunction
	str	r0,[r2,0x20]
COPowerMarketCrashApplicatorLoopEnd:	
	add	r4,1
	cmp	r4,4
	blt	COPowerMarketCrashApplicatorLoop
	add	sp,0x8
	pop	{r4}
	pop	{r0}
	bx	r0
	.pool
	
LongBLCOPowerMarketCrash1:
	LongBL r4,0x0803B4DC+1
	
LongBLCOPowerMarketCrash2:
	LongBL r1,0x080443C4+1
;Blank Line	
