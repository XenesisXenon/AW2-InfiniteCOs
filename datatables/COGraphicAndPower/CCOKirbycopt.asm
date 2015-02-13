;CCOTemplateCopt.asm
;Template - CO Power Table
;Starts at 0x084A0090
	;CO Fullbody Graphic Pointer (+0)
	.dw GraphicsCCOKirbyGraphic
	
	;CO Name Graphic Pointer (+4)
	.dw GraphicsOutrealmName
	
	;CO Palette (+8)
	.dw GraphicsCCOKirbyPalette
	
	;Text Box Face Neutral Pointer (+12)
	.dw GraphicsCCOKirbyFace
	
	;Text Box Face Happy Pointer (+16)
	.dw GraphicsCCOKirbyHappyFace
	
	;Text Box Face Sad Pointer (+20)
	.dw GraphicsCCOKirbySadFace
	
	;Large Partial Face Pointer (+24)
	.dw GraphicsCCOKirbyMugshot
	
	;CO Power Animation Graphic (+28)
	.db 2
	.db 0
	
	;Padding
	.dh 0x0
	
	;Animation Check - COP (+32)
	.dw COPCheckCopyCOPower+1
	
	;Animation Effect - COP (+36)
	.dw COPEffectCopyCOPower+1
	
	;Standard COP Type (+40)
	.dw COPowerTypeCopyCOPower+1
	
	;Sound Effect (COP) (+44)
	.dh 183
	.dh 184
	
	;Animation Graphic ID 1 (SCOP) (+48)
	.db 7
	.db 7
	
	;Padding
	.dh 0x0
	
	;Animation Check - SCOP (+52)
	.dw COPCheckCopySuperCOPower+1

	;Animation Effect - SCOP (+56)
	.dw COPEffectCopySuperCOPower+1

	;Standard SCOP Type (+60)
	.dw COPowerTypeCopySuperCOPower+1

	;Sound Effect (SCOP)
	.dh 503
	.dh 504
;Blank Line
