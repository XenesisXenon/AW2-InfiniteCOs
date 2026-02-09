;TargetInfantryCapture.asm
;Uses the highest HP as the unit's attribute to add.

MeteorTargetInfantryCapture:
	push	{r1-r2}
	ldrb	r0,[r4,#0x4]
	lsl	r0,r0,#0x19
	lsr	r0,r0,#0x19
	
	
	ldr	r1,=CustomMeteorBuffer;0x0201FD84
	ldrb	r1,[r1,0x4]
	cmp	r0,r1
	blt	MeteorTargetInfantryCaptureUnderHPCap
	mov	r0,r1	
	
MeteorTargetInfantryCaptureUnderHPCap:	
	ldrb	r1,[r4]
	cmp	r1,0x1	;Is Infantry?
	bne	MeteorTargetInfantryCaptureNotInfantry
	lsl	r0,r0,0x2
	
MeteorTargetInfantryCaptureNotInfantry:
	cmp	r1,0x2	;Is Mech?
	bne	MeteorTargetInfantryCaptureNotMech
	lsl	r0,r0,0x2
	
MeteorTargetInfantryCaptureNotMech:
	ldrb	r1,[r4,0x5]
	mov	r2,0xF8
	and	r1,r2
	cmp	r1,0x0
	beq	MeteorTargetInfantryCaptureNotCapturing
	lsl	r0,r0,0x1	
	
MeteorTargetInfantryCaptureNotCapturing:
	pop	{r1-r2}
	bx	r14
	
;Blank Line	
