;COPowerBlizzard.asm

COPowerExtendedBlizzard:
	push	{r14}
	mov	r0,0x23		;Sound Effect to Use
	bl	PlaySong
	mov	r0,0x1		;This is the Weather Change
	mov	r1,0x2		;This is the Weather Length
	bl	SetWeatherbyPower;0x08035144	;Weather Change Thingo
	bl	@LongBLExtendedBlizzard;0x08039F58
	pop	{r0}
	bx	r0

@LongBLExtendedBlizzard:
	LongBL	r0,0x08039F58+1
	
SetWeatherbyPower:
	push	{r4,r14}
	mov	r4,r0
	lsl	r4,r4,0x18
	lsr	r4,r4,0x18
	bl	SetWeatherLength
	ldr	r1,=0x08035150+1	;Runs the rest of the original
	bx	r1
	.pool
	
SetWeatherLength:
	push	{r4-r6,r14}
	mov	r4,0x1
	ldr	r6,=0x03004493
	mov	r5,0x1
	sub	r5,r1
	ldr	r0,=0x080350EC+1	;Runs the rest of the original
	bx	r0
	.pool
;Blank Line	
