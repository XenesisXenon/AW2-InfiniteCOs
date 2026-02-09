;Daily Turn Fuel Useage Table
;fueluseagetypecopter.asm

FuelUseageTypeCopter:
	;Null, Plains, River, Mountain
	.db 0,2,2,2
	;Forest, Road, City, Sea
	.db 2,2,2,2
	;HQ, None, Airport, Port
	.db 2,0,0,2
	;Bridge, Shoal, Base, Pipeline
	.db 2,2,2,0
	;Pipeseam, Silo, Silo - Launched, Reef
	.db 0,2,2,2
	;Lab, MinicannonS, MinicannonN, MinicannonW
	.db 2,0,0,0
	;MinicannonE, Laser, BlackCannonS, BlackCannonN
	.db 0,0,0,0
	;Volcano, Factory, Deathray, Variable Tile
	.db 0,0,0,0
	
;Blank Line
