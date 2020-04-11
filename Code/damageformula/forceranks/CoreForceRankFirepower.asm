;Handles Force Rank Firepower Boosts

FirepowerBoost_ForceRank:
	push	{r4-r7,r14}
	mov	r6,r1
	mov	r5,r2
	;Calculate Player Number from Battle Pointer
	ldr	r0,[r5]
	ldr	r1,=0x00001F00
	and	r0,r1
	mov	r1,0xC0
	lsl	r1,r1,0x2
	sub	r0,r0,r1
	bl	DivisionFunction
	mov	r7,r0
	mov	r4,0x0

	;Check the back CO exists
	mov	r0,8
	sub	r1,r7,1
	mul	r0,r1
	ldr	r1,=CustomSwapCORam
	add	r0,r0,r1
	ldrb	r0,[r0,0x4]
	mov	r1,0xFF
	cmp	r0,r1
	beq	COForceRankFirepowerBoost_TagCO_False
	ForceRankCheckerFirepowerBackCO	ForceRank_Teamwork,Forcerank_Strength_Teamwork
	ForceRankCheckerFirepowerBackCO ForceRank_Synergy,Forcerank_Strength_Synergy

COForceRankFirepowerBoost_TagCO_False:
	;Check whether the current player has any force ranks at all
	sub	r0,r7,1
	mov	r1,ForceRank_Slot_Total
	mul	r0,r1
	ldr	r1,=CustomForceRankRAM
	add	r0,r0,r1
	mov	r2,0
COForceRankFirepowerBoost_CheckLoopStart:	
	ldrb	r1,[r0,r2]
	cmp	r1,0x0
	bne	COForceRankFirepowerBoost_ForceRank_True
	add	r2,1
	cmp	r2,ForceRank_Slot_Total
	blt	COForceRankFirepowerBoost_CheckLoopStart
	b	COForceRankFirepowerBoostEnd

COForceRankFirepowerBoost_ForceRank_True:	
	
	;Check the Unit is a Direct Unit:
	ldr	r0,[r5]
	ldrb	r0,[r0]
	mov	r1,GatherUnitMinRange
	mov	r2,1
	bl	GatherUnitAbility
	cmp	r0,1
	bne	COForceRankFirepowerBoostDirectUnitFalse	
	
	ForceRankCheckerFirepower ForceRank_Bruiser,ForceRank_Strength_Bruiser
	ForceRankCheckerFirepower ForceRank_Brawler,ForceRank_Strength_Brawler

COForceRankFirepowerBoostDirectUnitFalse:
	;Check the Unit is an Indirect Unit:
	ldr	r0,[r5]
	ldrb	r0,[r0]
	mov	r1,GatherUnitMinRange
	mov	r2,1
	bl	GatherUnitAbility
	cmp	r0,2
	blt	COForceRankFirepowerBoostIndirectUnitFalse	
	
	ForceRankCheckerFirepower ForceRank_Sharpshooter,ForceRank_Strength_Sharpshooter
	ForceRankCheckerFirepower ForceRank_Sniper,ForceRank_Strength_Sniper
COForceRankFirepowerBoostIndirectUnitFalse:
	;Check the Tile Type the unit is on
	ldrb	r0,[r5,0x4]
	mov	r1,0x1F
	and	r0,r1
	;Check Terrain
	cmp	r0, TerrainClass_Mountain
	beq	COForceRankFirepowerBoost_Mountain_True
	cmp	r0, TerrainClass_Wood
	beq	COForceRankFirepowerBoost_Wood_True
	cmp	r0, TerrainClass_Road
	beq	COForceRankFirepowerBoost_Road_True
	cmp	r0, TerrainClass_City
	beq	COForceRankFirepowerBoost_Urban_True	
	cmp	r0, TerrainClass_Sea
	beq	COForceRankFirepowerBoost_Sea_True
	cmp	r0, TerrainClass_HQ
	beq	COForceRankFirepowerBoost_Urban_True
	cmp	r0, TerrainClass_Airport
	beq	COForceRankFirepowerBoost_Urban_True
	cmp	r0, TerrainClass_Port
	beq	COForceRankFirepowerBoost_Urban_True	
	cmp	r0, TerrainClass_Base
	beq	COForceRankFirepowerBoost_Urban_True
	cmp	r0, TerrainClass_Lab
	beq	COForceRankFirepowerBoost_Urban_True
	b	COForceRankFirepowerBoost_Terrain_End
	
COForceRankFirepowerBoost_Mountain_True:
	ForceRankCheckerFirepower ForceRank_Mountaineer,ForceRank_Strength_Mountaineer 	
	b	COForceRankFirepowerBoost_Terrain_End
COForceRankFirepowerBoost_Wood_True:
	ForceRankCheckerFirepower ForceRank_Ranger,ForceRank_Strength_Ranger
	b	COForceRankFirepowerBoost_Terrain_End
COForceRankFirepowerBoost_Road_True:
	ForceRankCheckerFirepower ForceRank_RoadRage,ForceRank_Strength_RoadRage
	b	COForceRankFirepowerBoost_Terrain_End
COForceRankFirepowerBoost_Urban_True:
	ForceRankCheckerFirepower ForceRank_UrbanFighter,ForceRank_Strength_UrbanFighter
	b	COForceRankFirepowerBoost_Terrain_End
COForceRankFirepowerBoost_Sea_True:
	ForceRankCheckerFirepower ForceRank_Seamanship,ForceRank_Strength_Seamanship
	b	COForceRankFirepowerBoost_Terrain_End
COForceRankFirepowerBoost_Terrain_End:
	;Check Unit for Hidden Status
	ldr	r0,[r5]
	ldrb	r0,[r0,0x1]
	mov	r1,0x20
	and	r0,r1
	cmp	r0,0x0
	beq	COForceRankFirepowerBoost_Hidden_False
	ForceRankCheckerFirepower ForceRank_Backstab,ForceRank_Strength_Backstab	
	
COForceRankFirepowerBoost_Hidden_False:	
	;Check the Current Weather Status
	ldr	r0,=CurrentWeather
	ldrb	r0,[r0]
	cmp	r0,CurrentWeatherSnow
	beq	COForceRankFirepowerBoost_Snow_True
	cmp	r0,CurrentWeatherRain
	beq	COForceRankFirepowerBoost_Rain_True
	cmp	r0,CurrentWeatherSandstorm
	beq	COForceRankFirepowerBoost_Sandstorm_True
	b	COForceRankFirepowerBoost_Weather_End
	
COForceRankFirepowerBoost_Snow_True:
	ForceRankCheckerFirepower ForceRank_IceBreaker,ForceRank_Strength_IceBreaker
	b	COForceRankFirepowerBoost_Weather_End
COForceRankFirepowerBoost_Rain_True:
	ForceRankCheckerFirepower ForceRank_HighAndDry,ForceRank_Strength_HighAndDry
	b	COForceRankFirepowerBoost_Weather_End
COForceRankFirepowerBoost_Sandstorm_True:
	ForceRankCheckerFirepower ForceRank_SandScorpion,ForceRank_Strength_SandScorpion
	b	COForceRankFirepowerBoost_Weather_End
COForceRankFirepowerBoost_Weather_End:
	
COForceRankFirepowerBoostEnd:
	mov	r0,r4
	pop	{r4-r7}
	pop	r1
	bx	r1
	.pool
