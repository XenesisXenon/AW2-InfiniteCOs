;HawkeCopt.asm
;Hawke - CO Power Table
;Starts at 0x084A0090
	;CO Fullbody Graphic Pointer (+0)
	.dw 0x085D3DA8
	
	;CO Name Graphic Pointer (+4)
	.dw 0x080F5DE4
	
	;CO Palette (+8)
	.dw 0x080E5200
	
	;Text Box Face Neutral Pointer (+12)
	.dw 0x080EAA04
	
	;Text Box Face Happy Pointer (+16)
	.dw 0x080EF0F8
	
	;Text Box Face Sad Pointer (+20)
	.dw 0x080F37EC
	
	;Large Partial Face Pointer (+24)
	.dw 0x080E7138
	
	;CO Power Animation Graphic (+28)
	.db 6
	.db 4
	
	;Padding
	.dh 0x0
	
	;Animation Check - COP (+32)
	.dw COPCheckAllUnits+1
	
	;Animation Effect - COP (+36)
	.dw COPEffectNone+1
	
	;Standard COP Type (+40)
	.dw COPowerTypeStandard+1
	
	;Sound Effect (COP) (+44)
	.dh 189
	.dh 190
	
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
