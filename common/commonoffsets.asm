;Common Offsets
;commonoffsets.asm
;Offsets that are used globally by AW2

MaxCOId equ 68


BaseMapPointer 		equ 0x08499590
BaseUnitPointer 	equ 0x08499598
BaseUnitMemory		equ 0x08499594
BasePlayerMemory 	equ 0x020232C0
CurrentPlayerTurn 	equ 0x030033EC
BaseUnitOffset 		equ 0x02022390
CurrentTileset 		equ 0x03003FEB
CurrentWeather		equ 0x03003FEC
CurrentFogOfWar		equ 0x03003FCD
CurrentGameOptions 	equ 0x03003FC0
CurrentChanceWeather 	equ 0x03004490
CurrentFrameCounter 	equ 0x03004008
CurrentGameDay		equ 0x03004080
CurrentGameplayMode	equ 0x03003FC1
CurrentMapNumber 	equ 0x03003FC2
CurrentGameMode		equ 0x03003FC1
CurrentAIUnitPhase	equ 0x03004770
CurrentMapData		equ 0x0201F882
UnlockedCOMemory	equ 0x0202805A
TileBG0Buffer		equ 0x0201BC50
TileBG1Buffer		equ 0x0201C450
TileBG2Buffer		equ 0x0201CC50
TileBG3Buffer		equ 0x0201D450
CPUModeThumb		equ 0x1

;Custom Offsets
CustomMeteorBuffer	equ 0x0201FD80

;Macros and Labels
BooleanOn 	equ 0x1
BooleanOff 	equ 0x0

;CO List
CONell			equ 0
COAndy			equ 1
COMax			equ 2
COOlaf			equ 3
COSami			equ 4
COGrit			equ 5
COKanbei		equ 6
COSonja			equ 7
COEagle			equ 8
CODrake			equ 9
COSturm			equ 10
COFlak			equ 11
COLash			equ 12
COAdder			equ 13
COHawke			equ 14
COHachi			equ 15
COColin			equ 16
COJess			equ 17
COSensei		equ 18
COSelect		equ 0xFF

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

;Army Types
ArmyOrangeStar 	equ 0x1
ArmyBlueMoon 	equ 0x2
ArmyGreenEarth 	equ 0x3
ArmyYellowComet equ 0x4
ArmyBlackHole 	equ 0x5

;Current Weather
CurrentWeatherSnow equ 0x1
CurrentWeatherRain equ 0x2
CurrentWeatherSand equ 0x3

;Built By
BuildBase 	equ 0x01
BuildPort 	equ 0x20
BuildAirport 	equ 0x10

;AI Unit Types
AICaptureUnit 		equ 0x1
AICarryFootSoldiers 	equ 0x2
AIUnknownType 		equ 0x3
AIIndirectCombat 	equ 0x4
AIDirectCombat 		equ 0x5
AICarryLandUnits 	equ 0x6
AIUnknownType2 		equ 0x7

;Movement Types
MoveFoot 		equ 0x0
MoveMech 		equ 0x1
MoveTread 		equ 0x2
MoveTyre 		equ 0x3
MoveAir 		equ 0x4
MoveShip 		equ 0x5
MoveNavalTransport 	equ 0x6

;Unit Classes
ClassSoldier 	equ 0x0
ClassVehicle 	equ 0x1
ClassPlane 	equ 0x2
ClassCopter	equ 0x3
ClassNaval 	equ 0x4

;Map Cases
CaseCampaign	equ 0x1
CaseClassic	equ 0x2
CaseVersus	equ 0x3
CasePredeployed	equ 0x4
Case3P		equ 0x5
Case4P		equ 0x6
CaseWarRoom	equ 0x7
CaseDesignMaps	equ 0x8

;B-Button Range Displays
BButtonDirect 			equ 0x1
BButtonIndirect 		equ 0x0

;Special Abilities Bit Matrix
SpecialHiddenHP 		equ 0x1
SpecialCityDeploy 		equ 0x2
SpecialPreEmptiveCounter 	equ 0x4
SpecialPiercingVision 		equ 0x8

