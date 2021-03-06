;coreweatherfirepowerboost.asm
;Adds a firepower boost dependent on the Weather

FirepowerBoost_Weather:
	push	{r14}
	mov	r2,Gather_CO_WeatherFirepowerBoost
	bl	GatherCOAbility
	
	ldr	r1,=CurrentGameOptions
	add	r1,0x2C
	ldrb	r1,[r1]
	cmp	r1, CurrentWeatherSnow
	bne	@COWeatherFirepowerBoostCheckRain
	
	mov	r1,0xFF
	and	r0,r1
	b	@COWeatherFirepowerBoostTrue
	
@COWeatherFirepowerBoostCheckRain:	
	cmp	r1, CurrentWeatherRain
	bne	@COWeatherFirepowerBoostFalse
	lsr	r0,r0,0x8
	b	@COWeatherFirepowerBoostTrue	
	
@COWeatherFirepowerBoostFalse:	
	mov	r0,0x0
@COWeatherFirepowerBoostTrue:
	cmp	r0,0x81
	ble	@COWeatherFirepowerBoostEnd
	add	r0,0x80
	lsl	r0,r0,0x18
	lsr	r0,r0,0x18
	sub	r0,0x80
	
@COWeatherFirepowerBoostEnd:	
	pop	{r1}
	bx	r1
	.pool
	
;Blank Line
