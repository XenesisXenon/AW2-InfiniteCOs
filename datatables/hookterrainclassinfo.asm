;hookterrainclassinfo.asm"
;Loads the Tables that provide the R-Info Panels
;And terrain defence stats

.org 0x085D583C
Table_TerrainClass:
	.include "datatables/TerrainClassInfo/00_TerrainInfoNull.asm"
	.include "datatables/TerrainClassInfo/01_TerrainInfoPlain.asm"
	.include "datatables/TerrainClassInfo/02_TerrainInfoRiver.asm"
	.include "datatables/TerrainClassInfo/03_TerrainInfoMountain.asm"
	.include "datatables/TerrainClassInfo/04_TerrainInfoForest.asm"
	.include "datatables/TerrainClassInfo/05_TerrainInfoRoad.asm"
	.include "datatables/TerrainClassInfo/06_TerrainInfoCity.asm"
	.include "datatables/TerrainClassInfo/07_TerrainInfoSea.asm"
	.include "datatables/TerrainClassInfo/08_TerrainInfoHQ.asm"
	.include "datatables/TerrainClassInfo/09_TerrainInfoKanji.asm"
	.include "datatables/TerrainClassInfo/10_TerrainInfoAirport.asm"
	.include "datatables/TerrainClassInfo/11_TerrainInfoPort.asm"
	.include "datatables/TerrainClassInfo/12_TerrainInfoBridge.asm"
	.include "datatables/TerrainClassInfo/13_TerrainInfoShoal.asm"
	.include "datatables/TerrainClassInfo/14_TerrainInfoBase.asm"
	.include "datatables/TerrainClassInfo/15_TerrainInfoPipeline.asm"
	.include "datatables/TerrainClassInfo/16_TerrainInfoPipelineSeam.asm"
	.include "datatables/TerrainClassInfo/17_TerrainInfoSilo.asm"
	.include "datatables/TerrainClassInfo/18_TerrainInfoSiloUsed.asm"
	.include "datatables/TerrainClassInfo/19_TerrainInfoReef.asm"
	.include "datatables/TerrainClassInfo/20_TerrainInfoLab.asm"
	.include "datatables/TerrainClassInfo/21_TerrainInfoMiniCannonS.asm"
	;.include "datatables/TerrainClassInfo/22_TerrainInfoMiniCannonN.asm"
	.include "datatables/TerrainClassInfo/TerrainInfo_AWDS_Tower.asm"	;22
	;.include "datatables/TerrainClassInfo/23_TerrainInfoMiniCannonW.asm"
	.include "datatables/TerrainClassInfo/TerrainInfo_AW4_Ruins.asm"	;23
	;.include "datatables/TerrainClassInfo/24_TerrainInfoMiniCannonE.asm"
	.include "datatables/TerrainClassInfo/TerrainInfo_AW4_Wasteland.asm"	;24
	.include "datatables/TerrainClassInfo/25_TerrainInfoLaser.asm"
	.include "datatables/TerrainClassInfo/26_TerrainInfoBlackCannonS.asm"
	.include "datatables/TerrainClassInfo/27_TerrainInfoBlackCannonN.asm"
	.include "datatables/TerrainClassInfo/28_TerrainInfoVolcano.asm"
	.include "datatables/TerrainClassInfo/29_TerrainInfoFactory.asm"
	.include "datatables/TerrainClassInfo/30_TerrainInfoDeathray.asm"
	.include "datatables/TerrainClassInfo/31_TerrainInfoReskinnableTile.asm"
	
