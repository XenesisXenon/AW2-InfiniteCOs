;OnSelect_End.asm
;Code executed when the End menu option is selected
;Custom with automatic capture for un-moved player infantry units
;Follow up: captures start but don't finish

MenuOnSelect_EndAndCapture:
;This code runs auto-capture for all units that have not acted


;End Turn Command
	push	{r14}
	
	bl	MenuOnSelect_EndAndCapture_Capture ;New Code
	
	bl	@Long_OnSelectEnd_One;0x0801A168
	bl	@Long_OnSelectEnd_Five;0x08042B9C
	ldr	r1,=CurrentGameOptions
	mov	r0,r1
	add	r0,0x32
	ldrb	r0,[r0]
	cmp	r0,0x0
	beq	@Jump_Two
	mov	r0,r1
	add	r0,0x2E
	ldrb	r0,[r0]
	bl	@Long_OnSelectEnd_Six;0x080344F0
@Jump_Two:
	pop	{r0}
	bx	r0
	.pool
	
MenuOnSelect_EndAndCapture_Capture: ;Performs the capture
	push	{r14}	
	push	{r4-r7}
	
	ldr	r0,=CurrentGameOptions+GameRule_AnimationMode	;Disable animations to prevent crashes
	ldrb	r1,[r0]
	push	{r1}
	mov	r1,0
	strb	r1,[r0]
	
	ldr	r4,=CurrentPlayerTurn
	ldrb	r4,[r4]
	mov	r0,0xC0
	lsl	r0,r0,0x2
	mul	r0,r4
	ldr	r1,=BaseUnitOffset
	add	r0,r0,r1	;Player RAM in r0	
	mov	r4,r0
	mov	r5,0x0
	ldr	r6,=0x030040D8	;Menu command holding unit selected
	ldr	r7,=0x03003100	;Co-ordinates of unit
	
@Loop:	
	ldrb	r0,[r4,CurrentUnitID]	;Check unit exists
	cmp	r0,0x0
	beq	@Loop_False
	cmp	r0,0x1		;Is it an Infantry
	beq	@Loop_True
	cmp	r0,0x2		;Is it a Mech
	beq	@Loop_True
	b	@Loop_False
	
@Loop_True:
	ldrb	r0,[r4,CurrentUnitState]	;Is it in wait mode already
	lsl	r0,r0,0x19
	lsr	r0,r0,0x19
	cmp	r0,0x0
	bne	@Loop_False
	
	ldrb	r0,[r4,CurrentUnitState]	;Is the unit being transported
	lsl	r0,r0,0x16
	lsr	r0,r0,0x19
	cmp	r0,0x0
	bne	@Loop_False
	
	ldr	r0,=BaseMapPointer	;Check that the unit is on a captureable property
	ldr	r0,[r0]
	ldrh	r1,[r0]
	ldrb	r2,[r4,CurrentUnitYPosition]	;Y
	mul	r1,r2
	ldrb	r2,[r4,CurrentUnitXPosition]	;X
	add	r1,r1,r2
	add	r0,r0,r1
	ldr	r1,=0x1432
	add	r0,r0,r1
	ldrb	r1,[r0]
	mov	r2,0x1F
	and	r1,r2
	ldr	r2,=@Capture_Table
	add	r1,r1,r2
	ldrb	r1,[r1]
	cmp	r1,0x1
	bne	@Loop_False
	
	ldr	r1,=CurrentPlayerTurn	;Check that the property doesn't belong to the player
	ldrb	r1,[r1]
	ldrb	r0,[r0]
	lsr	r0,r0,0x5
	cmp	r0,r1
	beq	@Loop_False
	
	mov	r1,PlayerMemory_Length		;Check that the property doesn't belong to an ally
	mul	r0,r1
	ldr	r1,=BasePlayerMemory-PlayerMemory_Length
	add	r0,r0,r1
	add	r0,CurrentPlayerTeam
	ldrb	r0,[r0]
	ldr	r1,=CurrentPlayerTurn
	ldrb	r1,[r1]
	mov	r2,PlayerMemory_Length
	mul	r1,r2
	ldr	r2,=BasePlayerMemory-PlayerMemory_Length
	add	r1,r1,r2
	add	r1,CurrentPlayerTeam
	ldrb	r1,[r1]
	cmp	r0,r1
	beq	@Loop_False	
	
	str	r4,[r6]		;Store the unit in the buffers required
	ldr	r1,=0x03003F24
	ldrb	r0,[r4,0x2]
	strh	r0,[r7]
	strh	r0,[r1]
	ldrb	r0,[r4,0x3]
	strh	r0,[r7,0x2]
	strh	r0,[r1,0x2]
	bl	@Long_CaptureCommand
	
@Loop_False:
	add	r4,0xC
	add	r5,1
	cmp	r5,50
	ble	@Loop
	
	ldr	r0,=0x02022684	;Clear the unit buffer back to original value
	str	r0,[r6]
	
	ldr	r0,=CurrentGameOptions+GameRule_AnimationMode	;Restore animation setting
	pop	{r1}
	strb	r1,[r0]
	
	pop	{r4-r7}
	pop	{r0}
	bx	r0
	.pool

@Long_CaptureCommand:
	LongBL	r0,0x0802D064+1
	
@Long_OnSelectEnd_One:
	LongBL	r0,0x0801A168+1	
@Long_OnSelectEnd_Five:
	LongBL	r1,0x08042B9C+1	
@Long_OnSelectEnd_Six:
	LongBL	r3,0x080344F0+1
	
@Capture_Table:
	.db	0	;Null
	.db	0	;Plain
	.db	0	;River
	.db	0	;Mountain
	.db	0	;Wood
	.db	0	;Road
	.db	1	;City
	.db	0	;Sea
	.db	1	;HQ
	.db	0	;Underlay
	.db	1	;Airport
	.db	1	;Port
	.db	0	;Bridge
	.db	0	;Shoal
	.db	1	;Base
	.db	0	;Pipeline
	.db	0	;Pipeline Seam
	.db	0	;Silo
	.db	0	;Used Silo
	.db	0	;Reef
	.db	1	;Lab
	.db	0	;Minicannon S
	.db	1	;Minicannon N	;Comm Tower (Mod)
	.db	0	;Minicannon E
	.db	0	;Minicannon W
	.db	0	;Laser
	.db	0	;Black Cannon S
	.db	0	;Black Cannon N
	.db	0	;Volcano
	.db	0	;Factory
	.db	0	;Deathray
	.db	0	;Custom Tile
.align 4