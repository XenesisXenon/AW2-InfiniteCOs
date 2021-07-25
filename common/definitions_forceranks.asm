;definitions_forceranks.asm
	;Assign Force Rank Slot Totals
	ForceRank_Slot_Total	equ	4

	;Assign an ID to each Force Rank
	;X = Implemented
	ForceRank_Bruiser		equ	0x1	;X
	ForceRank_Brawler		equ	0x2	;X
	ForceRank_Sharpshooter		equ	0x3	;X
	ForceRank_Sniper		equ	0x4	;X
	ForceRank_SlamGuard		equ	0x5	;X
	ForceRank_SlamShield		equ	0x6	;X
	ForceRank_SnipeGuard		equ	0x7	;X
	ForceRank_SnipeShield		equ	0x8	;X
	ForceRank_APCGuard		equ	0x9	;X
	ForceRank_CombatPay		equ	0xA
	ForceRank_Luck			equ	0xB	;X
	ForceRank_Scout			equ	0xC	;X
	ForceRank_EagleEye		equ	0xD	;X
	ForceRank_Mechanic		equ	0xE	;X
	ForceRank_GearHead		equ	0xF	;X
	ForceRank_Invader		equ	0x10	;X
	ForceRank_Conqueror		equ	0x11	;X
	ForceRank_Saleprice		equ	0x12	;X
	ForceRank_FireSale		equ	0x13	;X
	ForceRank_RoadRage		equ	0x14	;X
	ForceRank_Ranger		equ	0x15	;X
	ForceRank_UrbanFighter		equ	0x16	;X
	ForceRank_Mountaineer		equ	0x17	;X
	ForceRank_Seamanship		equ	0x18	;X
	ForceRank_Backstab		equ	0x19	;X
	ForceRank_APCBoost		equ	0x1A	;X
	ForceRank_MissileGuard		equ	0x1B
	ForceRank_CannonGuard		equ	0x1C
	ForceRank_StarPower		equ	0x1D	;X
	ForceRank_PrairieDog		equ	0x1E	;X
	ForceRank_Pathfinder		equ	0x1F	;X
	ForceRank_Sneaky		equ	0x20	;X
	ForceRank_Stealthy		equ	0x21	;X
	ForceRank_Goldrush		equ	0x22	;X
	ForceRank_HighAndDry		equ	0x23	;X
	ForceRank_IceBreaker		equ	0x24	;X
	ForceRank_SandScorpion		equ	0x25	;X
	ForceRank_Mistwalker		equ	0x26
	ForceRank_SoulofHachi		equ	0x27	;X
	ForceRank_TeamWork		equ	0x28	;X
	ForceRank_Synergy		equ	0x29	;X
	ForceRank_Bodyguard		equ	0x2A	;X
