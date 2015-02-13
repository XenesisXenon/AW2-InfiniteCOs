;AW1Eagle.asm

;ID for Name
	.dw ScriptAW1Eagle
	
;Song ID to play for this CO
	.dh MusicEagleTheme
	
;Snowbringer Percentage
	.dh 0
	
;Rainbringer Percentage
	.dh 0
	
;Padding
	.dh 0
	
;CO Power Stars
	.dw 0
	
;Super CO Power Stars
	.dw 6
	
;Map Sprites of This Army
	.db ArmyGreenEarth
	
;HQ Style for This Army	
	.db ArmyGreenEarth
	
;Default Army Colour
	.db ArmyGreenEarth
	
;CO Power Star Range
	.db 25
	
;CO Power Activation Percentage
	.dw 95
	
;AI CO Power Activation Rules
	.dw AIActivateCOPStartSCOPEnd+1
	
;CO Power Quotes Strings
	.dh ScriptAW1Eagle+8
	.dh ScriptAW1Eagle+9
	.dh ScriptAW1Eagle+10
	.dh ScriptAW1Eagle+11
	.dh ScriptAW1Eagle+12
	.dh ScriptAW1Eagle+13

;CO Dossier Strings
	.dh ScriptAW1Eagle+3
	.dh ScriptAW1Eagle+4
	.dh ScriptAW1Eagle+5
	.dh ScriptAW1Eagle+6
	
;Victory Quote String
	.dw ScriptAW1Eagle+7
	
;Unknown
	.dw 0
	
;Daily Ability Pointer
	.dw 0
	
;*** Day to Day Abilities ***

;Special Effects
	.dw SpecialAerialFuelSaver
	
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
	
;Enemy Terrain Star Reduction
	.dh 0
	
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
	.dw ScriptAW1Eagle+1
	
;CO Power Pointer and Effects
	.dw COPowerDefault+1
	
;Special Effects
	.dw SpecialAerialFuelSaver
	
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
	.dh MusicEagleTheme
	
;Repair Bonus
	.dh 0
	
;Income Bonus
	.dh 0
	
;Direct Defence Bonus
	.dh 0
	
;Indirect Defence Bonus
	.dh 0
	
;Enemy Terrain Star Reduction
	.dh 0
	
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
	.dw ScriptAW1Eagle+2
	
;CO Power Pointer and Effects
	.dw COPowerDefault+1
	
;Special Effects
	.dw SpecialAerialFuelSaver
	
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
	.dh MusicEagleTheme
	
;Repair Bonus
	.dh 0
	
;Income Bonus
	.dh 0
	
;Direct Defence Bonus
	.dh 0
	
;Indirect Defence Bonus
	.dh 0
	
;Enemy Terrain Star Reduction
	.dh 0
	
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
