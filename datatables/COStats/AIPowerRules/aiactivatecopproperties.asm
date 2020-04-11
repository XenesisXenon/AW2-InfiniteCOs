;aiactivatecopproperties.asm
;Activates COP if units are on Properties, SCOP at start of turn

AIActivateOnProperties:
	push	{r4-r7,r14}
	mov	r2,r0
	cmp	r0,0x1
	beq	AIActivateOnProperties_IsCOP
	cmp	r0,0x2
	beq	AIActivateOnProperties_IsSCOP
	b	AIActivateOnProperties_IsFalse
	
AIActivateOnProperties_IsCOP:
	ldr	r0,=CurrentPlayerTurn
	ldrb	r0,[r0]
	mov	r4,r0
	mov	r3,0x0	;Current Team
	mov	r6,0x0	;Enemy Units on Properties
	
AIActivateOnProperties_LoopStart:	
	add	r3,1
	cmp	r3,4
	bgt	AIActivateOnProperties_LoopEnd
	cmp	r3,r4
	beq	AIActivateOnProperties_LoopStart
	;Check Alliances, goto next army if same team
	mov	r0,0x3C
	mov	r1,r3
	mov	r2,r4
	mul	r1,r0
	mul	r2,r0
	
	ldr	r0,=BasePlayerMemory-0x3C
	add	r1,r0,r1
	add	r2,r0,r2
	mov	r0,CurrentPlayerTeam
	add	r1,r0,r1
	add	r2,r0,r2
	ldrb	r1,[r1]
	ldrb	r2,[r2]
	cmp	r1,r2
	beq	AIActivateOnProperties_LoopStart
	
	mov	r0,0xc0
	lsl	r0,r0,0x2
	mul	r0,r3
	ldr	r1,=BaseUnitOffset
	add	r1,r0,r1
	
	ldr	r7,=CurrentMapData-0x1432
	mov	r5,0x0	;Units Checked
	
AIActivateOnProperties_UnitLoop_Start:	
	ldrb	r0,[r1]
	cmp	r0,0x0
	beq	AIActivateOnProperties_UnitLoop_False
	
	mov	r2,0x10
	ldrb	r0,[r1,0x1]
	and	r0,r2
	cmp	r0,0x0
	bne	AIActivateOnProperties_UnitLoop_False
	
	ldrh	r2,[r7]
	ldrb	r0,[r1,0x3]
	mul	r2,r0
	ldrb	r0,[r1,0x2]
	add	r0,r0,r2
	
	ldr	r2,=0x1432
	add	r2,r2,r7
	ldrb	r0,[r2,r0]
	mov	r2,0x1F
	and	r0,r2
	
	cmp	r0,TerrainClass_City
	bne	AIActOnProp_UnitLoop_Prop2
	b	AIActOnProp_UnitLoop_PropAdd
	
AIActOnProp_UnitLoop_Prop2:	
	cmp	r0,TerrainClass_HQ
	bne	AIActOnProp_UnitLoop_Prop3
	b	AIActOnProp_UnitLoop_PropAdd
	
AIActOnProp_UnitLoop_Prop3:	
	cmp	r0,TerrainClass_Airport
	bne	AIActOnProp_UnitLoop_Prop4
	b	AIActOnProp_UnitLoop_PropAdd
	
AIActOnProp_UnitLoop_Prop4:	
	cmp	r0,TerrainClass_Port
	bne	AIActOnProp_UnitLoop_Prop5
	b	AIActOnProp_UnitLoop_PropAdd
	
AIActOnProp_UnitLoop_Prop5:	
	cmp	r0,TerrainClass_Base
	bne	AIActOnProp_UnitLoop_Prop6
	b	AIActOnProp_UnitLoop_PropAdd	
	
AIActOnProp_UnitLoop_Prop6:	
	cmp	r0,TerrainClass_Lab
	bne	AIActOnProp_UnitLoop_Prop7
	b	AIActOnProp_UnitLoop_PropAdd	
	
AIActOnProp_UnitLoop_Prop7:	
	cmp	r0,TerrainClass_CommTower
	bne	AIActOnProp_UnitLoop_PropFinal
	b	AIActOnProp_UnitLoop_PropAdd
	
AIActOnProp_UnitLoop_PropAdd:	
	add	r6,1
	
AIActOnProp_UnitLoop_PropFinal:	
AIActivateOnProperties_UnitLoop_False:	
	add	r5,1
	add	r1,0xC
	cmp	r5,50
	ble	AIActivateOnProperties_UnitLoop_Start
	
	cmp	r3,4
	ble	AIActivateOnProperties_LoopStart
	
AIActivateOnProperties_LoopEnd:
	cmp	r6,3	;Property Min
	blt	AIActivateOnProperties_IsFalse
	mov	r0,1
	b	AIActivateOnProperties_End
	

AIActivateOnProperties_IsSCOP:
	ldr	r0,=CurrentAIUnitPhase
	ldr	r0,[r0]
	cmp	r0,0x1
	bhi	AIActivateOnProperties_IsFalse
	mov	r0,0x1
	b	AIActivateOnProperties_End
	
AIActivateOnProperties_IsFalse:	
	mov	r0,0x0
AIActivateOnProperties_End:
	pop	{r4-r7}
	pop	{r1}
	bx	r1
	.pool