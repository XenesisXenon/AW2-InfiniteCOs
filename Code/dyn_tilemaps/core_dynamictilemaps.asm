;core_dynnamictilemaps.asm
;Code related to reloading alternate 16x16 Tile Allocations

Custom_TileAllocationLoad:
	push	{r4-r7,r14}
	ldr	r5,=Table_DynTileMap_TileAllocPointers
	lsl	r0,r0,0x2
	add	r5,r0,r5
	ldr	r5,[r5]
	
	ldr	r0,=0x0849959C
	ldr	r3,[r0]
	mov	r2,0x0
	ldr	r4,=0x3FF
Custom_TileAllocation_LoopStart:	
	add	r0,r3,r2
	add	r1,r5,r2
	ldrb	r1,[r1]
	strb	r1,[r0]
	add	r2,0x1
	cmp	r2,r4
	ble	Custom_TileAllocation_LoopStart
	pop	{r4-r7}
	pop	{r0}
	bx	r0
	.pool
	

Table_DynTileMap_TileAllocPointers:
	.dw	Table_TileTerrain_Alloc	;Advance Wars 2
	.dw	Table_TileTerrain_Alloc	;Advance Wars 1
	.dw	Table_TileTerrain_Alloc	;Null Entry
	.dw	Table_TileTerrain_Alloc	;Advance Wars Dual Strike
	.dw	Sixteen_TileAlloc_AWDoR	;Days of Ruin
	
;Code related to reloading 8x8 Tile Assemblies
Custom_TileAssemblyLoad:
	ldr	r1,=CurrentGameOptions
	add	r1,GameRule_TileAllocation_Table
	ldrb	r1,[r1]
	ldr	r2,=Table_DynTileMap_TileAssemblyPointers
	lsl	r1,r1,0x2
	add	r1,r1,r2
	ldr	r1,[r1]
	
	mov	r12,r1
	mov	r2,0x80
	lsl	r2,r2,0x7
	mov	r8,r2
	
	bx	r0
	.pool
	
Custom_TileAssemblyLoad_1:
	ldr	r0,=0x08023A82+1
	b	Custom_TileAssemblyLoad
Custom_TileAssemblyLoad_2:
	ldr	r0,=0x08023BE4+1
	b	Custom_TileAssemblyLoad

Custom_TileAssemblyLoad_TypeB_1:
	ldr	r1,=0x08023B02+1
	push	{r1}
	b	Custom_TileAssemblyLoad_TypeB

Custom_TileAssemblyLoad_TypeC_1:
	ldr	r1,=0x08023B76+1
	push	{r1}
	b	Custom_TileAssemblyLoad_TypeC

Custom_TileAssemblyLoad_TypeB_3:
	ldr	r1,=0x08023C66+1
	push	{r1}
	b	Custom_TileAssemblyLoad_TypeB

Custom_TileAssemblyLoad_TypeC_2:
	ldr	r1,=0x08023CDA+1
	push	{r1}
	b	Custom_TileAssemblyLoad_TypeC

Custom_TileAssemblyLoad_TypeB:
	ldr	r1,=CurrentGameOptions
	add	r1,GameRule_TileAllocation_Table
	ldrb	r1,[r1]
	ldr	r0,=Table_DynTileMap_TileAssemblyPointers
	lsl	r1,r1,0x2
	add	r1,r1,r0
	ldr	r1,[r1]
	add	r1,6
	
	ldrh	r0,[r3]
	lsl	r0,r0,0x3
	add	r0,r0,r1
	ldrh	r0,[r0]
	add	r0,r8
	
	pop	{r1}
	bx	r1
	.pool

Custom_TileAssemblyLoad_TypeC:
	ldr	r1,=CurrentGameOptions
	add	r1,GameRule_TileAllocation_Table
	ldrb	r1,[r1]
	ldr	r0,=Table_DynTileMap_TileAssemblyPointers
	lsl	r1,r1,0x2
	add	r1,r1,r0
	ldr	r1,[r1]
	add	r1,6
	
	ldrh	r0,[r3]
	lsl	r0,r0,0x3
	add	r0,r0,r1
	ldrh	r0,[r0]
	
	pop	{r1}
	bx	r1
	.pool
	
Table_DynTileMap_TileAssemblyPointers:
	.dw	Eight_TileAlloc_AW2	;Advance Wars 2
	.dw	Eight_TileAlloc_AW2	;Advance Wars 1
	.dw	Eight_TileAlloc_AW2	;Null Entry
	.dw	Eight_TileAlloc_AW2	;Advance Wars Dual Strike
	.dw	Eight_TileAlloc_AWDoR	;Days of Ruin
	