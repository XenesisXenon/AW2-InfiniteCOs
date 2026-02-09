;copeffectnone.asm
;No Effect

COPEffectRestorePosition:
	push	{r0-r4}
	ldr	r1,=UnitRecordRamOffset
	add	r1,r0,r1

;Restores XY Co-Ordinates	
	ldrh	r2,[r1,0x2]
	strh	r2,[r0,0x2]
;Restores Transport/AI Capabilities
	ldr	r2,[r1,0x8]
	str	r2,[r0,0x8]
;Status Checks
	ldrb	r2,[r0,0x1]
	mov	r3,0xC1
	and	r3,r2
	
	ldrb	r2,[r1,0x1]
	mov	r4,0xC1
	bic	r2,r4
	orr	r2,r3
	
;Checks the Transport Status, then clears Hidden Bit if needed
	mov	r3,0x8
	and	r3,r2
	cmp	r3,0x0
	bne	COPEffectRestorePositionTransportedFalse
	mov	r3,0x2
	bic	r2,r3	
COPEffectRestorePositionTransportedFalse:	
	strb	r2,[r0,0x1]
	
	pop	{r0-r4}
	bx	r14	
	.pool


COPEffectRestorePositionStatus:
	push	{r0-r3}
	ldr	r1,=UnitRecordRamOffset
	add	r1,r0,r1

	ldr	r2,[r1]
;Sets the Unit unselectable bit
;Also restores the unit ID
	ldrb	r3,[r0]
	orr	r2,r3

	mov	r3,0x2
	lsl	r3,r3,0x8
	bic	r2,r3
;Checks if the unit is being transported after restoration
	mov	r3,0x4
	lsl	r3,r3,0x8
	and	r3,r2
	cmp	r3,0x0
	beq	COPEffectRestorePositionStatusTransportedFalse
;Restores hidden bit if true	
	mov	r3,0x2
	lsl	r3,r3,0x8
	orr	r2,r3	
COPEffectRestorePositionStatusTransportedFalse:	
	str	r2,[r0]
	
	ldr	r2,[r1,0x4]
	str	r2,[r0,0x4]
	ldr	r2,[r1,0x8]
	str	r2,[r0,0x8]	
	
	pop	{r0-r3}
	bx	r14
	.pool	
;Blank Line	
