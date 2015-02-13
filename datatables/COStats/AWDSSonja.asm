;AWDSSonja.asm

;ID for Name
	.dw ScriptAWDSSonja
	
;Song ID to play for this CO
	.dh MusicSonjaTheme
	
;Snowbringer Percentage
	.dh 0
	
;Rainbringer Percentage
	.dh 0
	
;Padding
	.dh 0
	
;CO Power Stars
	.dw 2
	
;Super CO Power Stars
	.dw 5
	
;Map Sprites of This Army
	.db ArmyYellowComet
	
;HQ Style for This Army	
	.db ArmyYellowComet
	
;Default Army Colour
	.db ArmyYellowComet
	
;CO Power Star Range
	.db 25
	
;CO Power Activation Percentage
	.dw 95
	
;AI CO Power Activation Rules
	.dw AIActivateStartOfTurn+1
	
;CO Power Quotes Strings
	.dh ScriptAWDSSonja+8
	.dh ScriptAWDSSonja+9
	.dh ScriptAWDSSonja+10
	.dh ScriptAWDSSonja+11
	.dh ScriptAWDSSonja+12
	.dh ScriptAWDSSonja+13

;CO Dossier Strings
	.dh ScriptAWDSSonja+3
	.dh ScriptAWDSSonja+4
	.dh ScriptAWDSSonja+5
	.dh ScriptAWDSSonja+6
	
;Victory Quote String
	.dw ScriptAWDSSonja+7
	
;Unknown
	.dw 0
	
;Daily Ability Pointer
	.dw 0
	
;*** Day to Day Abilities ***

;Special Effects
	.dw SpecialHiddenHP
	
;Vision Boost
	.dh 1

;Luck Boost
	.dh 10
	
;Negative Luck Penalty
	.dh 5
	
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
	
;Enemy Terrain Star Reduction
	.dh 1
	
;Terrain Boost Pointer
	.dw 0
	
;Damage to Funds Rate
	.dh 0
	
;Terrain Star Bonus
	.db 0

;Terrain Star Bonus Class
	.db 0
	
;Direct Capture Bonus
	.dh 0
	
;Flat Income Bonus (x100)
	.dh 0
	
;Snow Firepower Bonus
	.db 0

;Rain Firepower Bonus 
	.db 0
	
;Terrain Power Multiplier	
	.dh 0
	
;Damage Reflection Percentage
	.dh 0	
	
;Unused Slot
	.dh 0
	
;*** CO Power Abilities ***

;CO Power Name String
	.dh ScriptAWDSSonja+1
	
;Padding
	.dh 0
	
;CO Power Pointer and Effects
	.dw COPowerEnhancedVisionFade+1
	
;Special Effects
	.dw SpecialHiddenHP+SpecialPiercingVision
	
;Vision Boost
	.dh 2

;Luck Boost
	.dh 10
	
;Negative Luck Penalty
	.dh 5
	
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
	.dh MusicPower
	
;Repair Bonus
	.dh 0
	
;Income Bonus
	.dh 0
	
;Direct Defence Bonus
	.dh 0
	
;Indirect Defence Bonus
	.dh 0
	
;Enemy Terrain Star Reduction
	.dh 2
	
;Terrain Boost Pointer
	.dw 0
	
;Damage to Funds Rate
	.dh 0
	
;Terrain Star Bonus
	.db 0

;Terrain Star Bonus Class
	.db 0
	
;Direct Capture Bonus
	.dh 0
	
;Flat Income Bonus (x100)
	.dh 0
	
;Snow Firepower Bonus
	.db 0

;Rain Firepower Bonus 
	.db 0
	
;Terrain Power Multiplier	
	.dh 0
	
;Damage Reflection Percentage
	.dh 0	
	
;Unused Slot
	.dh 0

;*** Super CO Power Abilities ***	
	
;CO Power Name String
	.dh ScriptAWDSSonja+2
	
;Padding
	.dh 0
	
;CO Power Pointer and Effects
	.dw COPowerEnhancedVisionFade+1
	
;Special Effects
	.dw SpecialHiddenHP+SpecialPiercingVision+SpecialPreEmptiveCounter
	
;Vision Boost
	.dh 2

;Luck Boost
	.dh 10
	
;Negative Luck Penalty
	.dh 5
	
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
	.dh MusicSuper
	
;Repair Bonus
	.dh 0
	
;Income Bonus
	.dh 0
	
;Direct Defence Bonus
	.dh 0
	
;Indirect Defence Bonus
	.dh 0
	
;Enemy Terrain Star Reduction
	.dh 3
	
;Terrain Boost Pointer
	.dw 0
	
;Damage to Funds Rate
	.dh 0
	
;Terrain Star Bonus
	.db 0

;Terrain Star Bonus Class
	.db 0
	
;Direct Capture Bonus
	.dh 0
	
;Flat Income Bonus (x100)
	.dh 0
	
;Snow Firepower Bonus
	.db 0

;Rain Firepower Bonus 
	.db 0
	
;Terrain Power Multiplier	
	.dh 0
	
;Damage Reflection Percentage
	.dh 0	
	
;Unused Slot
	.dh 0

;Blank Line
