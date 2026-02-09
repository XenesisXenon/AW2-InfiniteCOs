;CoreMapHeaderDesignMapDisplayExpansion.asm

CoreMapHeaderDesignMapDisplayExpansion:
	ldrh	r0,[r4]
	cmp	r0,0xBF
	bhi	@CoreMapHeaderDisplayNormalMap
	ldr	r4,=0x08616D1C
	mov	r0,r4
	ldr	r3,=0x08086F02+1
	bx	r3
@CoreMapHeaderDisplayNormalMap:
	;Load the map display
	ldrh	r0,[r4]
	ldr	r4,=0x08086ECE+1
	bx	r4
	.pool

MapHeader_FirstDisplay_TileAlloc:
	ldr	r0,=0x02027F78
	lsl	r4,r4,0x1
	add	r4,r0,r4
	
	;New code to check the Tilemap is correct
	ldrh	r0,[r4]
	mov	r1,MapHeader_Length
	mul	r0,r1
	ldr	r1,=MapHeaderTable
	add	r1,r0,r1
	mov	r0,Gather_Map_GameVersion
	ldrb	r0,[r1,r0]
	ldr	r2,=Custom_MapSelect_TSAID
	ldrb	r1,[r2]
	cmp	r0,r1
	bne	@Reload_MapAllocFirst
	b	@Display_MapFirst_Return
	
@Reload_MapAllocFirst:
	;AW1,2,3 Allocs are combined.
	cmp	r0,0x4
	beq	@DORTilesetFirst
	mov	r0,0	
@DORTilesetFirst:
	strb	r0,[r2]	;Stores the now loaded MapAlloc
	bl	Custom_TileAllocationLoad	;Reloads the 16x16 Alloc Map
	
@Display_MapFirst_Return:
	ldrh	r0,[r4]
	ldr	r1,=0x08086F4C+1
	bx	r1
.pool

MapHeader_Display_TileAlloc:
	ldr	r0,=0x02027F74
	add	r0,0x4
	add	r4,r5,r0
	
	;New code to check the Tilemap is correct
	ldrh	r0,[r4]
	mov	r1,MapHeader_Length
	mul	r0,r1
	ldr	r1,=MapHeaderTable
	add	r1,r0,r1
	mov	r0,Gather_Map_GameVersion
	ldrb	r0,[r1,r0]
	ldr	r2,=Custom_MapSelect_TSAID
	ldrb	r1,[r2]
	cmp	r0,r1
	bne	@Reload_MapAlloc
	b	@Display_Map_Return
	
@Reload_MapAlloc:
	;AW1,2,3 Allocs are combined.
	cmp	r0,0x4
	beq	@DORTileset
	mov	r0,0	
@DORTileset:
	strb	r0,[r2]	;Stores the now loaded MapAlloc
	bl	Custom_TileAllocationLoad	;Reloads the 16x16 Alloc Map

@Display_Map_Return:
	ldrh	r0,[r4]
	ldr	r1,=0x08086EC0+1
	bx	r1
.pool

MapHeaderDesignMapFirstDisplayOverCheck:
	ldrh	r0,[r4]
	cmp	r0,0xBF
	bhi	@MapHeaderDesignMapFirstDisplayNormalMap
	ldr	r0,=0x0823FD7C
	ldr	r1,=0x03001FE8
	ldr	r1,[r1]
	lsl	r1,r1,0x1C
	lsr	r1,r1,0x1E
	lsl	r1,r1,0xE
	ldr	r2,=0x08086FD2+1
	bx	r2
@MapHeaderDesignMapFirstDisplayNormalMap:
	ldr	r0,=0x08086F5A+1
	bx	r0
	.pool
	
CoreHalfwordMapCountLoop:
	add	r4,1
	ldr	r0,=MapHeaderMaximum
	cmp	r4,r0
	bls	@CoreHalfwordMapCountLoopMoreMaps
	ldr	r0,=0x080374B8+1
	bx	r0
@CoreHalfwordMapCountLoopMoreMaps:
	ldr	r0,=0x08037482+1
	bx	r0
	.pool
	
