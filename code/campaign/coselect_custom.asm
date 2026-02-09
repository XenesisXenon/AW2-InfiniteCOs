;Custom CO Select

Custom_COSelectCampaign_A:
	push	{r14}
	
	ldr	r1,=0x03005944
	mov	r0,0x0
	str	r0,[r1]
	mov	r0,0
	
	ldr	r1,=0x03005944 ;Number of Armies available
	mov	r0,2
	strb	r0,[r1]
	
	ldr	r1,=0x03005958 ;What the army colours on the menu are
	mov	r0,0 ;Orange Star
	strb	r0,[r1]
	mov	r0,2 ;Green Earth
	strb	r0,[r1,0x1]
	
	ldr	r1,=0x03005948 ;Number of COs available to each army
	mov	r0,3
	strb	r0,[r1]
	strb	r0,[r1,0x1]
	
	ldr	r1,=0x030059C0 ;Can army lists be swapped
	mov	r0,0
	strb	r0,[r1]
	strb	r0,[r1,0x4]
	strb	r0,[r1,0x8]
	strb	r0,[r1,0xC]
	
	ldr	r1,=0x030058E0 ;CO order base pointer
	mov	r0,0x1 ;Andy
	strb	r0,[r1]
	
	mov	r0,0x2 ;Max
	add	r1,1
	strb	r0,[r1]
	
	mov	r0,0x4 ;Sami
	add	r1,1
	strb	r0,[r1]	
	
	mov	r0,0x8 ;Eagle
	add	r1,1
	strb	r0,[r1]
	
	mov	r0,0x9 ;Drake
	add	r1,1
	strb	r0,[r1]
	
	mov	r0,0x11 ;Jess
	add	r1,1
	strb	r0,[r1]
	
	pop	{r0}
	bx	r0
	.pool


Custom_COSelectCampaign_B:
	push	{r14}
	
	ldr	r1,=0x03005944
	mov	r0,0x0
	str	r0,[r1]
	mov	r0,0
	
	ldr	r1,=0x03005944 ;Number of Armies available
	mov	r0,2
	strb	r0,[r1]
	
	ldr	r1,=0x03005958 ;What the army colours on the menu are
	mov	r0,0 ;Orange Star
	strb	r0,[r1]
	mov	r0,3 ;Yellow Comet
	strb	r0,[r1,0x1]
	
	ldr	r1,=0x03005948 ;Number of COs available to each army
	mov	r0,3
	strb	r0,[r1]
	strb	r0,[r1,0x1]
	
	ldr	r1,=0x030059C0 ;Can army lists be swapped
	mov	r0,0
	strb	r0,[r1]
	strb	r0,[r1,0x4]
	strb	r0,[r1,0x8]
	strb	r0,[r1,0xC]
	
	ldr	r1,=0x030058E0 ;CO order base pointer
	mov	r0,0x1 ;Andy
	strb	r0,[r1]
	
	mov	r0,0x2 ;Max
	add	r1,1
	strb	r0,[r1]
	
	mov	r0,0x4 ;Sami
	add	r1,1
	strb	r0,[r1]	
	
	mov	r0,0x6 ;Kanbei
	add	r1,1
	strb	r0,[r1]
	
	mov	r0,0x7 ;Sonja
	add	r1,1
	strb	r0,[r1]
	
	mov	r0,0x12 ;Sensei
	add	r1,1
	strb	r0,[r1]
	
	pop	{r0}
	bx	r0
	.pool
