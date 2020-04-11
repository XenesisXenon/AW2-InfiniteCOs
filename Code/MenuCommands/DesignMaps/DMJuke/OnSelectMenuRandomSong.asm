;OnSelectMenuRandomSong.asm
;Performs the next song command when selected

MenuOnSelectDMJukeRandomSong:
	push	{r4,r14}
	ldr	r3,=0x08090BF4
	ldr	r1,[r3]
	ldrb	r0,[r1,0xC]	;Checks whether music is enabled
	cmp	r0,0x0
	beq	MenuOnSelectDMJukeRandomSongEnd
	
	bl	LongBLRNGFunction
	
	ldr     r1,=JukeboxSongListLength
	
	bl	DivisionFunction
	
	ldr     r0,=JukeboxRamLocation
	ldr     r3,=JukeboxSongListLength

	cmp     r1,0x0
	bgt	MenuOnSelectDMJukeRandomSongCheck
	mov	r1,0x0
	b	MenuOnSelectDMJukeRandomSongIncrement
	
MenuOnSelectDMJukeRandomSongCheck:
	cmp	r1,JukeboxSongListLength
	ble	MenuOnSelectDMJukeRandomSongIncrement
	mov	r1,0x0

MenuOnSelectDMJukeRandomSongIncrement:	
	
	bl	DesignMapsNPTextUpdater

	mov     r2,r1
	lsl     r1,r1,#0x1
	ldr     r3,=DesignMapsJukeSongTable
	add     r1,r1,r3
	ldrh    r1,[r1]
	strh    r2,[r0]
	strh    r1,[r0,#0x2]
	mov     r0,r1
	
	bl      SappyPlaySong
	
MenuOnSelectDMJukeRandomSongEnd:
	pop	{r4}
	pop	{r0}
	bx	r0
	.pool

;BlankLine
