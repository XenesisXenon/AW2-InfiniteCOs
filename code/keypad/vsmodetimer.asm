;VsModeTimer.asm

ButtonInput_VsModeTimer:
	ldr	r0,=CurrentPlayerTurn
	ldrb	r0,[r0]
	sub	r0,0x1
	mov	r1,PlayerMemory_Length
	mul	r0,r1
	ldr	r1,=BasePlayerMemory
	add	r0,r0,r1
	ldrb	r0,[r0,CurrentPlayerAIControl]
	cmp	r0,0x1	;Human Control
	bne	@End
	
	ldr	r0,=CurrentGameOptions
	add	r0,GameRule_TurnTimer
	ldrh	r0,[r0]
	cmp	r0,0x0	;Timer Value 0 = No Timer
	beq	@End
	
	;Check to see if time limit is over 900 seconds
	;Automatically sets it to lower value of 900s/15 min
	ldr	r1,=900
	cmp	r0,r1
	ble	@Timer_InBounds
	
	ldr	r0,=CurrentGameOptions
	add	r0,GameRule_TurnTimer
	strh	r1,[r0]
	
@Timer_InBounds:	
	ldr	r0,=Turn_Frame_Counter
	ldr	r0,[r0]
	mov	r1,System_FramesPerSecond	;Game FPS
	bl	DivisionFunction
	
	ldr	r1,=CurrentGameOptions
	add	r1,GameRule_TurnTimer
	ldrh	r1,[r1]
	
	cmp	r0,r1
	blt	@End	;Don't End Turn if there's time left
	
	;End Turn
	bl	Long_EndTurn
	pop	{r4,r5}	;Force-End Subroutine here so no keypad actions taken
	pop	{r0}
	bx	r0	
	
@End:
	;ldr	r4,=ButtonInput_Return_MainGame+1
	ldr	r4,=ButtonInput_MusicToggle+1
	bx	r4
	.pool

Long_EndTurn:
	LongBL	r4,0x08042B9C+1
