;hookmultidayweather.asm
;Alters the end of turn weather check to support multiple day-weather

.org 0x08035080
EndWeatherSubroutine:
	push	{r4-r7,r14}
	ldr	r3,=0x08090E34
	ldr	r1,[r3]
	ldr	r2,=0x08090E38
	ldr	r0,[r2]
	add	r1,0x3
	ldrh	r0,[r0]
	add	r1,r1,r0
	ldrb	r0,[r1]
	add	r0,0x1
	strb	r0,[r1]
	lsl	r0,r0,0x18
	lsr	r7,r0,0x18	;value to compare
	mov	r4,0x1
	mov	r6,r3
	mov	r5,r2
	b	EndWeatherSubroutine1;0x080350B2
	.pool
EndWeatherSubroutine3:	
	add	r0,r4,1
	lsl	r0,r0,0x18
	lsr	r4,r0,0x18
EndWeatherSubroutine1:	
	cmp	r4,0x4
	bhi	EndWeatherSubroutine2;0x080350DA
	ldr	r0,[r5]
	ldrh	r0,[r0]
	cmp	r4,r0
	beq	EndWeatherSubroutine3;0x080350AC
	mov	r0,r4
	bl	0x080266DC	;Next player alive?
	lsl	r0,r0,0x18
	cmp	r0,0x0
	beq	EndWeatherSubroutine3;0x080350AC
	ldr	r0,[r6]
	add	r0,0x3
	add	r0,r4,r0
	ldrb	r0,[r0]
	cmp	r7,r0
	beq	EndWeatherSubroutine3;0x080350AC
	mov	r0,0x0
	b	EndWeatherSubroutine;0x080350DC
EndWeatherSubroutine2:	
	mov	r0,0x1
EndWeatherSubroutine4:	
	pop	{r4-r7}
	pop	{r1}
	bx	r1
	