CoreVsModeMenuTextScroll:
	mov	r7,r10
	mov	r6,r9
	mov	r5,r8
	push	{r5-r7}
	add	sp,-0x8
	mov	r10,r0
	mov	r7,r1
	mov	r9,r2
	;Only clears the Text Buffer every 10 maps. Prevents obvious tearing
	cmp	r0,0xA
	beq	@CoreVsModeMenuTextScroll_Clear
	
	cmp	r0,0x14
	beq	@CoreVsModeMenuTextScroll_Clear
	
	cmp	r0,0x1E
	beq	@CoreVsModeMenuTextScroll_Clear
	
	cmp	r0,0x28
	beq	@CoreVsModeMenuTextScroll_Clear
	ldr	r0,=Custom_MapSelectTextClearFlag
	ldrb	r0,[r0]
	cmp	r0,0x1
	beq	@CoreVsModeMenuTextScroll_Clear
	
	b	@CoreVsModeMenuTextScroll_Ignore
@CoreVsModeMenuTextScroll_Clear:
	ldr	r0,=Custom_MapSelectTextClearFlag
	mov	r1,0x0
	strb	r1,[r0]
	mov	r1,r7
	mov	r0,0x0
	bl	LongTextBufferBlankingCode	

@CoreVsModeMenuTextScroll_Ignore:	
	mov	r0,r10
	mov	r1,r7
	ldr	r2,=0x08086A6A+1
	bx	r2
	.pool
	
LongTextBufferBlankingCode:
	LongBL	r1,0x0801B780+1
	.pool
	
CoreWarRoomScoreFix:
	lsl	r6,r5,0x1
	add	r6,r6,r0
	mov	r5,0xB4
	ldrh	r0,[r6]
	sub	r0,0x6C
	lsl	r1,r0,0x2
	add	r1,r1,r0
	add	r1,r1,r4
	lsl	r1,r1,0x2
	add	r1,r1,r7
	ldr	r0,=0x08087C3C+1
	bx	r0
	.pool
	
CoreVsMenuWindowSizeSet:
	ldr	r3,=0x030024E4
	mov	r4,0x64
	strb	r4,[r3]
	
	ldr	r3,=0x03002B4C
	strb	r4,[r3]
	pop	{r3-r5}
	mov	r8,r3
	mov	r9,r4
	mov	r10,r5
	pop	{r4-r7}
	pop	{r0}
	bx	r0
	.pool
	
CoreMapsPlayedExpansion:
	cmp	r0,0xB3
	bgt	@CoreMapsPlayedExpansionExtraMaps
	ldr	r1,=0x02028030
	lsr	r2,r0,0x3
	add	r1,0x30
	add	r2,r2,r1
	mov	r1,0x7
	and	r1,r0
	mov	r0,0x1
	lsl	r0,r1
	ldrb	r1,[r2]
	and	r0,r1
	bx	r14
@CoreMapsPlayedExpansionExtraMaps:
	mov	r0,0xFF
	bx	r14
	.pool	
	
CoreMapsPlayedSaveExpansion:
	cmp	r0,0xB3
	bgt	@CoreMapsPlayedSaveExpansionExtraMaps
	lsl	r1,r1,0x18
	lsr	r1,r1,0x18
	ldr	r2,=0x02028030
	lsr	r4,r0,0x3
	add	r2,0x30
	add	r4,r4,r2
	ldr	r3,=0x0803CA36+1
	bx	r3
@CoreMapsPlayedSaveExpansionExtraMaps:
	pop	{r4}
	pop	{r0}
	bx	r0
	.pool
	
Core_MapCaseHardToggleName:
	ldr	r1,=MapCaseNameTable
	ldr	r0,=Custom_HardToggleFlag
	ldrb	r0,[r0]
	cmp	r0,0x0
	bne	@Core_MapCaseHardToggleName_True
	b	@Core_MapCaseHardToggleName_End
@Core_MapCaseHardToggleName_True:
	ldr	r1,=MapCaseNameHardTable
@Core_MapCaseHardToggleName_End:	
	ldr	r0,=Current_MapCase
	mov	r3,0
	ldsh	r0,[r0,r3]
	lsl	r0,r0,1
	add	r0,r0,r1
	ldr	r3,=0x08086B2A+1
	bx	r3
	.pool
	
;Fixes the disappearing scrollbar issue when too many maps are present in
;a map case
MapSelect_ScrollbarMinimumFix:
	mov	r10,r0
	sub	r6,0x8
	cmp	r6,0x0
	bgt	@MapSelect_ScrollbarMinimumFix_OverMin
	mov	r6,1
@MapSelect_ScrollbarMinimumFix_OverMin:
	ldr	r1,[r0]
	mov	r9,r1
	ldr	r5,=0x08087440+1
	bx	r5
	.pool
;Blank Line
