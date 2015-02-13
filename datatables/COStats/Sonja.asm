;Sonja.asm
;Sonja's Stats and abilities for compiling

;ID for Name
	.dw 2590
	
;Song ID to play for this CO
	.dh MusicSonjaTheme
	
;Snowbringer Percentage
	.dh 0
	
;Rainbringer Percentage
	.dh 0
	
;Padding
	.dh 0
	
;CO Power Stars
	.dw 3
	
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
	.dh 2947
	.dh 2948
	.dh 2949
	.dh 2950
	.dh 2951
	.dh 2952

;CO Dossier Strings
	.dh 2449
	.dh 2450
	.dh 2451
	.dh 2452
	
;Victory Quote String
	.dw 2896

;*** Day to Day Abilities ***
	
;Unknown
	.dw 0
	
;Daily Ability Pointer
	.dw 0
	
;Special Effects
	.dw SpecialHiddenHP
	
;Vision Boost
	.dh 1

;Luck Boost
	.dh 10
	
;Negative Luck Penalty
	.dh 10
	
;Counterattack Boost
	.dh 50
	
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
	.dw 2292
	
;CO Power Pointer and Effects
	.dw COPowerEnhancedVisionFade+1
	
;Special Effects
	.dw SpecialHiddenHP+SpecialPiercingVision
	
;Vision Boost
	.dh 2

;Luck Boost
	.dh 10
	
;Negative Luck Penalty
	.dh 10
	
;Counterattack Boost
	.dh 50
	
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
	.dw 2293
	
;CO Power Pointer and Effects
	.dw COPowerEnhancedVisionFade+1
	
;Special Effects
	.dw SpecialHiddenHP+SpecialPiercingVision+SpecialPreEmptiveCounter
	
;Vision Boost
	.dh 0

;Luck Boost
	.dh 10
	
;Negative Luck Penalty
	.dh 10
	
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
