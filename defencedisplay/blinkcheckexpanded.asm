;blinkcheckexpanded.asm
;Runs a check on the table to see if the stats screen should blink
;For +/- Range and Movement Indicators

ExpandedBlinkCheck:
	push	{r0-r3}
	mov	r0,0x3C
	mul	r1,r0
	ldr	r0,=BasePlayerMemory-0x3C
	add	r0,r0,r1
	ldrb	r1,[r0,0x1D]
	ldrb	r2,[r0,0x1E]
	lsl	r1,r1,0x2
	ldr	r3,=ExpandedBlinkCheckTable
	add	r3,r1,r3
	add	r3,r2,r3
	ldrb	r2,[r3]
	cmp	r2,0x0
	beq	ExpandedBlinkCheckNoBlink
ExpandedBlinkCheckEnd:	
	pop	{r0-r3}
	ldr	r0,=DossierPage4BlinkCheckReturn+1
	bx	r0
ExpandedBlinkCheckNoBlink:
	ldr	r0,=0x03005944
	ldr	r1,=0x10
	str	r1,[r0]
	b	ExpandedBlinkCheckEnd
	.pool
	
ExpandedBlinkCheckTable:
;Nell
	.db	0,0,0,0
;Andy	
	.db	0,0,1,0
;Max	
	.db	1,1,1,0
;Olaf	
	.db	0,0,0,0
;Sami	
	.db	1,1,1,0
;Grit	
	.db	0,1,1,0
;Kanbei	
	.db	0,0,0,0
;Sonja	
	.db	0,0,0,0
;Eagle	
	.db	0,0,0,0
;Drake	
	.db	1,1,1,0
;Sturm	
	.db	0,0,0,0
;Flak	
	.db	0,0,0,0
;Lash	
	.db	0,0,0,0
;Adder	
	.db	0,1,1,0
;Hawke	
	.db	0,0,0,0
;Hachi	
	.db	0,0,0,0
;Colin	
	.db	0,0,0,0
;Jess	
	.db	0,1,1,0
;Sensei	
	.db	1,1,0,0

;Troopers	
	.db	0,0,0,0
	.db	0,0,0,0
	.db	0,0,0,0
	.db	0,0,0,0
	.db	0,0,0,0
	
;Expansion COs
;AWDS
;Jake
	.db	0,1,1,0
;Rachel
	.db	0,0,0,0
;Sasha
	.db	0,0,0,0
;Javier
	.db	0,0,0,0
;Grimm
	.db	0,0,0,0
;Jugger
	.db	0,0,0,0
;Koal
	.db	0,1,1,0
;Kindle
	.db	0,0,0,0
;Von Bolt
	.db	0,0,0,0
;Nell	
	.db	0,0,0,0
;Andy	
	.db	0,0,1,0
;Max	
	.db	1,1,1,0
;Sami	
	.db	0,1,1,0
;Hachi	
	.db	0,0,0,0
;Olaf	
	.db	0,0,0,0
;Grit	
	.db	1,1,1,0
;Colin	
	.db	0,0,0,0
;Kanbei	
	.db	0,0,0,0
;Sonja	
	.db	0,0,0,0
;Sensei	
	.db	1,1,1,0
;Eagle	
	.db	0,0,0,0
;Drake	
	.db	0,0,0,0
;Jess	
	.db	0,1,1,0
;Flak	
	.db	0,0,0,0
;Lash	
	.db	0,0,0,0
;Adder	
	.db	0,1,1,0
;Hawke	
	.db	0,0,0,0	
;AW1	
;Sturm
	.db	0,0,0,0
;Vs Sturm	
	.db	0,0,0,0
;Nell	
	.db	0,0,0,0
;Andy	
	.db	0,0,0,0
;Max	
	.db	1,1,1,0
;Sami	
	.db	1,1,1,0
;Olaf	
	.db	0,0,0,0
;Grit	
	.db	1,1,1,0
;Kanbei	
	.db	0,0,0,0
;Sonja	
	.db	0,0,0,0
;Eagle	
	.db	0,0,0,0
;Drake	
	.db	1,1,1,0
	
;SFW
;Caroline
	.db	0,0,0,0
;Billy Gates	
	.db	0,0,0,0
;Mr Yamamoto	
	.db	0,0,0,0
	
;CCO
;Venom Adder
	.db	0,1,1,0
;Epoch	
	.db	0,0,1,0
;Walter	
	.db	0,0,0,0
;Blank Line	
