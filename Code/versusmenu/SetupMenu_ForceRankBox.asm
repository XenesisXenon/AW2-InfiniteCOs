;SetupMenu_ForceRankBox.asm
;Draws more boxes

;SetupVersus_ForceRankBox:
;	add	sp,-0x8
;	ldr	r0,=0x0201CC50
;	str	r0,[sp]
;	mov	r0,0x0
;	str	r0,[sp,0x4]
;	mov	r0,0
;	mov	r1,13
;	mov	r2,30
;	mov	r3,3
;	bl	Draw_Object_StandardBox
;	add	sp,0x8
	
;	mov	r0,0
;	mov	r1,16
;	mov	r2,30
;	mov	r3,4
;	bl	Draw_Object_Persistent_StandardBox
;	ldr	r0,=0x08065A82+1
;	bx	r0	
;	.pool
