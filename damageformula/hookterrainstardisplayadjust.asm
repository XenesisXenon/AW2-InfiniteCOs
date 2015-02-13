;hookterrainstardisplayadjust.asm
;Adds modifications for all the terrain star mods to be reflected in infoboxes

;Terrain Star Display Box Adjustment
.org 0x0802AB9E
	ldr	r1,=TerrainStarDisplayAdjustment+1
	bx	r1
	.pool

;Terrain Star R-Button Display Box Adjustment	
.org 0x08046BA6
	ldr	r0,=TerrainStarDisplayRInfoAdjustment+1
	bx	r0
	.pool
	
.org 0x08046BE2
	mov	r0,r10
	
.org 0x08046C38
	.dw	TerrainStarDisplayBoxAlignmentTable
	
	
