;corecomain.asm
;Defines what COs to import

VSCoSelectTable:
	.db	CONell,COAndy,COMax,COSami,COHachi
	.db	COOlaf,COGrit,COColin
	.db	COKanbei,COSonja,COSensei
	.db	COEagle,CODrake,COJess
	.db	COFlak,COLash,COAdder,COHawke,COSturm

	.db	COAWDSNell,COAWDSAndy,COAWDSMax,COAWDSSami,COAWDSHachi,COAWDSJake,COAWDSRachel
	.db	COAWDSOlaf,COAWDSGrit,COAWDSColin,COAWDSSasha
	.db	COAWDSKanbei,COAWDSSonja,COAWDSSensei,COAWDSGrimm
	.db	COAWDSEagle,COAWDSDrake,COAWDSJess,COAWDSJavier
	.db	COAWDSFlak,COAWDSLash,COAWDSAdder,COAWDSHawke,COAWDSJugger,COAWDSKoal,COAWDSKindle,COAWDSVonBolt
	
	.db	COAW1Andy,COAW1Max,COAW1Sami,COAW1Nell
	.db	COAW1Olaf,COAW1Grit
	.db	COAW1Kanbei,COAW1Sonja
	.db	COAW1Eagle,COAW1Drake
	.db	COAW1Sturm,COAW1SturmVs

	.db	COSFWCaroline,COSFWBillygates,COSFWYamamoto
	
	.db	COCCOVenomAdder
	.db	COCCOEpoch
	.db	COCCOWalter
;	.db	COCCOZed
	.db	COCCOEliwood
	.db	COCCONergal
	.db	0xFF
	
.align 4	
Table_COSelect_AW2:
	.db	CONell,COAndy,COMax,COSami,COHachi
	.db	COOlaf,COGrit,COColin
	.db	COKanbei,COSonja,COSensei
	.db	COEagle,CODrake,COJess
	.db	COFlak,COLash,COAdder,COHawke,COSturm
	.db	0xFF
	
.align 4	
Table_COSelect_AW1:	
	.db	COAW1Andy,COAW1Max,COAW1Sami,COAW1Nell
	.db	COAW1Olaf,COAW1Grit
	.db	COAW1Kanbei,COAW1Sonja
	.db	COAW1Eagle,COAW1Drake
	.db	COAW1Sturm,COAW1SturmVs
	.db	0xFF
	
.align 4	
Table_COSelect_AW3:
	.db	COAWDSNell,COAWDSAndy,COAWDSMax,COAWDSSami,COAWDSHachi,COAWDSJake,COAWDSRachel
	.db	COAWDSOlaf,COAWDSGrit,COAWDSColin,COAWDSSasha
	.db	COAWDSKanbei,COAWDSSonja,COAWDSSensei,COAWDSGrimm
	.db	COAWDSEagle,COAWDSDrake,COAWDSJess,COAWDSJavier
	.db	COAWDSFlak,COAWDSLash,COAWDSAdder,COAWDSHawke,COAWDSJugger,COAWDSKoal,COAWDSKindle,COAWDSVonBolt
	.db	0xFF

.align	4
Table_COSelect_SFW:
	.db	COSFWCaroline,COSFWBillygates,COSFWYamamoto
	.db	0xFF
	
.align 4
Table_COSelect_CCO:
	.db	COCCOVenomAdder
	.db	COCCOEpoch
	.db	COCCOWalter
	.db	COCCOEliwood
	.db	COCCONergal
	.db	0xFF
	

.align 4	
WarRoomCOSelectTable:	
	.db	COAndy,COMax,COSami,COAWDSNell,COAWDSAndy,COAWDSMax,COAWDSSami,COAWDSHachi,COAWDSJake,COAWDSRachel,COAW1Andy,COAW1Max,COAW1Sami,COAW1Nell,CONell,COHachi
	.db	0xFF,0x0
	.db	COOlaf,COGrit,COColin,COAWDSOlaf,COAWDSGrit,COAWDSColin,COAWDSSasha,COAW1Olaf,COAW1Grit,COCCOEliwood
	.db	0xFF,0x1
	.db	COEagle,CODrake,COJess,COAWDSEagle,COAWDSDrake,COAWDSJess,COAWDSJavier,COAW1Eagle,COAW1Drake,COCCOWalter
	.db	0xFF,0x2
	.db	COKanbei,COSonja,COSensei,COAWDSKanbei,COAWDSSonja,COAWDSSensei,COAWDSGrimm,COAW1Kanbei,COAW1Sonja
	.db	0xFF,0x3
	.db	COFlak,COLash,COAdder,COHawke,COSturm,COAWDSFlak,COAWDSLash,COAWDSAdder,COAWDSHawke,COAWDSJugger,COAWDSKoal,COAWDSKindle,COAWDSVonBolt,COAW1Sturm,COAW1SturmVs,COSFWCaroline,COSFWBillygates,COSFWYamamoto,COCCOEpoch,COCCOVenomAdder,COCCONergal
	.db	0xFF,0x4,0xFF
	
.align 4
BattleAnimationSpriteTable:
;This table sets which army sprites each CO uses in Battle Animations
	.db	0,0,0,1,0,1,3,3,2,2,4
	.db	4,4,4,4,0,1,2,3,0,1,2
	.db	3,4
;Additional COs start Here
	;AWDS
	.db	0,0,1,2,3,4,4,4,4,0,0,0,0,0,1,1,1,3,3,3,2,2,2,4,4,4,4
	;AW1
	.db	4,4,0,0,0,0,1,1,3,3,2,2
	;SFW
	.db	0,1,3
	;CCO
	.db	4,4,2,2,0,0
	

.align 4
	.include "datatables/coreabilityaddition.asm"
	.include "datatables/coreaitable.asm"
	.include "datatables/corecographicsandpowertable.asm"
	
;Blank Line
