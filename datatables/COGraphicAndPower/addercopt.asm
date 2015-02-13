;AdderCopt.asm
;Adder - CO Power Table
;Starts at 0x084A0090
	;CO Fullbody Graphic Pointer (+0)
	.dw 0x085D3DA0
	
	;CO Name Graphic Pointer (+4)
	.dw 0x080F5D00
	
	;CO Palette (+8)
	.dw 0x080E5100
	
	;Text Box Face Neutral Pointer (+12)
	.dw 0x080EA704
	
	;Text Box Face Happy Pointer (+16)
	.dw 0x080EEDF4
	
	;Text Box Face Sad Pointer (+20)
	.dw 0x080F34F0
	
	;Large Partial Face Pointer (+24)
	.dw 0x080E6FB8
	
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
	.dh 180
	.dh 180
	
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
	.dh 500
	.dh 501
;Blank Line