;Other Force Ranks
	ForceRank_Softie		equ	0x2B
	ForceRank_GlassEyes		equ	0x2C
	ForceRank_Underpowered		equ	0x2D
	ForceRank_FlatTires		equ	0x2E
	ForceRank_Flimsy		equ	0x2F
	ForceRank_GlassJaw		equ	0x30
	ForceRank_UnusualHat		equ	0x31
	ForceRank_ClassicAPC		equ	0x32
	ForceRank_NullLuck		equ	0x33
	ForceRank_StarDrain		equ	0x34
	ForceRank_Cursed		equ	0x35
	ForceRank_Enflakenator		equ	0x36
	ForceRank_Surrender		equ	0x37
	ForceRank_DrunkDriver		equ	0x38
	ForceRank_Sickly		equ	0x39
	ForceRank_CountryHick		equ	0x3a
	ForceRank_NoSherpa		equ	0x3b
	ForceRank_Seasick		equ	0x3c
	ForceRank_Frostbitten		equ	0x3d
	ForceRank_SoppingWet		equ	0x3e
	ForceRank_SandyEyes		equ	0x3f
	ForceRank_FaceStab		equ	0x40
	ForceRank_LightMist		equ	0x41
	ForceRank_DuctTape		equ	0x42
	ForceRank_Hippy			equ	0x43
	ForceRank_Pacifist		equ	0x44
	ForceRank_IncomeTax		equ	0x45
	ForceRank_TaxHike		equ	0x46
	ForceRank_Reparations		equ	0x47
	ForceRank_Banshee		equ	0x48
	ForceRank_IntelLeak		equ	0x49
	ForceRank_SignalLoss		equ	0x4a
	ForceRank_Stumbler		equ	0x4b
	ForceRank_PurePower		equ	0x4c
	ForceRank_TrueGrit		equ	0x4d
	ForceRank_Revenge		equ	0x4e
	ForceRank_TerrainStar		equ	0x4f
	ForceRank_TowerPower		equ	0x50
	ForceRank_CoverIdentity		equ	0x51
	ForceRank_SpeedDemon		equ	0x52
	ForceRank_RainDance		equ	0x53
	ForceRank_Flurry		equ	0x54
	ForceRank_DesertLord		equ	0x55
	ForceRank_TrickShot		equ	0x56
	ForceRank_Helipad		equ	0x57
	
	ForceRank_Tankbreaker		equ	0x58
	ForceRank_Shipbreaker		equ	0x59
	ForceRank_Helibreaker		equ	0x5A
	ForceRank_Soldierbreaker	equ	0x5B
	ForceRank_Planebreaker		equ	0x5C
	ForceRank_Subbreaker		equ	0x5D
	
	
	;Assign a Statistical Strength to each Force Rank
	ForceRank_Strength_Bruiser		equ	5
	ForceRank_Strength_Brawler		equ	10
	ForceRank_Strength_Sharpshooter		equ	5
	ForceRank_Strength_Sniper		equ	10
	ForceRank_Strength_SlamGuard		equ	5
	ForceRank_Strength_SlamShield		equ	10
	ForceRank_Strength_SnipeGuard		equ	5
	ForceRank_Strength_SnipeShield		equ	10
	ForceRank_Strength_APCGuard		equ	10
	ForceRank_Strength_CombatPay		equ	2
	ForceRank_Strength_Luck			equ	10
	ForceRank_Strength_Scout		equ	1
	ForceRank_Strength_EagleEye		equ	2
	ForceRank_Strength_Mechanic		equ	1
	ForceRank_Strength_GearHead		equ	2
	ForceRank_Strength_Invader		equ	1
	ForceRank_Strength_Conqueror		equ	2
	ForceRank_Strength_Saleprice		equ	5
	ForceRank_Strength_FireSale		equ	10
	ForceRank_Strength_RoadRage		equ	10
	ForceRank_Strength_Ranger		equ	10
	ForceRank_Strength_UrbanFighter		equ	10
	ForceRank_Strength_Mountaineer		equ	10
	ForceRank_Strength_Seamanship		equ	10
	ForceRank_Strength_Backstab		equ	15
	ForceRank_Strength_APCBoost		equ	1
	ForceRank_Strength_MissileGuard		equ	1
	ForceRank_Strength_CannonGuard		equ	2
	ForceRank_Strength_StarPower		equ	20
	ForceRank_Strength_PrairieDog		equ	1
	ForceRank_Strength_Pathfinder		equ	1
	ForceRank_Strength_Sneaky		equ	1
	ForceRank_Strength_Stealthy		equ	2
	ForceRank_Strength_Goldrush		equ	100
	ForceRank_Strength_HighAndDry		equ	20
	ForceRank_Strength_IceBreaker		equ	20
	ForceRank_Strength_SandScorpion		equ	20
	ForceRank_Strength_Mistwalker		equ	COMode_Super
	ForceRank_Strength_SoulofHachi		equ	COMode_Super
	ForceRank_Strength_TeamWork		equ	5
	ForceRank_Strength_Synergy		equ	5
	ForceRank_Strength_Bodyguard		equ	5

	ForceRank_Strength_Softie		equ	0x2B
	ForceRank_Strength_GlassEyes		equ	0x2C
	ForceRank_Strength_Underpowered		equ	0x2D
	ForceRank_Strength_FlatTires		equ	0x2E
	ForceRank_Strength_Flimsy		equ	0x2F
	ForceRank_Strength_GlassJaw		equ	0x30
	ForceRank_Strength_UnusualHat		equ	0x31
	ForceRank_Strength_ClassicAPC		equ	0x32
	ForceRank_Strength_NullLuck		equ	0x33
	ForceRank_Strength_StarDrain		equ	0x34
	ForceRank_Strength_Cursed		equ	0x35
	ForceRank_Strength_Enflakenator		equ	0x36
	ForceRank_Strength_Surrender		equ	0x37
	ForceRank_Strength_DrunkDriver		equ	0x38
	ForceRank_Strength_Sickly		equ	0x39
	ForceRank_Strength_CountryHick		equ	0x3a
	ForceRank_Strength_NoSherpa		equ	0x3b
	ForceRank_Strength_Seasick		equ	0x3c
	ForceRank_Strength_Frostbitten		equ	0x3d
	ForceRank_Strength_SoppingWet		equ	0x3e
	ForceRank_Strength_SandyEyes		equ	0x3f
	ForceRank_Strength_FaceStab		equ	0x40
	ForceRank_Strength_LightMist		equ	0x41
	ForceRank_Strength_DuctTape		equ	0x42
	ForceRank_Strength_Hippy		equ	0x43
	ForceRank_Strength_Pacifist		equ	0x44
	ForceRank_Strength_IncomeTax		equ	0x45
	ForceRank_Strength_TaxHike		equ	0x46
	ForceRank_Strength_Reparations		equ	0x47
	ForceRank_Strength_Banshee		equ	0x48
	ForceRank_Strength_IntelLeak		equ	0x49
	ForceRank_Strength_SignalLoss		equ	0x4a
	ForceRank_Strength_Stumbler		equ	0x4b
	ForceRank_Strength_PurePower		equ	0x4c
	ForceRank_Strength_TrueGrit		equ	0x4d
	ForceRank_Strength_Revenge		equ	0x4e
	ForceRank_Strength_TerrainStar		equ	0x4f
	ForceRank_Strength_TowerPower		equ	0x50
	ForceRank_Strength_CoverIdentity	equ	0x51
	ForceRank_Strength_SpeedDemon		equ	0x52
	ForceRank_Strength_RainDance		equ	0x53
	ForceRank_Strength_Flurry		equ	0x54
	ForceRank_Strength_DesertLord		equ	0x55
	ForceRank_Strength_TrickShot		equ	0x56
	ForceRank_Strength_Helipad		equ	0x57

	
	ForceRank_Strength_Tankbreaker		equ	10
	ForceRank_Strength_Shipbreaker		equ	10
	ForceRank_Strength_Helibreaker		equ	10
	ForceRank_Strength_Soldierbreaker	equ	10
	ForceRank_Strength_Planebreaker		equ	10
	ForceRank_Strength_Subbreaker		equ	10
