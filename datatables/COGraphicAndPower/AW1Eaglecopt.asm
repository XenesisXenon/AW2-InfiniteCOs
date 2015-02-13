;CCOTemplateCopt.asm
;Template - CO Power Table
;Starts at 0x084A0090
	;CO Fullbody Graphic Pointer (+0)
	.dw GraphicsAW1EagleGraphic
	
	;CO Name Graphic Pointer (+4)
	.dw 0x080F59B8
	
	;CO Palette (+8)
	.dw GraphicsAW1EaglePalette
	
	;Text Box Face Neutral Pointer (+12)
	.dw GraphicsAW1EagleFace
	
	;Text Box Face Happy Pointer (+16)
	.dw GraphicsAW1EagleHappyFace
	
	;Text Box Face Sad Pointer (+20)
	.dw GraphicsAW1EagleSadFace
	
	;Large Partial Face Pointer (+24)
	.dw GraphicsAW1EagleMugshot
	
	;CO Power Animation Graphic (+28)
	.db 3
	.db 1
	
	;Padding
	.dh 0x0
	
	;Animation Check - COP (+32)
	.dw COPCheckAllUnits+1
	
	;Animation Effect - COP (+36)
	.dw COPEffectNone+1
	
	;Standard COP Type (+40)
	.dw COPowerTypeStandard+1
	
	;Sound Effect (COP) (+44)
	.dh 186
	.dh 187
	
	;Animation Graphic ID 1 (SCOP) (+48)
	.db 3
	.db 1
	
	;Padding
	.dh 0x0
	
	;Animation Check - SCOP (+52)
	.dw COPCheckAerialClassOrWaitMode+1

	;Animation Effect - SCOP (+56)
	.dw COPEffectReanimateUnit+1

	;Standard SCOP Type (+60)
	.dw COPowerTypeStandard+1

	;Sound Effect (SCOP)
	.dh 186
	.dh 187
;Blank Line
