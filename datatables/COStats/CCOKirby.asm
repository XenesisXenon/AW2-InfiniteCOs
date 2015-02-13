;CCOKirby.asm

;ID for Name
	.dw ScriptCCOKirby
	
;Song ID to play for this CO
	.dh ImportMusicKirbyClassicLevel
	
;Snowbringer Percentage
	.dh 0
	
;Rainbringer Percentage
	.dh 0
	
;Padding
	.dh 0
	
;CO Power Stars
	.dw 3
	
;Super CO Power Stars
	.dw 6
	
;Map Sprites of This Army
	.db ArmyOrangeStar
	
;HQ Style for This Army	
	.db ArmyOrangeStar
	
;Default Army Colour
	.db ArmyOrangeStar
	
;CO Power Star Range
	.db 25
	
;CO Power Activation Percentage
	.dw 95
	
;AI CO Power Activation Rules
	.dw AIActivateStartOfTurn+1
	
;CO Power Quotes Strings
	.dh ScriptCCOKirby+8
	.dh ScriptCCOKirby+9
	.dh ScriptCCOKirby+10
	.dh ScriptCCOKirby+11
	.dh ScriptCCOKirby+12
	.dh ScriptCCOKirby+13

;CO Dossier Strings
	.dh ScriptCCOKirby+3
	.dh ScriptCCOKirby+4
	.dh ScriptCCOKirby+5
	.dh ScriptCCOKirby+6
	
;Victory Quote String
	.dw ScriptCCOKirby+7
	
;Unknown
	.dw 0
	
;Daily Ability Pointer
	.dw 0
	
;*** Day to Day Abilities ***

;Special Effects
	.dw 0
	
;Vision Boost
	.dh 0

;Luck Boost
	.dh 10
	
;Negative Luck Penalty
	.dh 0
	
;Counterattack Boost
	.dh 0
	
;Unit Price Adjustment
	.dh 0
	
;Capture Boost
	.dh 0
	
;Movement Chart - Clear Weather
	.dw MovementChartClear
	
;Movement Chart - Snowy Weather
	.dw MovementChartSnow
	
;Movement Chart - Rainy Weather
	.dw MovementChartRain
	
;Padding
	.dh 0
	
;Repair Bonus
	.dh 0
	
;Income Bonus
	.dh 0
	
;Direct Defence Bonus
	.dh 0
	
;Indirect Defence Bonus
	.dh 0
	
;Terrain Star Reduction
	.dh 0
	
;Terrain Boost Pointer
	.dw 0
	
;Irrelevant Stuff
	.dw 0,0,0,0
	
;*** CO Power Abilities ***

;CO Power Name String
	.dw ScriptCCOKirby+1
	
;CO Power Pointer and Effects
	.dw COPowerCopyCOPower+1
	
;Special Effects
	.dw 0
	
;Vision Boost
	.dh 0

;Luck Boost
	.dh 10
	
;Negative Luck Penalty
	.dh 0
	
;Counterattack Boost
	.dh 0
	
;Unit Price Adjustment
	.dh 0
	
;Capture Boost
	.dh 0
	
;Movement Chart - Clear Weather
	.dw MovementChartClear
	
;Movement Chart - Snowy Weather
	.dw MovementChartSnow
	
;Movement Chart - Rainy Weather
	.dw MovementChartRain

;CO Power Music
	.dh ImportMusicKirbyBossBattle
	
;Repair Bonus
	.dh 0
	
;Income Bonus
	.dh 0
	
;Direct Defence Bonus
	.dh 0
	
;Indirect Defence Bonus
	.dh 0
	
;Terrain Star Reduction
	.dh 0
	
;Terrain Boost Pointer	
	.dw 0
	
;Irrelevant Stuff
	.dw 0,0,0,0

;*** Super CO Power Abilities ***	
	
;CO Power Name String
	.dw ScriptCCOKirby+2
	
;CO Power Pointer and Effects
	.dw COPowerCopySuperCOPower+1
	
;Special Effects
	.dw 0
	
;Vision Boost
	.dh 0

;Luck Boost
	.dh 10
	
;Negative Luck Penalty
	.dh 0
	
;Counterattack Boost
	.dh 0
	
;Unit Price Adjustment
	.dh 0
	
;Capture Boost
	.dh 0
	
;Movement Chart - Clear Weather
	.dw MovementChartClear
	
;Movement Chart - Snowy Weather
	.dw MovementChartSnow
	
;Movement Chart - Rainy Weather
	.dw MovementChartRain
	
;Super CO Power Music
	.dh ImportMusicKirbyDededeBattle
	
;Repair Bonus
	.dh 0
	
;Income Bonus
	.dh 0
	
;Direct Defence Bonus
	.dh 0
	
;Indirect Defence Bonus
	.dh 0
	
;Terrain Star Reduction
	.dh 0
	
;Terrain Boost Pointer
	.dw 0
	
;Irrelevant Stuff
	.dw 0,0,0,0

;Blank Line
