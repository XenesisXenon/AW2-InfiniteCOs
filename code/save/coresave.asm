;Expansion to Save/Load additional data for regular in-game function
SaveFunction_RecordingExpansion:
	ldr	r3,=CustomForceRankRAM	;Location of Data
	mov	r4, ForceRank_Slot_Total	;Length of Data
	lsl	r4,r4,0x2
	lsl	r4,r4,0x1				;CO Swap
	add	r2,1

SaveFunction_ForceRankLoopStart:
	ldrb	r5,[r3]
	strb	r5,[r2]
	add	r2,1
	add	r3,1
	sub	r4,1
	cmp	r4,0x0
	bgt	SaveFunction_ForceRankLoopStart

	ldr	r3,=CustomSwapCORam	;Location of Data
	mov	r4, (8*4)	;Length of Data
	add	r2,1

SaveFunction_COSwapLoopStart:
	ldrb	r5,[r3]
	strb	r5,[r2]
	add	r2,1
	add	r3,1
	sub	r4,1
	cmp	r4,0x0
	bgt	SaveFunction_COSwapLoopStart
	
SaveFunction_HardToggle:
	ldr	r3,=Custom_HardToggleFlag
	ldrb	r5,[r3]
	strb	r5,[r2]
	add	r2,1

	pop	{r3-r5}
	mov	r8,r3
	mov	r9,r4
	mov	r10,r5
	pop	{r4-r7}
	pop	{r0}
	bx	r0
	.pool

LoadFunction_RecordingExpansion:
	ldr	r3,=CustomForceRankRAM	;Location of Data
	mov	r4, ForceRank_Slot_Total	;Length of Data
	lsl	r4,r4,0x2
	lsl	r4,r4,0x1				;CO Swap
	add	r1,1

LoadFunction_ForceRankLoopStart:
	ldrb	r5,[r1]
	strb	r5,[r3]
	add	r1,1
	add	r3,1
	sub	r4,1
	cmp	r4,0x0
	bgt	LoadFunction_ForceRankLoopStart

	ldr	r3,=CustomSwapCORam	;Location of Data
	mov	r4, (8*4)	;Length of Data
	add	r1,1

LoadFunction_COSwapLoopStart:
	ldrb	r5,[r1]
	strb	r5,[r3]
	add	r1,1
	add	r3,1
	sub	r4,1
	cmp	r4,0x0
	bgt	LoadFunction_COSwapLoopStart
	
	pop	{r3-r5}
	mov	r8,r3
	mov	r9,r4
	mov	r10,r5
	pop	{r4-r7}
	pop	{r0}
	bx	r0
	.pool
	
LoadFunction_HardToggle:
;Function is separate for Order of Operations Issues
	ldr	r0,=0xDEC
	add	r0,r9
	ldr	r2,=Custom_HardToggleFlag
	ldrb	r1,[r0]
	strb	r1,[r2]
	;Original Code
	ldr	r2,=0x03002F08
	ldr	r0,=0xB98
	add	r0,r9
	ldr	r1,[r0,0x4]
	ldr	r0,[r0]	
	str	r0,[r2]
	str	r1,[r2,0x4]
	
LoadFunction_TileAllocation_Loader:
;Also add a function here to control map TSA (Before Map is loaded)
	ldr	r0,=CurrentGameOptions+GameRule_TileAllocation_Table
	ldrb	r0,[r0]
	ldr	r1,=Map_TileAllocation_Table+0x3FF
	ldrb	r1,[r1]
	cmp	r0,r1
	beq	LoadFunction_TileAllocation_Loader_End
	
;Call the Loader function
	bl	Custom_TileAllocationLoad
	
LoadFunction_TileAllocation_Loader_End:
	ldr	r1,=0x080172CC+1
	bx	r1
	.pool
;Blank Line	