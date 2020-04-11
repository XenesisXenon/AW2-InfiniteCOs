;core_initialmaps.asm

Core_InitialCampaignMap:
	mov	r5,r0
	mov	r7,0x0
	ldr	r6,=0x0202FDFC

	mov	r0,UnlockBoolean_Custom_TutorialSkip
	sub	r0,0x20
	mov	r1,1
	lsl	r1,r0
	ldr	r0,=CurrentUnlockedStatus
	ldr	r0,[r0]
	and	r0,r1
	cmp	r0,0x0
	beq	@CampaignStart_Standard
	
	mov	r7,34
	
@CampaignStart_Standard:
	mov	r1,0
	strh	r7,[r6]
	strh	r7,[r6,0x2]
	strh	r7,[r6,0x8]
	ldr	r0,=0x08076A78+1
	bx	r0
	.pool
