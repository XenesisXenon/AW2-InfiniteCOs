;CoreForceRankDefence.asm
;Handles Force Rank Defence Boosts

COForceRankDefenceBoost:
DefenceBoost_ForceRank:
	push	{r4-r7,r14}
;	mov	r7,r1	;Player Number
;	mov	r5,r0	;Attacker/Defender Pointer
;	mov	r4,0x0

	mov	r5,r2
	;Calculate Player Number from Battle Pointer
	;First check if we're in the dossier rather than a real battle	
	ldr	r0,[r5]
	ldr	r1,=RamTable_FakeUnit
	cmp	r0,r1
	beq	@Dossier
	ldr	r1,=RamTable_FakeUnit+0x300
	cmp	r0,r1
	beq	@Dossier
	ldr	r1,=RamTable_FakeUnit+0x600
	cmp	r0,r1
	beq	@Dossier
	ldr	r1,=RamTable_FakeUnit+0x900
	cmp	r0,r1
	beq	@Dossier
	b	@Game

@Dossier:
	ldrb	r0,[r0,0xB]	;Loads the PID from the Fake Unit
	b	@Loop_Setup

@Game:
	ldr	r1,=0x00001F00
	and	r0,r1
	mov	r1,0xC0
	lsl	r1,r1,0x2
	sub	r0,r0,r1
	bl	DivisionFunction

@Loop_Setup:
	mov	r7,r0
	mov	r4,0x0
	
	;Check the back CO exists
	mov	r0,8
	sub	r1,r7,1
	mul	r0,r1
	ldr	r1,=CustomSwapCORam
	add	r0,r0,r1
	ldrb	r0,[r0,0x4]
	mov	r1,0xFF
	cmp	r0,r1
	beq	@COForceRankDefenceBoost_TagCO_False
	ForceRankCheckerDefenceBackCO	ForceRank_BodyGuard,Forcerank_Strength_BodyGuard

@COForceRankDefenceBoost_TagCO_False:	
	;Check Transports
	ldr	r0,[r5]
	ldrb	r0,[r0]
	cmp	r0,Unit_APC
	beq	@COForceRankDefenceBoostTransportTrue
	cmp	r0,Unit_TransportCopter
	beq	@COForceRankDefenceBoostTransportTrue
	cmp	r0,Unit_Lander
	beq	@COForceRankDefenceBoostTransportTrue
	b	@COForceRankDefenceBoostTransportFalse
@COForceRankDefenceBoostTransportTrue:	
	ForceRankCheckerDefence	ForceRank_APCGuard,ForceRank_Strength_APCGuard
	
@COForceRankDefenceBoostTransportFalse:
	;Check for a direct unit/Indirect Unit antagonist
	ldr	r0,=0x030013B0
	ldr	r1,[r0,0x20]
	ldr	r0,[r0]
	ldrb	r2,[r0,0x2]
	ldrb	r3,[r1,0x2]
	sub	r0,r2,r3
	bl	ModulusFunction
	mov	r2,r0

	ldr	r0,=0x030013B0
	ldr	r1,[r0,0x20]
	ldr	r0,[r0]	
	ldrb	r3,[r0,0x3]
	ldrb	r6,[r1,0x3]
	sub	r0,r3,r6
	bl	ModulusFunction
	
	add	r0,r0,r2
	cmp	r0,1
	bne	@COForceRankDefenceBoostDirectUnitFalse

	ForceRankCheckerDefence	ForceRank_SlamGuard,ForceRank_Strength_SlamGuard
	ForceRankCheckerDefence	ForceRank_SlamShield,ForceRank_Strength_SlamShield
	b	@COForceRankDefenceBoostIndirectUnitFalse
@COForceRankDefenceBoostDirectUnitFalse:
	ForceRankCheckerDefence ForceRank_SnipeGuard,ForceRank_Strength_SnipeGuard
	ForceRankCheckerDefence ForceRank_SnipeShield,ForceRank_Strength_SnipeShield
@COForceRankDefenceBoostIndirectUnitFalse:
	mov	r0,r4
	pop	{r4-r7}
	pop	r1
	bx	r1
	.pool	
