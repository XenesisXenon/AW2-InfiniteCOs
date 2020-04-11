;coreterrainrinfomenu.asm

Setup_RinfoTerrain:
	ldrb	r0,[r5]
	
	cmp	r0,0x1F	;Bounds Check
	bgt	Setup_RinfoTerrain_TwoPages
	
	cmp	r0,TerrainClass_MiniCannonS
	beq	Setup_RinfoTerrain_OnePage	
	cmp	r0,TerrainClass_Laser
	beq	Setup_RinfoTerrain_OnePage	
	cmp	r0,TerrainClass_BlackCannonS
	beq	Setup_RinfoTerrain_OnePage	
	cmp	r0,TerrainClass_BlackCannonN
	beq	Setup_RinfoTerrain_OnePage	
	cmp	r0,TerrainClass_Volcano
	beq	Setup_RinfoTerrain_OnePage	
	cmp	r0,TerrainClass_Deathray
	beq	Setup_RinfoTerrain_OnePage	
	cmp	r0,TerrainClass_Factory
	beq	Setup_RinfoTerrain_OnePage	
	cmp	r0,TerrainClass_CustomTile
	beq	Setup_RinfoTerrain_OnePage
	
Setup_RinfoTerrain_TwoPages:
	ldr	r0,=0x0804712C+1
	bx	r0
Setup_RinfoTerrain_OnePage:
	ldr	r0,=0x08047128+1
	bx	r0
	.pool
;Blank Line	