SpecialDoubleTerrainStars 	equ 0x20
SpecialTerrainGivesFirepower 	equ 0x40
SpecialAerialFuelSaver 		equ 0x80

;Custom Abilities in the Bit Matrix
SpecialDaysIntoFirepower	equ 0x100
SpecialDaysIntoFirepower2	equ 0x200
SpecialDaysIntoFirepower3	equ 0x400
SpecialViewAccurateHP		equ 0x800
SpecialHideAllHP		equ 0x1000
SpecialDisableSCOP		equ 0x2000

;AI Bit Matrix
AITargetGround 		equ 0x04
AITargetAir 		equ 0x01
AITargetSea 		equ 0x02
AITargetSub 		equ 0x08

;Song List
MusicAndyTheme 		equ 0xD1
MusicMaxTheme		equ 0xD2
MusicSamiTheme		equ 0xD9
MusicNellTheme		equ 0xD6
MusicHachiTheme		equ 0x12E

MusicOlafTheme		equ 0xD5
MusicGritTheme		equ 0xCB
MusicColinTheme		equ 0x193

MusicKanbeiTheme	equ 0xD3
MusicSonjaTheme		equ 0xD4
MusicSenseiTheme	equ 0x12F

MusicEagleTheme		equ 0xC9
MusicDrakeTheme		equ 0xCA
MusicJessTheme		equ 0x19E

MusicFlakTheme		equ 0x19C
MusicLashTheme		equ 0x12D
MusicAdderTheme		equ 0x191
MusicHawkeTheme		equ 0x192
MusicSturmTheme		equ 0xDB

MusicPower		equ 0x1A4
MusicSuper		equ 0x19A
MusicBlackPower		equ 0x1A3
MusicBlackSuper		equ 0x199

MusicOrangeStar		equ 0x19D
MusicBlueMoon		equ 0x1A7
MusicGreenEarth		equ 0x1A5
MusicYellowComet	equ 0x1A6
MusicBlackHole		equ 0x19B
MusicFinal		equ 0xDC

MusicOrangeMission	equ 0x194
MusicBlueMission	equ 0x197
MusicGreenMission	equ 0x195
MusicYellowMission	equ 0x196
MusicBlackMission	equ 0x198
MusicFinalMission	equ 0x19F

MusicWarsWorldNews	equ 0x190
MusicMapEditor		equ 0xD8
MusicPrologue		equ 0x1A9
MusicBattleFanfare	equ 0x1AA
MusicVictoryFanfare	equ 0x1A0
MusicBattleSuccess	equ 0x1A1
MusicFactorySuccess	equ 0x1A2

;Expansion Offsets
GatherCOPowerName			equ 0x38
GatherCOPowerPointer			equ 0x3C
GatherSpecialEffectsLow			equ 0x40
GatherSpecialEffectsHigh		equ 0x42
GatherSpecialEffectsWord		equ 0x40
GatherVisionBonus			equ 0x44
GatherLuck				equ 0x46
GatherNegativeLuck			equ 0x48
GatherCounterattackBonus		equ 0x4A
GatherUnitPriceModifier			equ 0x4C
GatherCaptureModifier			equ 0x4E
GatherRepairBonus			equ 0x5E
GatherIncomeBonus			equ 0x60
GatherDirectDefenceBonus 		equ 0x62
GatherIndirectDefenceBonus 		equ 0x64
GatherTerrainStarReduction		equ 0x66
GatherTerrainPointer			equ 0x68
GatherDamageToFunds 			equ 0x6C
GatherUnitCOTerrainBonus		equ 0x6E
GatherCaptureBonus			equ 0x70
GatherFlatIncome			equ 0x72
GatherWeatherFirepowerBoost		equ 0x74
GatherTerrainFirepowerMultiplier 	equ 0x76
GatherDamageReflectionPercentage	equ 0x78

;Unit Data
GatherUnitMovement		equ 9
GatherUnitClass			equ 24

;Blank Line
