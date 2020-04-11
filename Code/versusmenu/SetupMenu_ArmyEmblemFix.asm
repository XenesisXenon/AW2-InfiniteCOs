;SetupMenu_ArmyEmblemFix.asm
;Fix so that the Black Hole Emblem can be displayed.

SetupVersus_OBJLoader_ArmyEmblemFix:
	ldr	r5,=0x06010000	;Base RAM offset
	;mov	r2,0xA6
	;lsl	r2,r2,0x2
	mov	r2,0x3A		;Move the emblems from 0x298 to 0x3A to get
	mov	r0,0x1		;Offset
	mov	r1,r5
	mov	r3,0x19		;Palette/Other Options
	bl	Initiate_Object_OAM
	mov	r0,0x3E
	bl	Queue_Object_OAM
	mov	r0,0x3F
	bl	Queue_Object_OAM
	mov	r0,0x40
	bl	Queue_Object_OAM
	mov	r0,0x41
	bl	Queue_Object_OAM
	mov	r0,0x42
	bl	Queue_Object_OAM	;Enables Black Hole Emblem
	
	;Add Custom Icon Loads Here
	;used for Force Ranks display
	mov	r2,0x4E
	mov	r0,0
	mov	r1,r5
	mov	r3,0x15
	bl	Initiate_Object_OAM	
	mov	r0,0x0
	bl	Queue_Object_OAM
	mov	r0,0x01
	bl	Queue_Object_OAM
	mov	r0,0x02
	bl	Queue_Object_OAM
	mov	r0,0x03
	bl	Queue_Object_OAM
	mov	r0,0x04
	bl	Queue_Object_OAM
	mov	r0,0x05
	bl	Queue_Object_OAM
	mov	r0,0x06
	bl	Queue_Object_OAM
	mov	r0,0x07
	bl	Queue_Object_OAM
	mov	r0,0x08
	bl	Queue_Object_OAM
	mov	r0,0x09
	bl	Queue_Object_OAM
	mov	r0,0x0A
	bl	Queue_Object_OAM
	mov	r0,0x0B
	bl	Queue_Object_OAM
	mov	r0,0x0C
	bl	Queue_Object_OAM
	mov	r0,0x0D
	bl	Queue_Object_OAM
	mov	r0,0x0E
	bl	Queue_Object_OAM
	mov	r0,0x0F
	bl	Queue_Object_OAM
	
	ldr	r0,=0x08065ACC+1
	bx	r0
	.pool
	
