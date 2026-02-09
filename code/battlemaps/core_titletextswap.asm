;core_titletextswap.asm
;Replaces the pointer for Battle*Maps to Option*Shop if option is set.

Core_TitleTextSwap:
	ldr	r0,=Custom_BattlemapsToggleFlag
	ldrb	r0,[r0]
	cmp	r0,BooleanTrue
	beq	@Titleswap_True
	
	ldr	r0,=0x085802B4
	b	@Return

	
@Titleswap_True:
	ldr	r0,=@Text_OptionShop
	
@Return:
	ldr	r4,=0x0200FC50
	mov	r1,0x1
	str	r1,[sp,0x4]
	mov	r1,0x3
	str	r1,[sp,0x8]
	
	ldr	r1,=0x08048AEE+1
	bx	r1
	.pool
	
@Text_OptionShop:
	.ascii "OPTION*SHOP"
	.align 4