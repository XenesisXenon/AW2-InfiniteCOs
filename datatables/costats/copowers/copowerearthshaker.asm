;copowerEarthshaker.asm
;Graphical Effect for Klaus' Earthshaker

COPowerEarthshakerFade:
	push	{r4,r14}
	mov	r4,r0
	mov	r0,16
	bl	LongBLCOPowerEarthshakerFade1;0x0803B4DC
	mov	r0,23
	bl	LongBLCOPowerEarthshakerFade1;0x0803B4DC
	mov	r0,61
	bl	LongBLCOPowerEarthshakerFade1;0x0803B4DC	
	mov	r0,r4
	bl	LongBLCOPowerEarthshakerFade2;0x080443C4
	pop	{r4}
	pop	{r0}
	bx	r0
	;.pool
	
LongBLCOPowerEarthshakerFade1:
	LongBL r1,0x0803B4DD
	
LongBLCOPowerEarthshakerFade2:
	LongBL r1,0x080443C5
;Blank Line
