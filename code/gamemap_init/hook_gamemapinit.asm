;hook_gameinit.asm
;Modifications to the Game Initialisation Subroutine
;when starting a new Vs/War Room/Campaign Map

.org 0x08026C5C
	ldr	r0,=InitialisePlayerRamFunction_Expansion+1
	bx	r0
	.pool
;	pop	{r4,r5}
;	pop	{r0}
;	bx	r0
;Blank Line
