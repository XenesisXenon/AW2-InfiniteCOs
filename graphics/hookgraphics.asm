;hookgraphics.asm
;graphics that require fixed rom locations

.org 0x080d08c4
	.import "graphics/terrain/awds_tower.bin"
.org 0x08105964
	.import "graphics/terrain/awds_tower.bin"
.org 0x08107264
	.import "graphics/terrain/awds_tower_name.bin"
	
