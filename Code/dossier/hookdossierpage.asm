;hookdossierpage.asm

.org 0x080852B2
	cmp	r5,4
.org 0x080850EE
	cmp	r0,5
	
.org 0x08084C3A	;Draw Unit Firepower Chart
	cmp	r0,5

.org 0x08084CD2	;Max pages down
	cmp	r0,4
.org 0x08084d12
	cmp	r0,4
.org 0x08084CD2 ;Which page to draw the narrow box from (Up Arrow)
	cmp	r0,3
.org 0x08084D1C ;Which page to draw the wide box from (Down arrow)
	cmp	r0,4
.org 0x08085020	;Pages to display large CO Body Sprite
	cmp	r0,3
	
;0x080851B6 - Draws CO Info Box on Dossier (Basic Name Mode)	
.org 0x08084C4C
	.dw	Dossier_PointerTable;0x08084C50
	
;Moves the infobox for COs with low positioned sprites
.org 0x080851AE
	ldr	r0,=Core_MoveDossierInfoBox+1
	bx	r0
	.pool
.org 0x080851F4
	ldr	r0,=Core_MoveDossierInfoBox+1
	bx	r0
	.pool
.org 0x08085230
	ldr	r0,=Core_MoveDossierInfoBox+1
	bx	r0
	.pool
	
.org 0x08084F2A
	blt 0x08084F3A
	
.org 0x08084EB0 ;Hook for new CO stats drawing. Only updates once.
	b	@Hook_Dossier_COStat_Preload	

.org 0x08085708	;Draws/Rejigs the CO Unit stats OAM
	.relativeinclude on
	.include "costat_oam.asm"
	.relativeinclude off
		
.org 0x08085410	;Calculates the bars
	;Depreciated, using new method, reclaiming as free space
	.relativeinclude on
	;.include "calc_firepowergraphic.asm"
	.relativeinclude off
@Hook_Dossier_COStat_Preload:
	mov	r0,0x64
	bl	0x0803B4DC
	;Player Number in r6
	;Current page in 03005940
	ldr	r0,=0x03005940
	ldrh	r0,[r0]
	cmp	r0,0x5
	beq	@Page5_True
	ldr	r0,=0x08084F3A+1
	bx	r0

@Page5_True:
	mov	r0,0x66
	ldrb	r0,[r7,r0]
	bl	@Graphics_PreLoad	
	b	0x08084F3A
	.pool
@Graphics_Preload:
;Loads all the values once so they don't have to be re-calculated each frame
;Input of Player ID in r0
	push	{r4-r7,r14}
	mov	r4,r8
	push	{r4}
;Setup	
	mov	r4,r0	;Player ID
	ldr	r5,=Custom_DossierCOBuffer
	mov	r6,0
	ldr	r0,=BasePlayerMemory-0x3C
	mov	r1,0x3C
	mul	r1,r4
	add	r0,r0,r1
	ldrb	r1,[r0,0x1E]	;Power State
	ldrb	r0,[r0,0x1D]	;CO ID
	mov	r7,r0
	mov	r8,r1	
;PID in r4
;Buffer in r5
;loop counter in r6. loop 0 is used for general stuff
;CO ID in r7
;CO Power state in r8	
;Preliminary stuff
	ldr	r0,=ExpandedBlinkCheckTable
	mov	r1,0x4
	mul	r1,r7
	add	r0,r0,r1
	mov	r1,r8
	ldrb	r0,[r0,r1]	;Checks if we need a blink tag
	strb	r0,[r5]
	strb	r4,[r5,0x1]
	add	r6,1
	
;Unit Calculation Loop
@UnitCalcLoop_Start:
	mov	r0,r4
	mov	r1,r6
	bl	@Long_FirepowerBar_Calc
	lsl	r1,r6,0x2
	add	r1,0
	strb	r0,[r5,r1]
	
	mov	r0,r4
	mov	r1,r6
	bl	@Long_DefenceBar_Calc
	lsl	r1,r6,0x2
	add	r1,1
	strb	r0,[r5,r1]
	
	mov	r0,r4
	mov	r1,r6
	bl	@Long_MoveDelta_Calc;0x08085638;MoveDelta_Calc
	lsl	r1,r6,0x2
	add	r1,2
	strb	r0,[r5,r1]
	
	mov	r0,r4
	mov	r1,r6
	bl	@Long_RangeDelta_Calc;0x080856A0;RangeDelta_Calc
	lsl	r1,r6,0x2
	add	r1,3
	strb	r0,[r5,r1]
	
	add	r6,1
	cmp	r6,0x19
	blt	@UnitCalcLoop_Start
	
	pop	{r4}
	mov	r8,r4
	pop	{r4-r7}
	pop	{r0}
	bx	r0
	.pool

@Long_FirepowerBar_Calc:
	ldr	r2,=FirepowerBarCalculation+1
	bx	r2
	.pool
	
@Long_DefenceBar_Calc:
	ldr	r2,=DefenceBarCalculation+1
	bx	r2
	.pool
	
@Long_RangeDelta_Calc:
	ldr	r2,=Dossier_RangeDelta_Calculation+1
	bx	r2
	.pool
	
@Long_MoveDelta_Calc:
	ldr	r2,=Dossier_MoveDelta_Calculation+1
	bx	r2
	.pool
	