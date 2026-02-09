;tablepropertyoamjump.asm
.align 4
Table_PropertyGraphicsOAMJump:
	.dw	0		;00 Blank
	.dw	0		;01 Plain
	.dw	0		;02 River
	.dw	0		;03 Mountain
	.dw	0		;04 Forest
	.dw	0		;05 Road
	.dw	0x0803FAB0	;06 City
	.dw	0		;07 Sea
	.dw	0x0803FB34	;08 HQ
	.dw	0		;09 Tile Underlay
	.dw	0x0803FB14	;0A Airport
	.dw	0x0803FB24	;0B Port
	.dw	0		;0C Bridge
	.dw	0		;0D Shoal
	.dw	0x0803FAC0	;0E Base
	.dw	0		;0F Pipeline
	.dw	0		;10 Pipeline Seam
	.dw	0x0803FB58	;11 Silo
	.dw	0x0803FB68	;12 Used Silo
	.dw	0		;13 Reef
	.dw	PropertyOAM_Lab	;0x0803FB48	;14 Lab
	.dw	PropertyOAM_MinicannonMerge ;0x0803FB7C	;15 Minicannon S
	.dw	PropertyOAM_Tower;0x0803FB98	;16 Minicannon N / Custom Tower
	.dw	0;0x0803FBB4	;17 Minicannon W
	.dw	0;0x0803FBD0	;18 Minicannon E
	.dw	0x0803FBEC	;19 Laser
	.dw	0		;1A Black Cannon S
	.dw	0		;1B Black Cannon N
	.dw	0		;1C Volcano
	.dw	0		;1D Factory
	.dw	0		;1E Deathray
	.dw	0		;1F Reskinnable Tile

PropertyOAM_MinicannonMerge:
	ldr	r0,=BaseMapPointer
	ldr	r0,[r0]
	ldrh	r1,[r0]		;X Map Size
	
	ldrb	r2,[r4,0x2]	;Y
	mul	r2,r1
	ldrb	r1,[r4,0x1]	;X
	add	r1,r1,r2
	lsl	r1,r1,0x1
	ldr	r0,=0x0201EE72	;16-bit Map Tile Assemblies
	ldrh	r0,[r0,r1]
	ldr	r1,=0x182
	cmp	r0,r1	;Minicannon S
	beq	@PropertyOAM_MinicannonMerge_SouthCannon
	add	r1,0x1
	cmp	r0,r1	;Minicannon N
	beq	@PropertyOAM_MinicannonMerge_NorthCannon
	add	r1,0x1
	cmp	r0,r1	;Minicannon W
	beq	@PropertyOAM_MinicannonMerge_WestCannon
	add	r1,0x1
	cmp	r0,r1	;Minicannon E
	beq	@PropertyOAM_MinicannonMerge_EastCannon
	
@PropertyOAM_MinicannonMerge_SouthCannon:
	ldr	r0,=0x0803FB7C
	mov	r15,r0
@PropertyOAM_MinicannonMerge_NorthCannon:	
	ldr	r0,=0x0803FB98
	mov	r15,r0
@PropertyOAM_MinicannonMerge_WestCannon:
	ldr	r0,=0x0803FBB4
	mov	r15,r0
@PropertyOAM_MinicannonMerge_EastCannon:
	ldr	r0,=0x0803FBD0
	mov	r15,r0
	.pool
	
PropertyOAM_Tower:	;Lab Slot
	str	r7,[sp]
	mov	r0,r3
	mov	r1,r5
	ldr	r2,=0x0849F9A8
	ldr	r3,=0x0803FB70+1
	bx	r3
	.pool
	
PropertyOAM_Lab:	;HQ Slot/Method
	ldr	r0,=0x0849FAC4
	lsl	r1,r6,0x2
	add	r1,r1,r0
	ldr	r2,[r1]
	str	r7,[sp]
	mov	r0,r3
	mov	r1,r5
	ldr	r3,=0x0803FB70+1
	bx	r3
	.pool
	
BHInvention_Setup_MinicannonMerge:
	mov	r2,r8
	ldr	r0,[r2]
	ldr	r1,[r0]
	lsl	r2,r5,0x1
	ldr	r3,=0x417A
	add	r0,r1,r3
	add	r0,r0,r2
	ldrh	r0,[r0]
	add	r0,r0,r4
	ldr	r2,=0xA22
	add	r1,r1,r2
	lsl	r0,r0,0x1
	add	r1,r1,r0
	ldrh	r1,[r1]
	ldr	r0,=0x182
	cmp	r0,r1
	beq	@BHInvention_Setup_MinicannonMerge_South
	add	r0,1
	cmp	r0,r1
	beq	@BHInvention_Setup_MinicannonMerge_North
	add	r0,1
	cmp	r0,r1
	beq	@BHInvention_Setup_MinicannonMerge_West
	add	r0,1
	cmp	r0,r1
	beq	@BHInvention_Setup_MinicannonMerge_East
BHInvention_Setup_No:
	ldr	r0,=0x0803E526
	mov	r15,r0	
@BHInvention_Setup_MinicannonMerge_South:	
	ldr	r0,=0x0803E4A2
	mov	r15,r0
@BHInvention_Setup_MinicannonMerge_North:
	ldr	r0,=0x0803E49E
	mov	r15,r0
@BHInvention_Setup_MinicannonMerge_West:
	ldr	r0,=0x0803E4A6
	mov	r15,r0
@BHInvention_Setup_MinicannonMerge_East:
	ldr	r0,=0x0803E4AA
	mov	r15,r0
	.pool
	
HQOAM_TileTransfer_Setup:
	mov	r7,0	;Player ID

@HQOAM_TileTransfer_SetupLoop:
	add	r0,r7,1
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
	
@HQOAM_TileTransferLoop_Start:
	ldrb	r1,[r0]

	mov	r2,r5
	and	r2,r1	;Is Terrain owned by player
	cmp	r2,0x0
	beq	@HQOAM_TileTransferLoop_Unowned
	
	mov	r2,0x1F
	and	r1,r2
	mov	r2,TerrainClass_Lab
	cmp	r1,r2	;Is Terrain a Lab
	bne	@HQOAM_TileTransferLoop_NotLab
	
	add	r3,1
@HQOAM_TileTransferLoop_Unowned:	
@HQOAM_TileTransferLoop_NotLab:
	add	r0,1
	sub	r4,1
	cmp	r4,0x0
	bge	@HQOAM_TileTransferLoop_Start
	mov	r0,r3
	
	cmp	r0,0x0
	beq	@HQOAM_TileTransfer_PlayerNoLab
	
	mov	r0,0x80
	lsl	r0,r0,0x1
	mul	r0,r7
	ldr	r1,=0x06011480
	add	r1,r0,r1
	ldr	r0,=Graphics_AW2_Property_Lab;0x080D1444
	mov	r2,0x40
	bl	@Long_HQOAMTileTransfer
	
@HQOAM_TileTransfer_PlayerNoLab:
	add	r7,1
	cmp	r7,0x3
	ble	@HQOAM_TileTransfer_SetupLoop
		
	pop	{r3}
	mov	r8,r3
	pop	{r4-r7}
	pop	{r0}
	bx	r0
	.pool
	.align 4
	
@Long_HQOAMTileTransfer:
	swi	0xC
	bx	r14
;Blank Line
