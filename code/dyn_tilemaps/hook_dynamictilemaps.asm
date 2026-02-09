;hookdynamictilemaps.asm
;Adds code that dynamically loads the TSA allocations (Map Tile IDs to 16x16s)
;and Tile Type Allocations (Map Tile IDs to Terrain IDs)

;Original Code
;This runs on game boot
.org 0x080215D0
	push	{r4,r5,r14}
	ldr	r5,=Table_TileTerrain_Alloc;0x080C1BC4
	ldr	r0,=0x0849959C
	ldr	r3,[r0]
	mov	r2,0x0
	ldr	r4,=0x3FF
TSALoad_LoopStart:	
	add	r0,r3,r2
	add	r1,r5,r2
	ldrb	r1,[r1]
	strb	r1,[r0]
	add	r2,0x1
	cmp	r2,r4
	ble	TSALoad_LoopStart
	pop	{r4,r5}
	pop	{r0}
	bx	r0
	.pool

;This is for the 8x8 Tile Assemblies
;Subroutine 1 - 0x08023A4C
.org 0x08023A78
	;0x080BFBC4
	ldr	r1,=Custom_TileAssemblyLoad_1+1
	bx	r1
	.pool
	
.org 0x08023AF6
	;0x080BFBCA
	ldr	r1,=Custom_TileAssemblyLoad_TypeB_1+1
	bx	r1
	.pool
	
.org 0x08023B6E
	;0x080BFBCA
	ldr	r1,=Custom_TileAssemblyLoad_TypeC_1+1
	bx	r1
	.pool
	
;Subroutine 2 - 0x08023BAC
.org 0x08023BDA
	;0x080BFBC4
	ldr	r1,=Custom_TileAssemblyLoad_2+1
	bx	r1
	.pool
	
.org 0x08023C5A
	;0x080BFBCA
	ldr	r1,=Custom_TileAssemblyLoad_TypeB_3+1
	bx	r1
	.pool

.org 0x08023CD2
	;0x080BFBCA
	ldr	r1,=Custom_TileAssemblyLoad_TypeC_2+1
	bx	r1
	.pool
	
;Blank Line