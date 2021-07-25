;coreterrainrinfomenu.asm

Setup_RinfoTerrain:
	ldrb	r0,[r5]
	
	cmp	r0,0x1F	;Bounds Check
	bgt	@Setup_RinfoTerrain_TwoPages
	
	cmp	r0,TerrainClass_MiniCannonS
	beq	@Setup_RinfoTerrain_OnePage	
	cmp	r0,TerrainClass_Laser
	beq	@Setup_RinfoTerrain_OnePage	
	cmp	r0,TerrainClass_BlackCannonS
	beq	@Setup_RinfoTerrain_OnePage	
	cmp	r0,TerrainClass_BlackCannonN
	beq	@Setup_RinfoTerrain_OnePage	
	cmp	r0,TerrainClass_Volcano
	beq	@Setup_RinfoTerrain_OnePage	
	cmp	r0,TerrainClass_Deathray
	beq	@Setup_RinfoTerrain_OnePage	
	cmp	r0,TerrainClass_Factory
	beq	@Setup_RinfoTerrain_OnePage	
	cmp	r0,TerrainClass_CustomTile
	beq	@Setup_RinfoTerrain_OnePage
	
@Setup_RinfoTerrain_TwoPages:
	ldr	r0,=0x0804712C+1
	bx	r0
@Setup_RinfoTerrain_OnePage:
	ldr	r0,=0x08047128+1
	bx	r0
	.pool

Setup_Rinfo_MovementCosts:
	mov	r0,r10
	cmp	r0,TerrainClass_Plain
	beq	@Check_ForcePlain
	
	cmp	r0,TerrainClass_Wood
	beq	@Check_ForceWood
	b	@Return
	
@Check_ForcePlain:
	ForceRankCheckerPlayerTurnOnly ForceRank_PrairieDog,1
	cmp	r0,0
	beq	@Return
	mov	r3,ForceRank_Strength_PrairieDog
	b	@Return

@Check_ForceWood:
	ForceRankCheckerPlayerTurnOnly ForceRank_Pathfinder,1
	cmp	r0,0
	beq	@Return
	mov	r3,ForceRank_Strength_Pathfinder
	b	@Return

	;Return code
@Return:
	mov	r0,0x80
	lsl	r0,r0,0x8
	str	r0,[sp]
	mov	r0,0x0
	str	r0,[sp,0x4]
	ldr	r0,=0x08046898+1
	bx	r0
	.pool
