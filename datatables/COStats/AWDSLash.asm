;AWDSLash.asm

;ID for Name
	.dw ScriptAWDSLash
	
;Song ID to play for this CO
	.dh MusicLashTheme
	
;Snowbringer Percentage
	.dh 0
	
;Rainbringer Percentage
	.dh 0
	
;Padding
	.dh 0
	
;CO Power Stars
	.dw 4
	
;Super CO Power Stars
	.dw 7
	
;Map Sprites of This Army
	.db ArmyBlackHole
	
;HQ Style for This Army	
	.db ArmyBlackHole
	
;Default Army Colour
	.db ArmyBlackHole
	
;CO Power Star Range
	.db 25
	
;CO Power Activation Percentage
	.dw 95
	
;AI CO Power Activation Rules
	.dw AIActivateStartOfTurn+1
	
;CO Power Quotes Strings
	.dh ScriptAWDSLash+8
	.dh ScriptAWDSLash+9
	.dh ScriptAWDSLash+10
	.dh ScriptAWDSLash+11
	.dh ScriptAWDSLash+12
	.dh ScriptAWDSLash+13

;CO Dossier Strings
	.dh ScriptAWDSLash+3
	.dh ScriptAWDSLash+4
	.dh ScriptAWDSLash+5
	.dh ScriptAWDSLash+6
	
;Victory Quote String
	.dw ScriptAWDSLash+7
	
;Unknown
	.dw 0
	
;Daily Ability Pointer
	.dw 0
	
;*** Day to Day Abilities ***

;Special Effects
	.dw SpecialTerrainGivesFirepower
	
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
	.dh 5
	
;Damage Reflection Percentage
	.dh 0	
	
;Unused Slot
	.dh 0
	
;*** CO Power Abilities ***

;CO Power Name String
	.dh ScriptAWDSLash+1
	
;Padding
	.dh 0
	
;CO Power Pointer and Effects
	.dw COPowerDefault+1
	
;Special Effects
	.dw SpecialTerrainGivesFirepower
	
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
	.dw MovementChartPerfect
	
;Movement Chart - Snowy Weather
	.dw MovementChartPerfect
	
;Movement Chart - Rainy Weather
	.dw MovementChartPerfect
	
;CO Power Music
	.dh MusicBlackPower
	
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
	.dh 5
	
;Damage Reflection Percentage
	.dh 0	
	
;Unused Slot
	.dh 0

;*** Super CO Power Abilities ***	
	
;CO Power Name String
	.dh ScriptAWDSLash+2
	
;Padding
	.dh 0
	
;CO Power Pointer and Effects
	.dw COPowerDefault+1
	
;Special Effects
	.dw SpecialTerrainGivesFirepower+SpecialDoubleTerrainStars
	
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
	.dw MovementChartPerfect
	
;Movement Chart - Snowy Weather
	.dw MovementChartPerfect
	
;Movement Chart - Rainy Weather
	.dw MovementChartPerfect
	
;CO Power Music
	.dh MusicBlackSuper
	
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
	.dh 5
	
;Damage Reflection Percentage
	.dh 0	
	
;Unused Slot
	.dh 0

;Blank Line
