;CCOTemplateCopt.asm
;Template - CO Power Table
;Starts at 0x084A0090
	;CO Fullbody Graphic Pointer (+0)
	.dw GraphicsAW1NellGraphic
	
	;CO Name Graphic Pointer (+4)
	.dw 0x080F545C
	
	;CO Palette (+8)
	.dw GraphicsAW1NellPalette
	
	;Text Box Face Neutral Pointer (+12)
	.dw GraphicsAW1NellFace
	
	;Text Box Face Happy Pointer (+16)
	.dw GraphicsAW1NellHappyFace
	
	;Text Box Face Sad Pointer (+20)
	.dw GraphicsAW1NellSadFace
	
	;Large Partial Face Pointer (+24)
	.dw GraphicsAW1NellMugshot
	
	;CO Power Animation Graphic (+28)
	.db 2
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
	.dh 183
	.dh 184
	
	;Animation Graphic ID 1 (SCOP) (+48)
	.db 2
	.db 0
	
	;Padding
	.dh 0x0
	
	;Animation Check - SCOP (+52)
	.dw COPCheckAllUnits+1

	;Animation Effect - SCOP (+56)
	.dw COPEffectNone+1

	;Standard SCOP Type (+60)
	.dw COPowerTypeStandard+1

	;Sound Effect (SCOP)
	.dh 183
	.dh 184
;Blank Line
