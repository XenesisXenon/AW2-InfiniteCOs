;Hook File hookdefdisplay.asm
;Adjust these parameters to adjust the layout

@DossierUnitXSpacing equ 54
@DossierUnitXOffset equ 12
@DossierUnitsPerRow equ 4
@DossierUnitsTotal equ 19

@DossierUnitRangeIconXOffset equ 32
@DossierUnitRangeIconYOffset equ 48
@DossierUnitRangeNumberXOffset equ 39

@DossierOffenceBarXOffset equ 28
@DossierDefenceBarXOffset equ 28
@DossierDefenceBarYOffset equ 4

;Firepower
.org 0x08085410
FirepowerBarHook:
	ldr r2,=FirepowerBarCalculation+1
	bx r2
	.pool

DefenceBarHook:
	ldr r2,=DefenceBarCalculation+1
	bx r2
	.pool

DrawDefenceBars:
	mov r0, r9
	mov r1, r6
	bl DefenceBarHook
	mov r4, r0
	mov r0, r8
	mov r1, @DossierUnitsPerRow
	bl 0x0808AAB0
	mov r1, r10
	mul r1, r0
	add r1, @DossierDefenceBarXOffset
	mov r2, 0x1
	str r2, [sp]
	mov r0, r4
	mov r2, r5
	add r2, @DossierDefenceBarYOffset
	mov r3, 0x0
	bl 0x0801F34C

	b 	0x0808586C
	.pool
	
DrawFirepowerBarCheck:
	ldr	r0,=0x03005944
	ldr	r0,[r0]
	mov	r1,0x80
	lsl	r1,r1,0x0
	cmp	r0,r1
	bgt	DrawFirepowerBarCheck2
	mov	r0,r6
	b	DrawFirepowerBarCheckDone
DrawFirepowerBarCheck2:
	ldr r5,=BaseUnitPointer
	ldr	r0,=0x080857AA+1
	bx	r0
	.pool	
	
DossierPage4BlinkCheck:	
	mov	r9,r1
	ldr	r0,=ExpandedBlinkCheck+1
	bx	r0	
DossierPage4BlinkCheckReturn:
	ldr	r0,=0x03005944
	ldr	r1,[r0]
	sub	r1,0x1
	cmp	r1,0x0
	bgt	DossierPage4BlinkCheck2
	ldr	r1,=0xC0
DossierPage4BlinkCheck2:
	str	r1,[r0]		
	b	DossierPage4BlinkCheckDone
	.pool	

.org 0x08085724
	lsl r0, r0, 0x0
	ldr r1,=Table_DossierUnitOrder
	b 0x08085732
	.pool
;	ldr	r1,=Dossier_SandstormCalculation+1
;	bx	r1
;	.pool

.org 0x0808574E
	mul r0, r2
	add r0, 0x13
	push {r0,r3}
	mov r0, r8
	mov r1, @DossierUnitsPerRow
	swi 0x6
	mov r2, r0

.org 0x08085766
	lsl r1, r5, 0x0
	pop {r0,r3}

;Hooks so the blink can be done
.org 0x08085714
	b DossierPage4BlinkCheck
DossierPage4BlinkCheckDone:

;Hooks into so Firepower and Movement can be drawn
.org 0x08085778
	b DrawFirepowerBarCheck
DrawFirepowerBarCheckDone:	
	
;Hooks into so Defence can be drawn
.org 0x080857A8
	b DrawDefenceBars
DrawDefenceBarsDone:


;This is for the Unit Icons
.org 0x08085748
	mov r1, @DossierUnitXSpacing

.org 0x08085750
	add r0, @DossierUnitXOffset

.org 0x08085742
	mov r1, @DossierUnitsPerRow

.org 0x0808578E
	mov r1, @DossierUnitsPerRow

;This is for Range Icons
.org 0x080857C6
	mov r1, @DossierUnitsPerRow

.org 0x080857D0
	add r1, @DossierUnitRangeIconXOffset
	mov r5, r7
	add r5, @DossierUnitRangeIconYOffset
	nop
.org 0x080857F0
	mov r1, @DossierUnitsPerRow
	
.org 0x080857FA
	add r1, @DossierUnitRangeNumberXOffset
	
;This Enables both Movement and Range bars to be drawn	
.org 0x0808580A
	b BlinkCheckDrawBothFix

;This is for the Offence Firepower Bar
.org 0x08085798
	add r1, @DossierOffenceBarXOffset

;This is for Movement Icons
.org 0x08085828
	mov r1, @DossierUnitsPerRow	

.org 0x08085832
	add r1, @DossierUnitRangeIconXOffset
	mov r5, r7
	add r5, @DossierUnitRangeIconYOffset-8

.org 0x08085852
	mov r1, @DossierUnitsPerRow
	
.org 0x0808585C
	add r1, @DossierUnitRangeNumberXOffset

.org 0x08085872
	cmp r1, @DossierUnitsTotal
	
.org 0x080854A0
;This is to Fix the Blink Check wigging out
BlinkCheckDrawBothFix:
	ldr	r5,=0x08499598
	ldr	r1,[r5]
	mov	r2,r9
	lsl	r0,r2,0x4
	sub	r0,r0,r2
	lsl	r4,r0,0x2
	add	r1,r4,r1
	ldrb	r0,[r1,0x1D]
	ldrb	r1,[r1,0x1E]
	mov	r2,r6
	b	0x0808581e
	.pool
	
;Blank Line