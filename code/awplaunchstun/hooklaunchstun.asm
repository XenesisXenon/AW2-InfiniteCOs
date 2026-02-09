;Advance Wars 2 - Project
;hooklaunchstun.asm
;Code for Launching units, stun-based COP.

.org 0x08026768
	push 	{r4,r14}
	ldr 	r4,=CurrentPlayerTurn
	ldrh 	r0, [r4]
	add     r0,#0x1                                  
	strh    r0,[r4]
	cmp     r0,#0x5                              
	bne     #0x802677E                               
	bl      #0x80176A8                                
	mov     r0,#0x1                                  
	strh    r0,[r4]                                    
	ldrb    r0,[r4]                                     
	bl      #0x80266DC                                 
	lsl     r0,r0,#0x18                                
	cmp     r0,#0x0                                  
	beq     #0x802676C                                      
	ldr 	r0,=LaunchAndStun+1
	bx 	r0
	.pool
;Blank Line	
