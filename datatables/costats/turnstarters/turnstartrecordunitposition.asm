;turnstartrecordunitposition.asm
;Records the Unit Positions and Status of every alive
;Unit for the CO Powers

UnitRecordRamOffset equ 0x258 ;(+50 from the current unit's location)

TurnStartRecordUnitPositions:
	push	{r0-r3}
	ldr	r0,=UnitRecordRamOffset	
	ldr	r1,[sp,0x10]
	add	r0,r0,r1
	
	ldr	r2,[r1]
;Sets the Unit unselectable bit
;Also clears the unit ID, so that it isn't counted as a unit
	mov	r3,0x2
	lsl	r3,r3,0x8
	orr	r2,r3
	mov	r3,0xFF
	neg	r3,r3
	sub	r3,0x1
	
	and	r2,r3
	str	r2,[r0]
	
	ldr	r2,[r1,0x4]
	str	r2,[r0,0x4]
	ldr	r2,[r1,0x8]
	str	r2,[r0,0x8]	
	
	pop	{r0-r3}
	bx	r14
	.pool
	
;Blank Line	
