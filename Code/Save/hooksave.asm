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
	ldr	r3,=SaveFunction_RecordingExpansion+1
	bx	r3
	.pool
;	pop	{r3-r5}
;	mov	r8,r3
;	mov	r9,r4
;	mov	r10,r5
;	pop	{r4-r7}
;	pop	{r0}
;	bx	r0

;Addition to the function to restore more data.	
.org 0x080174F4
	ldr	r3,=LoadFunction_RecordingExpansion+1
	bx	r3
	.pool
;	pop	{r3-r5}
;	mov	r8,r3
;	mov	r9,r4
;	mov	r10,r5
;	pop	{r4-r7}
;	pop	{r0}
;	bx	r0

;Alternate hook point specifically for Custom "Hard Mode" toggle
;Loads before the map loading is performed
.org 0x080172BE
	ldr	r2,=LoadFunction_HardToggle+1
	bx	r2
	.pool
;	ldr	r2,=0x03002F08
;	ldr	r0,=0xB98
;	add	r0,r9
;	ldr	r1,[r0,0x4]
;	ldr	r0,[r0]


