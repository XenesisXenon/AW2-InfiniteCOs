;coredossiertextfix.asm

CoreDossierTextFix:
	ldr	r3,=0x104
	mul	r0,r3
	ldr	r3,=COStatsAbilitiesDatatable
	add	r0,r0,r3
	add	r0,r0,r5
	add	r0,r0,r5
	ldrh	r3,[r0,0x2C]
	
	mov	r0,0x80
	lsl	r0,r0,0x8
	str	r0,[sp]
	mov	r0,0x3F
	str	r0,[sp,0x4]
	ldr	r0,=DossierTextFixReturn+1
	bx	r0
	.pool
	

;blank line
