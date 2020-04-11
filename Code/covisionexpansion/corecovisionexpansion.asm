
COVisionExpansionFunction:
	mov	r1,r4
	ForceRankCheckerTurnInput	ForceRank_Scout,Forcerank_Strength_Scout
	add	r5,r0,r5
	mov	r1,r4
	ForceRankCheckerTurnInput	ForceRank_EagleEye,ForceRank_Strength_EagleEye
	add	r5,r0,r5

	;Rain Check
	ldr	r0,=CurrentGameOptions
	add	r0,GameRule_ActiveWeather
	ldrb	r0,[r0]
	cmp	r0,CurrentWeatherRain
	bne	COVisionExpansionFunction_Rain_False
	sub	r5,1
COVisionExpansionFunction_Rain_False:
	cmp	r5,1
	bge	COVisionExpansionFunction_End
	
	mov	r5,1
COVisionExpansionFunction_End:
	mov	r0,r5
	pop	{r4,r5}
	pop	{r1}
	bx	r1
	.pool