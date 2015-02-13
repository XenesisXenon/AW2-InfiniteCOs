;KanbeiCopt.asm
;Kanbei - CO Power Table
;Starts at 0x084A0090
	;CO Fullbody Graphic Pointer (+0)
	.dw 0x085D3D68
	
	;CO Name Graphic Pointer (+4)
	.dw 0x080F5848
	
	;CO Palette (+8)
	.dw 0x080E4A00
	
	;Text Box Face Neutral Pointer (+12)
	.dw 0x080E9184
	
	;Text Box Face Happy Pointer (+16)
	.dw 0x080ED7F8
	
	;Text Box Face Sad Pointer (+20)
	.dw 0x080F1F20
	
	;Large Partial Face Pointer (+24)
	.dw 0x080E6538
	
	;CO Power Animation Graphic (+28)
	.db 0
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
	.dh 171
	.dh 172
	
	;Animation Graphic ID 1 (SCOP) (+48)
	.db 7
	.db 7
	
	;Padding
	.dh 0x0
	
	;Animation Check - SCOP (+52)
	.dw COPCheckAllUnits+1

	;Animation Effect - SCOP (+56)
	.dw COPEffectNone+1

	;Standard SCOP Type (+60)
	.dw COPowerTypeStandard+1

	;Sound Effect (SCOP)
	.dh 503
	.dh 504
;Blank Line
