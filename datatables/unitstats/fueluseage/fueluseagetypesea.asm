;Daily Turn Fuel Useage Table
;fueluseagetypesea.asm

FuelUseageTypeSea:
	;Null, Plains, River, Mountain
	.db 0,0,0,0
	;Forest, Road, City, Sea
	.db 0,0,0,1
	;HQ, None, Airport, Port
	.db 0,0,0,1
	;Bridge, Shoal, Base, Pipeline
	.db 1,1,0,0
	;Pipeseam, Silo, Silo - Launched, Reef
	.db 0,0,0,0
	;Lab, MinicannonS, MinicannonN, MinicannonW
	.db 0,0,0,0
	;MinicannonE, Laser, BlackCannonS, BlackCannonN
	.db 0,0,0,0
	;Volcano, Factory, Deathray, Variable Tile
	.db 0,0,0,0
	
;Blank Line
