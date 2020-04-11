;Common Definitions

;Maximum Number of Commanding Officers
MaxCOId equ 71
Total_CO_AW2 equ 19
Total_CO_AW1 equ 12
Total_CO_AW3 equ 27
Total_CO_SFW equ 3
Total_CO_CCO equ 5

IsSad 	equ (MaxCOID+1)*2
IsHappy equ MaxCOID+1

;CO List
CONell		equ 0
COAndy		equ 1
COMax		equ 2
COOlaf		equ 3
COSami		equ 4
COGrit		equ 5
COKanbei	equ 6
COSonja		equ 7
COEagle		equ 8
CODrake		equ 9
COSturm		equ 10
COFlak		equ 11
COLash		equ 12
COAdder		equ 13
COHawke		equ 14
COHachi		equ 15
COColin		equ 16
COJess		equ 17
COSensei	equ 18

COSelect	equ 0xFF

COOrangeTroop	equ 19
COBlueTroop	equ 20
COYellowTroop	equ 21
COGreenTroop	equ 22
COBlackTroop	equ 23

;First Additional CO is 24
COAWDSJake	equ 24
COAWDSRachel	equ 25
COAWDSSasha 	equ 26
COAWDSJavier 	equ 27
COAWDSGrimm	equ 28
COAWDSJugger 	equ 29
COAWDSKoal 	equ 30
COAWDSKindle 	equ 31
COAWDSVonbolt	equ 32
COAWDSNell	equ 33
COAWDSAndy	equ 34
COAWDSMax	equ 35
COAWDSSami	equ 36
COAWDSHachi	equ 37
COAWDSOlaf	equ 38
COAWDSGrit	equ 39
COAWDSColin	equ 40
COAWDSKanbei	equ 41
COAWDSSonja	equ 42
COAWDSSensei	equ 43
COAWDSEagle	equ 44
COAWDSDrake	equ 45
COAWDSJess	equ 46
COAWDSFlak	equ 47
COAWDSLash	equ 48
COAWDSAdder	equ 49
COAWDSHawke	equ 50

COAW1Sturm 	equ 51
COAW1SturmVs 	equ 52
COAW1Nell	equ 53
COAW1Andy	equ 54
COAW1Max	equ 55
COAW1Sami	equ 56
COAW1Olaf	equ 57
COAW1Grit	equ 58
COAW1Kanbei	equ 59
COAW1Sonja	equ 60
COAW1Eagle	equ 61
COAW1Drake	equ 62

COSFWCaroline	equ 63
COSFWBillygates equ 64
COSFWYamamoto	equ 65

COCCOVenomAdder equ 66
COCCOEpoch	equ 67
COCCOWalter	equ 68
;COCCOZed	equ 69
COCCOEliwood	equ 70
COCCONergal	equ 71

;Power States
COMode_Daily	equ 0
COMode_Power	equ 1
COMode_Super	equ 2

;Special Abilities Bit Matrix
SpecialHiddenHP				equ 0x1
SpecialCityDeploy 			equ 0x2
SpecialPreEmptiveCounter 		equ 0x4
SpecialPiercingVision 			equ 0x8

SpecialDoubleTerrainStars 		equ 0x20
SpecialTerrainGivesFirepower		equ 0x40
SpecialAerialFuelSaver 			equ 0x80

;Custom Abilities in the Bit Matrix
SpecialDaysIntoFirepower		equ 0x100
SpecialDaysIntoFirepower2		equ 0x200
SpecialDaysIntoFirepower3		equ 0x400
SpecialViewAccurateHP			equ 0x800
SpecialHideAllHP			equ 0x1000
SpecialDisableSCOP			equ 0x2000
SpecialTowerTriple			equ 0x4000
SpecialTowerDouble			equ 0x8000
SpecialTowerDefence			equ 0x10000
Special_CO_UniqueUnitBoost		equ 0x20000
Special_CO_Slayer			equ 0x40000
Special_CO_DuplicateUnitBoost		equ 0x80000
Special_CO_ArmySizeBoost		equ 0x100000
Special_CO_HPHalvingAttack		equ 0x200000

;Offsets for the CO Data Table
Gather_CO_Name				equ 0
Gather_CO_Music				equ 4
Gather_CO_Snowbringer			equ 6
Gather_CO_Rainbringer			equ 8
Gather_CO_GameID			equ 10
Gather_CO_PowerStars			equ 12
Gather_CO_SuperStars			equ 16
Gather_CO_ArmyStyle			equ 20
Gather_CO_PropertyStyle			equ 21
Gather_CO_ArmyColour			equ 22
Gather_CO_AICOPowerThreshold		equ 23
Gather_CO_AICOPowerChance		equ 24
Gather_CO_AICOPowerActivateASM		equ 28
Gather_CO_PowerQuote1			equ 32
Gather_CO_PowerQuote2			equ 34
Gather_CO_PowerQuote3			equ 36
Gather_CO_PowerQuote4			equ 38
Gather_CO_PowerQuote5			equ 40
Gather_CO_PowerQuote6			equ 42
Gather_CO_ProfileDesc1			equ 44
Gather_CO_ProfileDesc2			equ 46
Gather_CO_ProfileDesc3			equ 48
Gather_CO_ProfileDesc4			equ 50
Gather_CO_VictoryQuote			equ 52
Gather_CO_PowerName			equ 0x38
Gather_CO_PowerPointer			equ 0x3C
Gather_CO_SpecialEffectsLow		equ 0x40
Gather_CO_SpecialEffectsHigh		equ 0x42
Gather_CO_SpecialEffectsWord		equ 0x40
Gather_CO_VisionBonus			equ 0x44
Gather_CO_Luck				equ 0x46
Gather_CO_NegativeLuck			equ 0x48
Gather_CO_CounterattackBonus		equ 0x4A
Gather_CO_UnitPriceModifier		equ 0x4C
Gather_CO_CaptureModifier		equ 0x4E
Gather_CO_RepairBonus			equ 0x5E
Gather_CO_IncomeBonus			equ 0x60
Gather_CO_DirectDefenceBonus 		equ 0x62
Gather_CO_IndirectDefenceBonus 		equ 0x64
Gather_CO_TerrainStarReduction		equ 0x66
Gather_CO_TerrainPointer		equ 0x68
Gather_CO_DamageToFunds 		equ 0x6C
Gather_CO_UnitTerrainStarBonus		equ 0x6E
Gather_CO_FlatCaptureBonus		equ 0x70
Gather_CO_FlatIncome			equ 0x72
Gather_CO_WeatherFirepowerBoost		equ 0x74
Gather_CO_TerrainFirepowerMultiplier 	equ 0x76
Gather_CO_DamageReflection		equ 0x78

;Special Ability Numbers
COStat_DayBasedFirepower_Scale		equ	50	;This is the numerator for the number of days. 100 is 1 day = 1 Atk
COStat_DayBasedFirepower_COP		equ	2	;How much to multiply for Power
COStat_DayBasedFirepower_SCOP		equ	3	;How much to multiply for Super
