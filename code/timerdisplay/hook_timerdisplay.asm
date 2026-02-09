;hook_timerdisplay.asm

;Repurposes the GUI score display thingamies to
;display your time remaining.


;Hook for days remaining
;Normally checks for days remaining option
.org 0x0804365C
	push	{r4-r6,r14}
	add	sp,-0x4
	mov	r5,r0
	mov	r6,r1

	ldr 	r0,=GUITimer_Countdown+1
	bx	r0
	.pool
	