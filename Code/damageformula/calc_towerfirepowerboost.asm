;coretowerfirepowerboost.asm

FirepowerBoost_TowerProperty:
	push	{r3-r7,r14}
	mov	r6,r0	;CO ID
	mov	r7,r1	;CO Power State
COTowerDefenceBoost_Start:	
	ldr	r0,[r2]
	Calculate_PlayerfromUnitPointer
	add	r0,1
COTowerDossier_Start:
	mov	r1,0x20
	mul	r1,r0
	mov	r5,r1	;Capture Mask
	
	ldr	r0,=BaseMapPointer
	ldr	r0,[r0]
	ldrh	r1,[r0]
	ldrh	r2,[r0,0x2]
	mul	r1,r2	;Map Length in Tiles
	mov	r4,r1
	
	ldr	r0,=CurrentMapData
	mov	r3,0x0
	
COTowerFirepowerBoost_TowerLoop_Start:
	ldrb	r1,[r0]

	mov	r2,r5
	and	r2,r1	;Is Terrain owned by player
	cmp	r2,0x0
	beq	COTowerFirepowerBoost_TowerLoop_Unowned
	
	mov	r2,0x1F
	and	r1,r2
	mov	r2,TerrainClass_CommTower
	cmp	r1,r2	;Is Terrain a Comm Tower
	bne	COTowerFirepowerBoost_TowerLoop_NotTower
	
	add	r3,1
COTowerFirepowerBoost_TowerLoop_Unowned:	
COTowerFirepowerBoost_TowerLoop_NotTower:
	add	r0,1
	sub	r4,1
	cmp	r4,0x0
	bge	COTowerFirepowerBoost_TowerLoop_Start
	
	mov	r5,r3
	mov	r0,r6
	mov	r1,r7
	mov	r2,Gather_CO_SpecialEffectsLow
	bl	GatherCOAbility
	mov	r1,1
	ldr	r2,=SpecialTowerDouble
	and	r2,r0
	cmp	r2,0x0
	beq	COTowerFirepowerBoost_TowerLoop_NoDouble
	add	r1,1	;Tower Multiplier
COTowerFirepowerBoost_TowerLoop_NoDouble:	
	ldr	r2,=SpecialTowerTriple
	and	r2,r0
	cmp	r2,0x0
	beq	COTowerFirepowerBoost_TowerLoop_NoTriple
	add	r1,2
COTowerFirepowerBoost_TowerLoop_NoTriple:	
	mov	r0,Terrain_Strength_CommTower
	mul	r0,r1
	mul	r0,r5	
	pop	{r3-r7}
	pop	{r1}
	bx	r1
	.pool	
