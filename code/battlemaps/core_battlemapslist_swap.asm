;Core_BattlemapsList_Swap.asm
;Swaps between the standard list and the Advanced/Custom Options list

Core_BattlemapsList_Swap:
	ldr	r7,=KeyPadInput_Buffer+6
	ldrh	r7,[r7]
	ldr	r5,=Button_R+Button_L
	and	r7,r5
	cmp	r5,r7
	beq	@ListSwap_True
	
@ListSwap_False:
	ldr	r0,=Custom_BattlemapsToggleFlag
	mov	r1,BooleanFalse
	strb	r1,[r0]
	
	mov	r7,0
	mov	r5,0
	ldr	r2,=0x0849EDB0
	ldr	r1,[r2,0x4]
	mov	r0,0x1
	neg	r0,r0
	cmp	r1,r0
	beq	@End
	b	@Return
	
@ListSwap_True:
	ldr	r0,=Custom_BattlemapsToggleFlag
	mov	r1,BooleanTrue
	strb	r1,[r0]
	
	mov	r7,0
	mov	r5,0
	ldr	r2,=Table_Battlemaps_CustomList
	ldr	r1,[r2,0x4]
	mov	r0,0x1
	neg	r0,r0
	cmp	r1,r0
	beq	@End
	
@Return:	
	ldr	r0,=0x0803C7B2+1
	bx	r0
	
@End:
	mov	r0,r10
	add	r1,r0,r7
	mov	r0,0xFF
	strb	r0,[r1]
	pop	{r3-r5}
	mov	r8,r3
	mov	r9,r4
	mov	r10,r5
	pop	{r4-r7}
	pop	{r0}
	bx	r0
	.pool

;0x0803C86A*
Battlemaps_ListSwap_1:
	ldr	r3,=Custom_BattlemapsToggleFlag
	ldrb	r3,[r3]
	cmp	r3,BooleanTrue
	beq	@SwapList_True_1

	ldr	r3,=0x0849EDB0
	b	@Return_1
	
@SwapList_True_1:	
	ldr	r3,=Table_Battlemaps_CustomList
	
@Return_1:	
	lsl	r1,r0,0x1
	add	r1,r1,r0
	lsl	r1,r1,0x3
	mov	r2,r3
	add	r2,0xC
	add	r2,r1,r2
	add	r3,0x10
	add	r1,r1,r3
	
	ldr	r0,=0x0803C87C+1
	bx	r0
	.pool

;0x080487DC
Battlemaps_ListSwap_2:
	ldr	r1,=Custom_BattlemapsToggleFlag
	ldrb	r1,[r1]
	cmp	r1,BooleanTrue
	beq	@SwapList_True_2

	ldr	r1,=0x0849EDB0
	b	@Return_2
	
@SwapList_True_2:	
	ldr	r1,=Table_Battlemaps_CustomList
	
@Return_2:	
	mov	r9,r1
	lsl	r4,r3,0x1
	add	r4,r4,r3
	lsl	r4,r4,0x3
	ldr	r2,=0x080487E6+1
	bx	r2
	.pool

;0x080494D8
Battlemaps_ListSwap_3:
	ldr	r2,=Custom_BattlemapsToggleFlag
	ldrb	r2,[r2]
	cmp	r2,BooleanTrue
	beq	@SwapList_True_3

	ldr	r2,=0x0849EDB0
	b	@Return_3
	
@SwapList_True_3:	
	ldr	r2,=Table_Battlemaps_CustomList
	
@Return_3:	
	ldr	r1,=0x02028E1C
	ldr	r4,[r6]
	ldr	r0,[r4]
	ldrh	r0,[r0,0x1E]
	add	r0,r0,r1
	ldr	r1,=0x080494E4+1
	bx	r1
	.pool

;0x08049566*
Battlemaps_ListSwap_4:
	ldr	r2,=Custom_BattlemapsToggleFlag
	ldrb	r2,[r2]
	cmp	r2,BooleanTrue
	beq	@SwapList_True_4

	ldr	r2,=0x0849EDB0
	b	@Return_4
	
@SwapList_True_4:	
	ldr	r2,=Table_Battlemaps_CustomList
	
@Return_4:	
	ldr	r1,=0x02028E1C
	ldrh	r0,[r3,0x1E]
	add	r0,r0,r1
	ldrb	r1,[r0]
	ldr	r0,=0x08049570+1
	bx	r0
	.pool

;0x080495CE
Battlemaps_ListSwap_5:
	ldr	r2,=Custom_BattlemapsToggleFlag
	ldrb	r2,[r2]
	cmp	r2,BooleanTrue
	beq	@SwapList_True_5

	ldr	r2,=0x0849EDB0
	b	@Return_5
	
@SwapList_True_5:	
	ldr	r2,=Table_Battlemaps_CustomList
	
@Return_5:	
	ldr	r4,=0x02028E1C
	ldrh	r0,[r3,0x1E]
	add	r0,r0,r4
	ldrb	r1,[r0]
	ldr	r0,=0x080495D8+1
	bx	r0
	.pool

;0x08049668
Battlemaps_ListSwap_6:
	ldr	r2,=Custom_BattlemapsToggleFlag
	ldrb	r2,[r2]
	cmp	r2,BooleanTrue
	beq	@SwapList_True_6

	ldr	r2,=0x0849EDB0
	b	@Return_6
	
@SwapList_True_6:	
	ldr	r2,=Table_Battlemaps_CustomList
	
@Return_6:	
	ldr	r7,=0x02028E1C
	ldrh	r0,[r3,0x1E]
	add	r0,r0,r7
	ldrb	r1,[r0]
	ldr	r0,=0x08049672+1
	bx	r0
	.pool
