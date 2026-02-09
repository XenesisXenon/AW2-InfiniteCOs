;Enables the CO and Force Rank Flat Capture ability
CaptureExpansionFunction:
	ldr	r0,=CurrentPlayerTurn
	ldrb	r0,[r0]
	mov	r1,0x3C
	mul	r0,r1
	ldr	r1,=BasePlayerMemory-0x3C
	add	r0,r0,r1
	ldrb	r0,[r0,0x1D]
	mov	r1,0
	mov	r2,Gather_CO_FlatCaptureBonus
	bl	GatherCOAbility
	add	r5,r0,r5
	
	ForceRankCheckerPlayerTurnOnly ForceRank_Invader,ForceRank_Strength_Invader
	add	r5,r0,r5
	ForceRankCheckerPlayerTurnOnly ForceRank_Conqueror,ForceRank_Strength_Conqueror
	add	r5,r0,r5

	ldr	r1,=0x08499590
	ldr	r2,[r1]
	ldr	r4,=0x08091358
	ldr	r6,[r4]
	ldrh	r1,[r6,0x2]
	lsl	r1,r1,0x1
	ldr	r3,=0x080426A6+1
	bx	r3
	.pool
	
	.align 4	
Table_CaptureTerrain_Jump:
	.dw	0x08042418	;City
	.dw	0x0804241C	;Sea
	.dw	0x08042418	;HQ
	.dw	0x0804241C	;Underlay
	.dw	0x08042418	;Airport
	.dw	0x08042418	;Port
	.dw	0x0804241C	;Bridge
	.dw	0x0804241C	;Shoal
	.dw	0x08042418	;Base
	.dw	0x0804241C	;Pipeline
	.dw	0x0804241C	;Pipeline Seam
	.dw	0x0804241C	;Silo
	.dw	0x0804241C	;Silo Used
	.dw	0x0804241C	;Reef
	.dw	0x08042418	;Lab
	.dw	0x0804241C	;Minicannon
	.dw	0x08042418	;AWDS Tower
	