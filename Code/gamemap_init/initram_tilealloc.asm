;initram_tilealloc.asm
;Runs the Tile Allocation table loader/sets the rules, etc.
InitialiseGameRulesRAM_GameTileAlloc:
	push	{r4-r7,r14}
;Gather Current Map's Game and store in the Rules
	ldr	r0,=CurrentGameOptions
	add	r0,GameRule_MapID
	ldrh	r0,[r0]
	
	mov	r1,MapHeader_Length
	mul	r1,r0
	ldr	r0,=MapHeaderTable
	add	r0,r0,r1
	add	r0,Gather_Map_GameVersion
	ldrb	r0,[r0]
	
	ldr	r1,=CurrentGameOptions
	add	r1,GameRule_TileAllocation_Table
	strb	r0,[r1]
	
;Check Whether the current TileAlloc is the same
	ldr	r0,=CurrentGameOptions
	add	r0,GameRule_TileAllocation_Table
	ldrb	r0,[r0]
	ldr	r1,=Map_TileAllocation_Table+0x3FF
	ldrb	r1,[r1]
	cmp	r0,r1
	beq	InitialiseGameRulesRAM_GameTileAlloc_End
	
;Call the Loader function
	bl	Custom_TileAllocationLoad
		
InitialiseGameRulesRAM_GameTileAlloc_End:	
	pop	{r4-r7}
	pop	{r0}
	bx	r0
	.pool

;blank line