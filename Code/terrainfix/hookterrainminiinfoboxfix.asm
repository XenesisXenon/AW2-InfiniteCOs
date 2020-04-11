;hookterrainminiinfoboxfix.asm
;Fixes the mini-infobox so that the Null Tile displays properly

.org 0x0802A888
	sub	r0,0x0	;Was 0x1

.org 0x0802A88C
	.dw 0x08104364	;Was 0x08104464
	
.org 0x0849A2C8 ;Null Tile
	.dh 23
	
.org 0x0849A320	;Tower
	.dh 8,8

;Fixes the mini-infobox so that the Under-Terrain Plain Tile
;displays properly
.org 0x0849A2EC
	.db 23
	
.org 0x08104CE4
	.dw 0,0,0,0
	.dw 0,0,0,0
	.dw 0,0,0,0
	.dw 0,0,0,0
	.dw 0,0,0,0
	.dw 0,0,0,0
	.dw 0,0,0,0
	.dw 0,0,0,0	
	
.org 0x0802ABD6
	cmp	r0,0x10
	bhi	0x0802AC3C
	nop
.org 0x0802ABDE
	b	MiniInfoBox_CaptureDisplayFix

.org 0x0802ABFC
	.db	20,0,20,0,20,20,0,0,20,0,0,0,0,0,20,0,20,0
	.align 4
	
MiniInfoBox_CaptureDisplayFix:
	add		r0,r0,r1
	ldrb	r1,[r0]
	cmp		r0,0x0
	beq		0x0802AC3C
	b		0x0802AC38
	
.org 0x0802A98C	
