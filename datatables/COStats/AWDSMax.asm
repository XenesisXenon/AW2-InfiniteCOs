;AWDSMax.asm

;ID for Name
	.dw ScriptAWDSMax
	
;Song ID to play for this CO
	.dh MusicOrangeStar
	
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
	.dh ScriptAWDSMax+8
	.dh ScriptAWDSMax+9
	.dh ScriptAWDSMax+10
	.dh ScriptAWDSMax+11
	.dh ScriptAWDSMax+12
	.dh ScriptAWDSMax+13

;CO Dossier Strings
	.dh ScriptAWDSMax+3
	.dh ScriptAWDSMax+4
	.dh ScriptAWDSMax+5
	.dh ScriptAWDSMax+6
	
;Victory Quote String
	.dw ScriptAWDSMax+7
	
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
	
;Weather to get Firepower Bonus
	.db CurrentWeatherSnow

;Weather Firepower Bonus 
	.db 0
	
;Unused Slot 1	
	.dh 0
	
;Irrelevant Stuff
	.dw 0
	
;*** CO Power Abilities ***

;CO Power Name String
	.dh ScriptAWDSMax+1
	
;Padding
	.dh 0
	
;CO Power Pointer and Effects
	.dw COPowerDefault+1
	
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
	.dh ScriptAWDSMax+2
	
;Padding
	.dh 0
	
;CO Power Pointer and Effects
	.dw COPowerDefault+1
	
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
