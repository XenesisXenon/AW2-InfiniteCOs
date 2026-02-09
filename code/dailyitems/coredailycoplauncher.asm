;coredailycoplauncher.asm

CommanderTurnStartCOPower:
	;This is a port of the CO Power launch code.
	push	{r4,r14}
	;Original Error Checking code, won't run this if there's nothing to run.
	ldr	r0,=CurrentPlayerTurn
	ldrb	r0,[r0]
	mov	r1,0x3C
	mul	r0,r1
	ldr	r1,=BasePlayerMemory-0x3C
	add	r0,r0,r1
	ldrb	r0,[r0,0x1D]
	mov	r1,0x0
	mov	r2,Gather_CO_PowerPointer
	bl	GatherCOAbilityPointer
	
	cmp	r0,0x0
	beq	CommanderTurnStartCOPowerEnd
	
	bl	LongCommanderTurnStartCOPower1;0x0801A168	;r0
	ldr	r1,=0x030044B0
	ldr	r0,=0x03001FD4
	ldr	r0,[r0]
	str	r0,[r1,0x8]
	ldr	r0,=CurrentGameOptions
	add	r0,0x32
	ldrb	r0,[r0]
	ldr	r4,=0x08090BF8
	cmp	r0,0x0
	beq	CommanderTurnStartCOPowerBranch
	
	ldr	r0,[r4]
	ldrb	r2,[r0]
	mov	r0,0xF
	mov	r1,0x0
	mov	r3,0x0
	bl	LongCommanderTurnStartCOPower2;0x08034534	;Nothing Easy
	
CommanderTurnStartCOPowerBranch:
	ldr	r0,[r4]
	ldrh	r0,[r0]
	mov	r1,0x0	;What CO Power Mode to Invoke. 0 = Daily, 1 = COP, 2 = SCOP
	bl	LongCommanderTurnStartCOPower3;0x0804438C	;Loads Script
	bl	LongCommanderTurnStartCOPower4;0x08024268	;r0
	
CommanderTurnStartCOPowerEnd:	
	pop	{r4}
	pop	{r0}
	bx	r0
	.pool
	
LongCommanderTurnStartCOPower1:
	LongBL	r0,0x0801A168+1
	
LongCommanderTurnStartCOPower2:
	push	{r4-r6,r14}
	lsl	r1,r1,0x18
	lsr	r1,r1,0x18
	LongBL	r5,0x0803453A+1

LongCommanderTurnStartCOPower3:
;	LongBL	r2,0x0804438C+1
;Modified version to use separate script for it.
	push	{r4,r5,r14}
	mov	r4,r0
	mov	r5,r1
;	bl	0x08044354	;CO Power Uses
;	mov	r0,r4
;	mov	r1,r5
;	bl	LongLongCommanderTurnStartCOPower3;0x080440A8	;CO Power Charge Modification
;	ldr	r0,=0x08499598
;	ldr	r1,[r0]
;	lsl	r0,r4,0x4
;	sub	r0,r0,r4
;	lsl	r0,r0,0x2
;	add	r0,r0,r1
;	add	r0,0x24
;	mov	r1,0x0
;	strb	r1,[r0]		;Is S/COP Ready? Noise
	mov	r0,r4
	mov	r1,r5
	bl	TurnStartCOPowerScriptLoader;0x08039634
	pop	{r4,r5}
	pop	{r0}
	bx	r0
	.pool
LongLongCommanderTurnStartCOPower3:
	LongBL	r2,0x080440A8+1
	
TurnStartCOPowerScriptLoader:
	push	{r4,r5,r14}
	mov	r4,r0
	mov	r5,r1
	ldr	r0,=ScriptDailyCOPower	;Original is 0x0849D77C
	bl	LongTurnStartCOPowerScriptLoader;0x0801C8F4
	str	r4,[r0,0x54]
	str	r5,[r0,0x58]
	pop	{r4,r5}
	pop	{r0}
	bx	r0
	.pool
	
LongTurnStartCOPowerScriptLoader:
	LongBL	r2,0x0801C8F4+1
	
LongCommanderTurnStartCOPower4:	
	LongBL	r0,0x08024268+1
	
