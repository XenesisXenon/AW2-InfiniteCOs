;movementchartsnow.asm
;Movement Chart For Snowy Weather

MovementChartSnow:

;Foot Movement Type
	;Null, Plains, River, Mountain
	.db -1,02,02,04
	;Forest, Road, City, Sea
	.db 02,01,01,-1
	;HQ, None, Airport, Port
	.db 01,-1,01,01
	;Bridge, Shoal, Base, Pipeline
	.db 01,01,01,-1
	;Pipeseam, Silo, Silo - Launched, Reef
	.db -1,01,1,-1
	;Lab, Minicannon, Tower, Ruins
	.db 01,-1,01,02
	;Wasteland, Laser, BlackCannonS, BlackCannonN
	.db 02,-1,-1,-1
	;Volcano, Factory, Deathray, Variable Tile
	.db -1,-1,-1,-1

;Mech Movement Type
	;Null, Plains, River, Mountain
	.db -1,01,01,02
	;Forest, Road, City, Sea
	.db 01,01,01,-1
	;HQ, None, Airport, Port
	.db 01,-1,01,01
	;Bridge, Shoal, Base, Pipeline
	.db 01,01,01,-1
	;Pipeseam, Silo, Silo - Launched, Reef
	.db -1,01,01,-1
	;Lab, Minicannon, Tower, Ruins
	.db 01,-1,01,02
	;Wasteland, Laser, BlackCannonS, BlackCannonN
	.db 02,-1,-1,-1
	;Volcano, Factory, Deathray, Variable Tile
	.db -1,-1,-1,-1
	
;Tread Movement Type
	;Null, Plains, River, Mountain
	.db -1,02,-1,-1
	;Forest, Road, City, Sea
	.db 02,01,01,-1
	;HQ, None, Airport, Port
	.db 01,-1,01,01
	;Bridge, Shoal, Base, Pipeline
	.db 01,01,01,-1
	;Pipeseam, Silo, Silo - Launched, Reef
	.db -1,01,01,-1
	;Lab, Minicannon, Tower, Ruins
	.db 01,-1,01,02
	;Wasteland, Laser, BlackCannonS, BlackCannonN
	.db 03,-1,-1,-1
	;Volcano, Factory, Deathray, Variable Tile
	.db -1,-1,-1,-1	
	
;Tyre Movement Type
	;Null, Plains, River, Mountain
	.db -1,03,-1,-1
	;Forest, Road, City, Sea
	.db 03,01,01,-1
	;HQ, None, Airport, Port
	.db 01,-1,01,01
	;Bridge, Shoal, Base, Pipeline
	.db 01,01,01,-1
	;Pipeseam, Silo, Silo - Launched, Reef
	.db -1,01,01,-1
	;Lab, Minicannon, Tower, Ruins
	.db 01,-1,01,01
	;Wasteland, Laser, BlackCannonS, BlackCannonN
	.db 03,-1,-1,-1
	;Volcano, Factory, Deathray, Variable Tile
	.db -1,-1,-1,-1	
	
;Aerial Movement Type
	;Null, Plains, River, Mountain
	.db -1,02,02,02
	;Forest, Road, City, Sea
	.db 02,02,02,02
	;HQ, None, Airport, Port
	.db 02,-1,02,02
	;Bridge, Shoal, Base, Pipeline
	.db 02,02,02,-1
	;Pipeseam, Silo, Silo - Launched, Reef
	.db -1,02,02,02
	;Lab, Minicannon, Tower, Ruins
	.db 02,-1,02,02
	;Wasteland, Laser, BlackCannonS, BlackCannonN
	.db 02,-1,-1,-1
	;Volcano, Factory, Deathray, Variable Tile
	.db -1,-1,-1,-1	
	
;Ship Movement Type
	;Null, Plains, River, Mountain
	.db -1,-1,-1,-1
	;Forest, Road, City, Sea
	.db -1,-1,-1,02
	;HQ, None, Airport, Port
	.db -1,-1,-1,02
	;Bridge, Shoal, Base, Pipeline
	.db -1,-1,-1,-1
	;Pipeseam, Silo, Silo - Launched, Reef
	.db -1,-1,-1,02
	;Lab, Minicannon, Tower, Ruins
	.db -1,-1,-1,-1
	;Wasteland, Laser, BlackCannonS, BlackCannonN
	.db -1,-1,-1,-1
	;Volcano, Factory, Deathray, Variable Tile
	.db -1,-1,-1,-1	
	
;Naval Transport Movement Type
	;Null, Plains, River, Mountain
	.db -1,-1,-1,-1
	;Forest, Road, City, Sea
	.db -1,-1,-1,02
	;HQ, None, Airport, Port
	.db -1,-1,-1,02
	;Bridge, Shoal, Base, Pipeline
	.db -1,01,-1,-1
	;Pipeseam, Silo, Silo - Launched, Reef
	.db -1,-1,-1,02
	;Lab, Minicannon, Tower, Ruins
	.db -1,-1,-1,-1
	;Wasteland, Laser, BlackCannonS, BlackCannonN
	.db -1,-1,-1,-1
	;Volcano, Factory, Deathray, Variable Tile
	.db -1,-1,-1,-1	
	
;Blank Line	
