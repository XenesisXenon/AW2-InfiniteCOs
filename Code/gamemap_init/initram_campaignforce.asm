;initram_campaignforce.asm

InitialiseGameRulesRAM_CampaignEnemyForce:
	push	{r4,r5,r14}
	
	ldr	r0,=CurrentGameOptions
	ldrb	r0,[r0,GameRule_GameMode]
	cmp	r0,GameMode_Campaign
	bne	@Campaign_False

	ldr	r0,=CurrentGameOptions
	ldrh	r0,[r0,GameRule_MapID]
	sub	r0,137
	cmp	r0,0
	blt	@Function_End
	cmp	r0,41
	bgt	@Function_End
	lsl	r0,r0,0x2
	ldr	r1,=Table_ForceList_CampaignMap
	add	r0,r0,r1
	
	ldr	r1,=BasePlayerMemory-0x3C
	mov	r3,0
	
@Loop_Start:	
	add	r3,1
	add	r1,0x3C
	mov	r2,CurrentPlayerTeam
	ldrb	r2,[r1,r2]
	cmp	r2,2
	beq	@Apply_Forceranks
	cmp	r3,4
	ble	@Loop_Start
	b	@Function_End
	
@Apply_Forceranks:
	mov	r1,ForceRank_Slot_Total
	sub	r3,1
	mul	r1,r3	
	ldr	r2,=CustomForceRankRAM
	add	r1,r1,r2
	
	ldrb	r2,[r0]
	strb	r2,[r1]
	ldrb	r2,[r0,0x1]
	strb	r2,[r1,0x1]
	ldrb	r2,[r0,0x2]
	strb	r2,[r1,0x2]
	ldrb	r2,[r0,0x3]
	strb	r2,[r1,0x3]

@Campaign_False:
@Function_End:
	pop	{r4,r5}
	pop	{r0}
	bx	r0
	.pool