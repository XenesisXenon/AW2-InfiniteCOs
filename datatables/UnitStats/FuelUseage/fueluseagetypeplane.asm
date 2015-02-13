;Daily Turn Fuel Useage Table
;fueluseagetypecopter.asm

FuelUseageTypePlane:
	;Null, Plains, River, Mountain
	.db 0,5,5,5
	;Forest, Road, City, Sea
	.db 5,5,5,5
	;HQ, None, Airport, Port
	.db 5,0,5,5
	;Bridge, Shoal, Base, Pipeline
	.db 5,5,5,0
	;Pipeseam, Silo, Silo - Launched, Reef
	.db 0,5,5,5
	;Lab, MinicannonS, MinicannonN, MinicannonW
	.db 5,0,0,0
	;MinicannonE, Laser, BlackCannonS, BlackCannonN
	.db 0,0,0,0
	;Volcano, Factory, Deathray, Variable Tile
	.db 0,0,0,0
	
;Blank Line
