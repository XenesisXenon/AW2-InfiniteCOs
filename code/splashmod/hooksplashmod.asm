;hooksplashmod.asm
;Hooks the CO Power Splash so it doesn't hang with an input of Zero
.org 0x0807FA88
	;Original Code
;	push	{r4,r5,r14}
;	mov	r4,r0
;	ldr	r5,=0x085D9320
;	ldr	r3,=BaseCOStatsTablePointer
;	ldr	r0,=0x03005904
;	ldr	r0,[r0]
;	lsl	r2,r0,0x4
;	add	r2,r2,r0
;	ldr	r0,=0x03005970
;	ldr	r1,[r0]
;	lsl	r0,r1,0x6
;	add	r0,r0,r1
;	add	r0,r0,r2
;	lsl	r0,r0,0x2
;	add	r3,0x38
;	add	r0,r0,r3
;	ldr	r0,[r0]
;	lsl	r0,r0,0x2
;	add	r0,r0,r5
;	ldr	r0,[r0]
;	ldr	r1,=0x08616750
;	mov	r2,r4
;	bl	0x0807F8FC
;	lsl	r0,r0,0x10
;	lsr	r0,r0,0x10
;	str	r0,[r4,0x58]
;	add	r4,0x4C
;	mov	r0,0x0
;	strh	r0,[r4]
;	pop	{r4,r5}
;	pop	{r0}
;	bx	r0
;	.pool

	push	{r4,r5,r14}
	mov	r4,r0
	ldr	r5,=TextTable	;0x085D9320
	ldr	r1,=0x03005904
	ldr	r1,[r1]	;Power Mode
	cmp	r1,0x4
	bne	@IsPowerSuper_True
	ldr	r0,=TextID_COSwap
	b	@IsPowerSuper_False

@IsPowerSuper_True:	
	ldr	r0,=0x03005970
	ldr	r0,[r0]
	mov	r2,Gather_CO_PowerName
	ldr	r3,=GatherCOAbility+1
	bl	0x0808BBC8	;bx r3

@IsPowerSuper_False:
	lsl	r0,r0,0x2
	add	r0,r0,r5
	ldr	r0,[r0]
	ldr	r1,=0x08616750
	mov	r2,r4
	bl	0x0807F8FC
	lsl	r0,r0,0x10
	lsr	r0,r0,0x10
	str	r0,[r4,0x58]
	add	r4,0x4C
	mov	r0,0x0
	strh	r0,[r4]
	pop	{r4,r5}
	pop	{r0}
	bx	r0
	.pool