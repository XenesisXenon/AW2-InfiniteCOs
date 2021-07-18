;calc_towerdefenceboost.asm

	
;Small loader here for Defence Check instead
COTowerDefenceBoost:
DefenceBoost_TowerProperty:
	push	{r3-r7,r14}
	mov	r6,r0	;CO ID
	mov	r7,r1	;CO Power State
	mov	r5,r2	;Unit pointer
	mov	r2,Gather_CO_SpecialEffectsHigh
	bl	GatherCOAbility
	ldr	r1,=SpecialTowerDefence	
	lsr	r1,r1,0x10
	and	r0,r1
	cmp	r0,0x0
	beq	@COTowerDefenceBoost_False
	
	mov	r0,r6
	mov	r1,r7
	mov	r2,r5
	b	COTowerDefenceBoost_Start	
	
@COTowerDefenceBoost_False:
	mov	r0,0
	pop	{r3-r7}
	pop	{r1}
	bx	r1
	.pool

