;hooksave.asm
;Modifies how the Save System Works

;Length of the Standard Save Blocks (In-Game Function)
;Increase Length to allow for Zed's extra data. (+0xFA Bytes)
.org 0x08016D8C
	ldr	r2,=0xF22;0xE28
.org 0x08016DB4
	.pool
	
.org 0x08036C58
	ldr	r0,=0xF22;0xE28
.org 0x08036C74
	.pool

.org 0x08036C8C
	ldr r0,=0xF22;0xE28
.org 0x08036CA8	
	.pool
	
;Addition to the function to record more data.
.org 0x0801717A

;Addition to the function to restore more data.	
.org 0x080174F4
;Blank Line
