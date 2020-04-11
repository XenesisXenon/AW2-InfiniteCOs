;core_sandstormrange.asm
;Adjusts the indirect firing range during a sandstorm

Core_SandstormRange:
	;Save values
	mov	r5,r0

	;Checks if the current Game Mode is Versus
	ldr	r0,=CurrentGameOptions
	add	r0,GameRule_Gamemode
	ldrb	r0,[r0]
	cmp	r0,GameMode_Versus
	bne	@End

	;Check whether the rule is set
	ldr	r0,=CurrentGameOptions
	add	r0,GameRule_WeatherStyle
	ldrb	r0,[r0]
	cmp	r0,Game_AWDS
	
	;Check the current weather is sandstorm
	ldr	r0,=CurrentGameOptions
	add	r0,GameRule_ActiveWeather
	ldrb	r0,[r0]
	cmp	r0,CurrentWeatherSandstorm
	bne	@End
	
	sub	r4,1
	
	;Check whether the range has underflowed
	mov	r0,r6
	mov	r1,GatherUnit_MinRange
	mov	r2,1
	bl	GatherUnitAbility
	
	add	r1,r4,r5
	cmp	r1,r0
	bge	@End
	
	b	@Minimum
	
@End:
	add	r0,r4,r5
@Minimum:
	pop	{r4-r6}
	pop	{r1}
	bx	r1
	.pool
