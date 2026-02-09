;OnSelectMenuNextSong.asm
;Performs the next song command when selected

MenuOnSelectDMJukeNextSong:
	push	{r4,r14}
	ldr	r3,=0x08090BF4
	ldr	r1,[r3]
	ldrb	r0,[r1,0xC]	;Checks whether music is enabled
	cmp	r0,0x0
	beq	MenuOnSelectDMJukeNextSongEnd
	
	ldr     r0,=JukeboxRamLocation
	ldr     r3,=JukeboxSongListLength
	ldrh    r1,[r0]
	add     r1,#0x1
	cmp     r1,JukeboxSongListLength
	blt	MenuOnSelectDMJukeNextSongIncrement
	mov	r1,0x0
	
MenuOnSelectDMJukeNextSongIncrement:	
	
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
	
MenuOnSelectDMJukeNextSongEnd:
	pop	{r4}
	pop	{r0}
	bx	r0
	.pool

;BlankLine
