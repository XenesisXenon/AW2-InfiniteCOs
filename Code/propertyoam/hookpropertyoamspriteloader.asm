;hookpropertyoamspriteloader.asm
;Controls what sprites are loaded as OAMs for specific properties.
;rejigger a bunch of if/else into a jump table.

.org 0x0803FA44
	;r1,r2
	mov	r0,0x1F
	and	r0,r1
	ldr	r1,=Table_PropertyGraphicsOAMJump
	lsl	r0,r0,0x2
	add	r1,r0,r1
	ldr	r0,[r1]
	cmp	r0,0x0
	beq	0x0803FA62;0x0803FC02
	mov	r15,r0
	.pool
	
;Setup for the Black Inventions Table
.org 0x0803E464
	.dw	BHInvention_Setup_MinicannonMerge;0x0803E4A2	;15 Minicannon S
	.dw	BHInvention_Setup_No;0x0803E49E	;16 Minicannon N
	.dw	BHInvention_Setup_No;0x0803E4A6	;17 Minicannon W
	.dw	BHInvention_Setup_No;0x0803E4AA	;18 Minicannon E
	.dw	0x0803E490	;19 Laser
	.dw	0x0803E4DC	;1A Black Cannon S
	.dw	0x0803E4D2	;1B Black Cannon N
	.dw	0x0803E4BC	;1C Volcano
	.dw	0x0803E4F2	;1D Factory
	.dw	0x0803E514	;1E Deathray
	.dw	0x0803E506	;1F Reskinnable Tile
	
;Expansion to shuffle graphics around to merge HQs and Labs graphic slots.
.org 0x0803F6A0
	ldr	r3,=HQOAM_TileTransfer_Setup+1
	bx	r3
	.pool
