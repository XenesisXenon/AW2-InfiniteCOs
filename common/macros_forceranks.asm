;macros_forceranks.asm

	.macro ForceRankCheckerFirepower,ForceRankID,Attribute
		mov	r0,ForceRankID
		mov	r1,r7
		bl	ForceRankCheckerSubroutine
		cmp	r0,0x0
		beq	@@ForcerankReturnFalse
		add	r4,Attribute
@@ForcerankReturnFalse:		
	.endmacro

.macro ForceRankCheckerFirepowerBackCO,ForceRankID,Attribute
		mov	r0,ForceRankID
		mov	r1,r7
		add	r1,4
		bl	ForceRankCheckerSubroutine
		cmp	r0,0x0
		beq	@@ForcerankReturnFalse
		add	r4,Attribute
@@ForcerankReturnFalse:		
	.endmacro

	.macro ForceRankCheckerDefence,ForceRankID,Attribute
		mov	r0,ForceRankID
		mov	r1,r7
		bl	ForceRankCheckerSubroutine
		cmp	r0,0x0
		beq	@@ForcerankReturnFalse
		add	r4,Attribute
@@ForcerankReturnFalse:		
	.endmacro

	.macro ForceRankCheckerDefenceBackCO,ForceRankID,Attribute
		mov	r0,ForceRankID
		mov	r1,r7
		add	r1,0x4	;Back CO is 5-8
		bl	ForceRankCheckerSubroutine
		cmp	r0,0x0
		beq	@@ForcerankReturnFalse
		add	r4,Attribute
@@ForcerankReturnFalse:		
	.endmacro

	.macro ForceRankCheckerPlayerTurnOnly,ForceRankID,Attribute
		ldr	r1,=CurrentPlayerTurn
		ldrb	r1,[r1]
		mov	r0, ForceRankID
		bl	ForceRankCheckerSubroutine
		cmp	r0,0x0
		beq	@@ForcerankReturnFalse
		mov	r0,Attribute
@@ForcerankReturnFalse:		
	.endmacro

	.macro ForceRankCheckerTurnInput,ForceRankID,Attribute
		mov	r0, ForceRankID
		bl	ForceRankCheckerSubroutine
		cmp	r0,0x0
		beq	@@ForcerankReturnFalse
		mov	r0,Attribute
@@ForcerankReturnFalse:		
	.endmacro