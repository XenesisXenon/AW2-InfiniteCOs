;Lists of damage/calc routines

List_FirepowerCalculations:
	.dw	FirepowerBoost_Standard+1
	.dw	FirepowerBoost_TerrainStars+1
	.dw	FirepowerBoost_TerrainTiles+1
	.dw	FirepowerBoost_Weather+1
	.dw	FirepowerBoost_DayBased+1
	.dw	FirepowerBoost_TowerProperty+1
	.dw	FirepowerBoost_ForceRank+1
	.dw	FirepowerBoost_UniqueUnit+1
	.dw	FirepowerBoost_DuplicateUnit+1
	.dw	FirepowerBoost_Slayer+1
	.dw	0x0

List_DefenceCalculations:
	.dw	DefenceBoost_Standard+1
	.dw	DefenceBoost_DirectCombat+1
	.dw	DefenceBoost_RangedCombat+1
	.dw	DefenceBoost_TowerProperty+1
	.dw	DefenceBoost_ForceRank+1
	.dw	DefenceBoost_UniqueUnit+1
	.dw	DefenceBoost_ArmySize+1
	.dw	0x0

List_CODossier_FirepowerCalculations:
	.dw	FirepowerBoost_Standard+1
	.dw	FirepowerBoost_Weather+1
	.dw	FirepowerBoost_DayBased+1
	.dw	FirepowerBoost_TowerProperty+1
	.dw	FirepowerBoost_UniqueUnit+1
	.dw	FirepowerBoost_DuplicateUnit+1
	.dw	FirepowerBoost_Dynamic+1
	.dw	0x0
	
List_CODossier_DefenceCalculations:
	.dw	DefenceBoost_Standard+1
	.dw	DefenceBoost_TowerProperty+1
	.dw	DefenceBoost_ForceRank+1
	.dw	DefenceBoost_UniqueUnit+1
	.dw	DefenceBoost_ArmySize+1
	.dw	DefenceBoost_Dynamic+1
	.dw	0x0
