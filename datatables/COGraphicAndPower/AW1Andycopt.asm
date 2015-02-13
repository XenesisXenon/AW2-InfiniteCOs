;CCOTemplateCopt.asm
;Template - CO Power Table
;Starts at 0x084A0090
	;CO Fullbody Graphic Pointer (+0)
	.dw GraphicsAW1AndyGraphic
	
	;CO Name Graphic Pointer (+4)
	.dw 0x080F5500
	
	;CO Palette (+8)
	.dw GraphicsAW1AndyPalette
	
	;Text Box Face Neutral Pointer (+12)
	.dw GraphicsAW1AndyFace
	
	;Text Box Face Happy Pointer (+16)
	.dw GraphicsAW1AndyHappyFace
	
	;Text Box Face Sad Pointer (+20)
	.dw GraphicsAW1AndySadFace
	
	;Large Partial Face Pointer (+24)
	.dw GraphicsAW1AndyMugshot
	
	;CO Power Animation Graphic (+28)
	.db 5
	.db 0
	
	;Padding
	.dh 0x0
	
	;Animation Check - COP (+32)
	.dw COPCheckAllUnits+1
	
	;Animation Effect - COP (+36)
	.dw COPEffectNone+1
	
	;Standard COP Type (+40)
	.dw COPowerTypeStandard+1
	
	;Sound Effect (COP) (+44)
	.dh 180
	.dh 181
	
	;Animation Graphic ID 1 (SCOP) (+48)
	.db 7
	.db 7
	
	;Padding
	.dh 0x0
	
	;Animation Check - SCOP (+52)
	.dw COPCheckAllUnits+1

	;Animation Effect - SCOP (+56)
	.dw COPEffectHealTwoHP+1

	;Standard SCOP Type (+60)
	.dw COPowerTypeStandard+1

	;Sound Effect (SCOP)
	.dh 180
	.dh 181
;Blank Line
