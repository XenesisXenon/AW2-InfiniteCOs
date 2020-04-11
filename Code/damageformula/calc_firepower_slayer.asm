;calc_firepower_slayer.asm
;Function that grants bonus firepower to
;"effective" unit matchups.
;Uses a special bit

FirepowerBoost_Slayer:
@Slayer_Firepower	equ 20
@Slayer_TableLength	equ 25
	push	{r4-r7,r14}
	mov	r7,r0	;CO ID
	mov	r6,r1	;CO Power State
	mov	r5,r2	;Battle Pointer
	
	;Check for Slayer Skill
	mov	r2,Gather_CO_SpecialEffectsWord
	bl	GatherCOAbilityPointer
	
	ldr	r1,=Special_CO_Slayer
	and	r1,r0
	cmp	r1,0x0
	beq	@FirepowerBoost_Slayer_False
	
	ldr	r0,=CurrentBattle_Attacker
	cmp	r0,r5
	bne	@FirepowerBoost_Slayer_Defender
	
	ldr	r1,=CurrentBattle_Defender
	b	@FirepowerBoost_Slayer_Calc
	
@FirepowerBoost_Slayer_Defender:
	ldr	r0,=CurrentBattle_Defender
	ldr	r1,=CurrentBattle_Attacker
	
@FirepowerBoost_Slayer_Calc:	
	ldr	r0,[r0]	;Input Unit
	ldrb	r0,[r0]
	ldr	r1,[r1] ;Other Unit
	ldrb	r1,[r1]
	mov	r2,@Slayer_TableLength
	mul	r0,r2
	ldr	r2,=@Table_Slayer
	add	r0,r0,r2
	ldrb	r0,[r0,r1]
	mov	r1,@Slayer_Firepower
	mul	r0,r1
	b	@FirepowerBoost_Slayer_End
	
@FirepowerBoost_Slayer_False:
	mov	r0,0x0
@FirepowerBoost_Slayer_End:
	pop	{r4-r7}
	pop	{r1}
	bx	r1
	.pool
	
@Table_Slayer:	;1 byte per unit entry.
;Null Unit
	.db	0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0
;Infantry
	.db	0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0
;Mech
	.db	0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0
;Medium Tank
	.db	0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0
;Unit 0x4
	.db	0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0
;Tank
	.db	0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0
;Recon
	.db	0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0
;APC
	.db	0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0
;Neotank
	.db	0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0
;Unit 0x9
	.db	0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0
;Artillery
	.db	0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0
;Rockets
	.db	0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0
;Unit 0xC
	.db	0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0
;Unit 0xD
	.db	0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0
;Anti-Air
	.db	0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0
;Missiles
	.db	0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0
;Fighter
	.db	0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0
;Bomber
	.db	0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0
;Unit 0x12
	.db	0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0
;Battle Copter
	.db	0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0
;Transport Copter
	.db	0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0
;Battleship
	.db	0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0
;Cruiser
	.db	0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,1
;Lander
	.db	0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0
;Sub
	.db	0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,1,0,1,0
.align 4
;Blank Line