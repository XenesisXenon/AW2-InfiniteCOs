;terrainboosterkindledaily.asm

;Terrain Boosting Table

TerrainFirepowerBoostKindleSuper:
	;Null, Plains, River, Mountain
	.db 0,0,0,0
	;Forest, Road, City, Sea
	.db 0,0,120,0
	;HQ, None, Airport, Port
	.db 120,0,120,120
	;Bridge, Shoal, Base, Pipeline
	.db 0,0,120,0
	;Pipeseam, Silo, Silo - Launched, Reef
	.db 0,0,0,0
	;Lab, MinicannonS, MinicannonN, MinicannonW
	.db 120,0,0,0
	;MinicannonE, Laser, BlackCannonS, BlackCannonN
	.db 0,0,0,0
	;Volcano, Factory, Deathray, Variable Tile
	.db 0,0,0,0
	
;Blank Line
