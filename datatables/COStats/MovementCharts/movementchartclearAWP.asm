;movementchartclear.asm
;Movement Chart in Sunny Weather

MovementChartClearAWP:

;Foot Movement Type
	;Null, Plains, River, Mountain
	.db -1,01,02,02
	;Forest, Road, City, Sea
	.db 01,01,01,-1
	;HQ, None, Airport, Port
	.db 01,-1,01,01
	;Bridge, Shoal, Base, Pipeline
	.db 01,01,01,-1
	;Pipeseam, Silo, Silo - Launched, Reef
	.db -1,01,1,-1
	;Lab, MinicannonS, MinicannonN, MinicannonW
	.db 01,-1,-1,-1
	;MinicannonE, Laser, BlackCannonS, BlackCannonN
	.db -1,-1,-1,-1
	;Volcano, Factory, Deathray, Variable Tile
	.db -1,-1,-1,-1

;Light Tread Movement Type
	;Null, Plains, River, Mountain
	.db -1,01,03,-1
	;Forest, Road, City, Sea
	.db 02,01,01,-1
	;HQ, None, Airport, Port
	.db 01,-1,01,01
	;Bridge, Shoal, Base, Pipeline
	.db 01,01,01,-1
	;Pipeseam, Silo, Silo - Launched, Reef
	.db -1,01,01,-1
	;Lab, MinicannonS, MinicannonN, MinicannonW
	.db 01,-1,-1,-1
	;MinicannonE, Laser, BlackCannonS, BlackCannonN
	.db -1,-1,-1,-1
	;Volcano, Factory, Deathray, Variable Tile
	.db -1,-1,-1,-1
	
;Heavy Tread Movement Type
	;Null, Plains, River, Mountain
	.db -1,01,-1,-1
	;Forest, Road, City, Sea
	.db 02,01,01,-1
	;HQ, None, Airport, Port
	.db 01,-1,01,01
	;Bridge, Shoal, Base, Pipeline
	.db 01,01,01,-1
	;Pipeseam, Silo, Silo - Launched, Reef
	.db -1,01,01,-1
	;Lab, MinicannonS, MinicannonN, MinicannonW
	.db 01,-1,-1,-1
	;MinicannonE, Laser, BlackCannonS, BlackCannonN
	.db -1,-1,-1,-1
	;Volcano, Factory, Deathray, Variable Tile
	.db -1,-1,-1,-1	
	
;Tyre Movement Type
	;Null, Plains, River, Mountain
	.db -1,02,-1,-1
	;Forest, Road, City, Sea
	.db 03,01,01,-1
	;HQ, None, Airport, Port
	.db 01,-1,01,01
	;Bridge, Shoal, Base, Pipeline
	.db 01,01,01,-1
	;Pipeseam, Silo, Silo - Launched, Reef
	.db -1,01,01,-1
	;Lab, MinicannonS, MinicannonN, MinicannonW
	.db 01,-1,-1,-1
	;MinicannonE, Laser, BlackCannonS, BlackCannonN
	.db -1,-1,-1,-1
	;Volcano, Factory, Deathray, Variable Tile
	.db -1,-1,-1,-1	
	
;Aerial Movement Type
	;Null, Plains, River, Mountain
	.db -1,01,01,01
	;Forest, Road, City, Sea
	.db 01,01,01,01
	;HQ, None, Airport, Port
	.db 01,-1,01,01
	;Bridge, Shoal, Base, Pipeline
	.db 01,01,01,-1
	;Pipeseam, Silo, Silo - Launched, Reef
	.db -1,01,01,01
	;Lab, MinicannonS, MinicannonN, MinicannonW
	.db 01,-1,-1,-1
	;MinicannonE, Laser, BlackCannonS, BlackCannonN
	.db -1,-1,-1,-1
	;Volcano, Factory, Deathray, Variable Tile
	.db -1,-1,-1,-1	
	
;Heavy Ship Movement Type
	;Null, Plains, River, Mountain
	.db -1,-1,-1,-1
	;Forest, Road, City, Sea
	.db -1,-1,-1,01
	;HQ, None, Airport, Port
	.db -1,-1,-1,01
	;Bridge, Shoal, Base, Pipeline
	.db 01,-1,-1,-1
	;Pipeseam, Silo, Silo - Launched, Reef
	.db -1,-1,-1,02
	;Lab, MinicannonS, MinicannonN, MinicannonW
	.db -1,-1,-1,-1
	;MinicannonE, Laser, BlackCannonS, BlackCannonN
	.db -1,-1,-1,-1
	;Volcano, Factory, Deathray, Variable Tile
	.db -1,-1,-1,-1	
	
;Light Ship Transport Movement Type
	;Null, Plains, River, Mountain
	.db -1,-1,-1,-1
	;Forest, Road, City, Sea
	.db -1,-1,02,01
	;HQ, None, Airport, Port
	.db 02,-1,02,01
	;Bridge, Shoal, Base, Pipeline
	.db 01,01,02,-1
	;Pipeseam, Silo, Silo - Launched, Reef
	.db -1,-1,-1,02
	;Lab, MinicannonS, MinicannonN, MinicannonW
	.db 02,-1,-1,-1
	;MinicannonE, Laser, BlackCannonS, BlackCannonN
	.db -1,-1,-1,-1
	;Volcano, Factory, Deathray, Variable Tile
	.db -1,-1,-1,-1	
	
;Tyre B Movement Type
	;Null, Plains, River, Mountain
	.db -1,01,-1,-1
	;Forest, Road, City, Sea
	.db 03,01,01,-1
	;HQ, None, Airport, Port
	.db 01,-1,01,01
	;Bridge, Shoal, Base, Pipeline
	.db 01,01,01,-1
	;Pipeseam, Silo, Silo - Launched, Reef
	.db -1,01,01,-1
	;Lab, MinicannonS, MinicannonN, MinicannonW
	.db 01,-1,-1,-1
	;MinicannonE, Laser, BlackCannonS, BlackCannonN
	.db -1,-1,-1,-1
	;Volcano, Factory, Deathray, Variable Tile
	.db -1,-1,-1,-1		
	
;Rail Movement Type
	;Null, Plains, River, Mountain
	.db -1,-1,-1,-1
	;Forest, Road, City, Sea
	.db -1,03,02,-1
	;HQ, None, Airport, Port
	.db 01,-1,02,02
	;Bridge, Shoal, Base, Pipeline
	.db 05,-1,01,01
	;Pipeseam, Silo, Silo - Launched, Reef
	.db -1,02,02,-1
	;Lab, MinicannonS, MinicannonN, MinicannonW
	.db 02,-1,-1,-1
	;MinicannonE, Laser, BlackCannonS, BlackCannonN
	.db -1,-1,-1,-1
	;Volcano, Factory, Deathray, Variable Tile
	.db -1,-1,-1,-1		
	
;Blank Line	
