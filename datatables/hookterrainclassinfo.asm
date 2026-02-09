;hookterrainclassinfo.asm"
;loads the tables that provide the r-info panels
;and terrain defence stats

.org 0x085d583c
table_terrainclass:
	.include "datatables/terrainclassinfo/00_terraininfonull.asm"
	.include "datatables/terrainclassinfo/01_terraininfoplain.asm"
	.include "datatables/terrainclassinfo/02_terraininforiver.asm"
	.include "datatables/terrainclassinfo/03_terraininfomountain.asm"
	.include "datatables/terrainclassinfo/04_terraininfoforest.asm"
	.include "datatables/terrainclassinfo/05_terraininforoad.asm"
	.include "datatables/terrainclassinfo/06_terraininfocity.asm"
	.include "datatables/terrainclassinfo/07_terraininfosea.asm"
	.include "datatables/terrainclassinfo/08_terraininfohq.asm"
	.include "datatables/terrainclassinfo/09_terraininfokanji.asm"
	.include "datatables/terrainclassinfo/10_terraininfoairport.asm"
	.include "datatables/terrainclassinfo/11_terraininfoport.asm"
	.include "datatables/terrainclassinfo/12_terraininfobridge.asm"
	.include "datatables/terrainclassinfo/13_terraininfoshoal.asm"
	.include "datatables/terrainclassinfo/14_terraininfobase.asm"
	.include "datatables/terrainclassinfo/15_terraininfopipeline.asm"
	.include "datatables/terrainclassinfo/16_terraininfopipelineseam.asm"
	.include "datatables/terrainclassinfo/17_terraininfosilo.asm"
	.include "datatables/terrainclassinfo/18_terraininfosiloused.asm"
	.include "datatables/terrainclassinfo/19_terraininforeef.asm"
	.include "datatables/terrainclassinfo/20_terraininfolab.asm"
	.include "datatables/terrainclassinfo/21_terraininfominicannons.asm"
	;.include "datatables/terrainclassinfo/22_terraininfominicannonn.asm"
	.include "datatables/terrainclassinfo/terraininfo_awds_tower.asm"	;22
	;.include "datatables/terrainclassinfo/23_terraininfominicannonw.asm"
	.include "datatables/terrainclassinfo/terraininfo_aw4_ruins.asm"	;23
	;.include "datatables/terrainclassinfo/24_terraininfominicannone.asm"
	.include "datatables/terrainclassinfo/terraininfo_aw4_wasteland.asm"	;24
	.include "datatables/terrainclassinfo/25_terraininfolaser.asm"
	.include "datatables/terrainclassinfo/26_terraininfoblackcannons.asm"
	.include "datatables/terrainclassinfo/27_terraininfoblackcannonn.asm"
	.include "datatables/terrainclassinfo/28_terraininfovolcano.asm"
	.include "datatables/terrainclassinfo/29_terraininfofactory.asm"
	.include "datatables/terrainclassinfo/30_terraininfodeathray.asm"
	.include "datatables/terrainclassinfo/31_terraininforeskinnabletile.asm"
	
