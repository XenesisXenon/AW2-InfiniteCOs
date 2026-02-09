;core_d2dmusic.asm

Core_D2DMusic:
	cmp	r1,COCCOEliwood
	beq	@LastEnemyCheck
@Standard_Music:
	lsl	r0,r1,0x6
	add	r0,r0,r1
	lsl	r0,r0,0x2
	add	r0,r0,r3
	ldrh	r0,[r0,0x4]
	bx	r14
	
@LastEnemyCheck:
	push	{r1-r7}
	ldr	r0,=CurrentPlayerTurn
	ldrh	r0,[r0]
	mov	r7,r0
	mov	r0,0x3C
	mul	r0,r7
	ldr	r1,=BasePlayerMemory-0x3C
	add	r0,r0,r1
	mov	r6,r0
	mov	r5,0
	
	mov	r0,1
	cmp	r0,r7
	beq	@Player_Two
	
	mov	r1,0x3C
	mul	r0,r1
	ldr	r1,=BasePlayerMemory-0x3C
	add	r0,r0,r1
	ldrb	r1,[r0,CurrentPlayerDefeated]
	cmp	r1,0x1
	beq	@Player_Two
	
	mov	r3,CurrentPlayerTeam
	ldrb	r1,[r0,r3]
	ldrb	r2,[r6,r3]
	cmp	r1,r2
	beq	@Player_Two
	
	mov	r3,CurrentPlayerUnitCount
	mov	r4,CurrentPlayerUnitLossCount
	ldrb	r1,[r0,r3]
	ldrb	r2,[r0,r4]
	sub	r1,r1,r2
	cmp	r1,1
	bne	@Player_Two
	add	r5,r1,r5
	b	@Player_Two
	
@Player_Two:
	mov	r0,2
	cmp	r0,r7
	beq	@Player_Three
	
	mov	r1,0x3C
	mul	r0,r1
	ldr	r1,=BasePlayerMemory-0x3C
	add	r0,r0,r1
	ldrb	r1,[r0,CurrentPlayerDefeated]
	cmp	r1,0x1
	beq	@Player_Three
	
	mov	r3,CurrentPlayerTeam
	ldrb	r1,[r0,r3]
	ldrb	r2,[r6,r3]
	cmp	r1,r2
	beq	@Player_Three
	
	mov	r3,CurrentPlayerUnitCount
	mov	r4,CurrentPlayerUnitLossCount
	ldrb	r1,[r0,r3]
	ldrb	r2,[r0,r4]
	sub	r1,r1,r2
	cmp	r1,1
	bne	@Player_Three
	add	r5,r1,r5
	b	@Player_Three
	
@Player_Three:
	mov	r0,3
	cmp	r0,r7
	beq	@Player_Four
	
	mov	r1,0x3C
	mul	r0,r1
	ldr	r1,=BasePlayerMemory-0x3C
	add	r0,r0,r1
	ldrb	r1,[r0,CurrentPlayerDefeated]
	cmp	r1,0x1
	beq	@Player_Four
	
	mov	r3,CurrentPlayerTeam
	ldrb	r1,[r0,r3]
	ldrb	r2,[r6,r3]
	cmp	r1,r2
	beq	@Player_Four
	
	mov	r3,CurrentPlayerUnitCount
	mov	r4,CurrentPlayerUnitLossCount
	ldrb	r1,[r0,r3]
	ldrb	r2,[r0,r4]
	sub	r1,r1,r2
	cmp	r1,1
	bne	@Player_Four
	add	r5,r1,r5
	b	@Player_Four
	
@Player_Four:
	mov	r0,4
	cmp	r0,r7
	beq	@Final_Count
	
	mov	r1,0x3C
	mul	r0,r1
	ldr	r1,=BasePlayerMemory-0x3C
	add	r0,r0,r1
	ldrb	r1,[r0,CurrentPlayerDefeated]
	cmp	r1,0x1
	beq	@Final_Count
	
	mov	r3,CurrentPlayerTeam
	ldrb	r1,[r0,r3]
	ldrb	r2,[r6,r3]
	cmp	r1,r2
	beq	@Final_Count
	
	mov	r3,CurrentPlayerUnitCount
	mov	r4,CurrentPlayerUnitLossCount
	ldrb	r1,[r0,r3]
	ldrb	r2,[r0,r4]
	sub	r1,r1,r2
	cmp	r1,1
	bne	@Final_Count
	add	r5,r1,r5
	b	@Final_Count
	
@Final_Count:
	mov	r0,r5
	pop	{r1-r7}
	cmp	r0,1
	bne	@Standard_Music
	
	mov	r0,Music_FireEmblem7_WinningRoad
	bx	r14
	.pool
