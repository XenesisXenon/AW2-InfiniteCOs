;Lash.asm
;Lash's Stats and abilities for compiling

;ID for Name
	.dw 2595
	
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
	.dh 2977
	.dh 2978
	.dh 2979
	.dh 2980
	.dh 2981
	.dh 2982

;CO Dossier Strings
	.dh 2469
	.dh 2470
	.dh 2471
	.dh 2472
	
;Victory Quote String
	.dw 2901
	
;*** Day to Day Abilities ***

;Unknown
	.dw 0
	
;Daily Ability Pointer
	.dw 0

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
	.dh 0
	
;Damage Reflection Percentage
	.dh 0	
	
;Unused Slot
	.dh 0
	
;*** CO Power Abilities ***

;CO Power Name String
	.dw 2304
	
;CO Power Pointer and Effects
	.dw 0x080443D9
	
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
	.dw MovementChartSnow
	
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
	.dh 0
	
;Damage Reflection Percentage
	.dh 0	
	
;Unused Slot
	.dh 0

;*** Super CO Power Abilities ***	
	
;CO Power Name String
	.dw 2305
	
;CO Power Pointer and Effects
	.dw 0x080443D9
	
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
	.dw MovementChartSnow
	
;Movement Chart - Rainy Weather
	.dw MovementChartPerfect
	
;Super CO Power Music
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
	.dh 0
	
;Damage Reflection Percentage
	.dh 0	
	
;Unused Slot
	.dh 0

;Blank Line	
