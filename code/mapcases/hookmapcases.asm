;hookmapcases.asm
;Enables the Campaign Map Case in the Vs Menu
;Enables the "Extra" unused map cases in the Vs. Menu
;Enables the ability to swap between Normal/Hard maps for campaign maps

;Right Direction, Custom ordering
.org 0x08086598
	ldr	r0,=MapCase_CaseOrder_R+1
	bx	r0
	.pool

;Right Direction
;.org 0x0808659C
;	str	r0,[r4]			;Blanks the Custom Hard Toggle Bit (strh to str)

.org 0x080865A4
	cmp	r0,CaseMaximum;0x8
	
.org 0x080865A8
	mov	r0,CaseMinimum;0x2
	str	r0,[r4]			;Blanks the Custom Hard Toggle Bit

.org 0x080865CC
	ldr	r0,=MapCase_CaseOrder_R_EmptyCase+1;Fixing error when a case is empty
	bx	r0
	.pool

;.org 0x080865D0 ;*1 Rolled into above hook for fix
;	str	r0,[r4]			;Blanks the Custom Hard Toggle Bit
.org 0x080865D6
	cmp	r0,CaseMaximum;0x8
.org 0x080865DA
	mov	r0,CaseMinimum;0x2
	str	r0,[r4]			;Blanks the Custom Hard Toggle Bit

;Left Direction, Custom Ordering
.org 0x08086494
	ldr	r0,=MapCase_CaseOrder_L+1
	bx	r0
	.pool
	
.org 0x080864C8
	ldr	r0,=MapCase_CaseOrder_L_EmptyCase+1;Fixing error when a case is empty
	bx	r0
	.pool

;.org 0x08086498
;	str	r0,[r4]			;Blanks the Custom Hard Toggle Bit
.org 0x080864A0
	cmp	r0,CaseMinimum-1;0x1
.org 0x080864A4
	mov	r0,CaseMaximum;0x8
	str	r0,[r4]			;Blanks the Custom Hard Toggle Bit
.org 0x080864D2
	cmp	r0,CaseMinimum-1;0x1
	
;Enables Toggle of "Hard" maps
;Checks input on "Select" button
.org 0x08086674
	ldr	r3,=MapCase_HardToggle+1
	bx	r3
	.pool
	;pop	{r3-r5}
	;mov	r8,r3
	;mov	r9,r4
	;mov	r10,r5
	;pop	{r4-r7}
	;pop	{r0}
	;bx	r0
