;hookfreecopmusic.asm

;Fixes the SCOP Klaxon for Extended COs
.org 0x08044BA0
	ldr	r1,=CoreFreeSCOPMusic+1
	bx	r1
	.pool
;Unhooks the COP Music from the CO's faction and allows a free selection
.org 0x08043E18
	push	{r14}
	mov	r1,0x82
	lsl	r1,r1,0x1
	mul	r0,r1
	ldr	r1,=COStatsAbilitiesDatatable
	add	r0,r0,r1
	mov	r1,0xE4
	ldrh	r0,[r0,r1]
	bl	0x0803B4EC
	pop	{r0}
	bx	r0
	.pool

;Blank Line
