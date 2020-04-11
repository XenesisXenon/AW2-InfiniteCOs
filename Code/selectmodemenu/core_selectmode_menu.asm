;core_selectmode_menu.asm
;Randomises the CO shown on the Menu

@Length_RandomCOTable equ 28

SelectMode_CORandomiser:
	bl	LongBLRNGFunction
	mov	r1,@Length_RandomCOTable
	bl	DivisionFunction
	ldr	r0,=@Table_RandomCO
	add	r0,r0,r1
	ldrb	r0,[r0]
	mov	r1,0
	mov	r2,0x1
	bl	@LongBL_COGraphics
	LongBL	r0,0x08081254+1
	
@LongBL_COGraphics:
	push	{r4-r6,r14}
	LongBL	r4,0x08043BA6+1

.align	4
@Table_RandomCO:
	.db	CONell
	.db	COAndy
	.db	COMax
	.db	COOlaf
	.db	COSami
	.db	COGrit
	.db	COKanbei
	.db	COSonja
	.db	COEagle
	.db	CODrake
	.db	COSturm
	.db	COFlak
	.db	COLash
	.db	COAdder
	.db	COHawke
	.db	COHachi
	.db	COColin
	.db	COJess
	.db	COSensei
	.db	COAWDSJake
	.db	COAWDSRachel
	.db	COAWDSSasha
	.db	COAWDSJavier
	.db	COAWDSGrimm
	.db	COAWDSJugger
	.db	COAWDSKoal
	.db	COAWDSKindle
	.db	COAWDSVonbolt
.align 4
