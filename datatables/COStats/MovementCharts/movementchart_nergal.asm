;movementchart_nergal.asm
;Movement Chart For Nergal

MovementChart_CustomNergal:

;Foot Movement Type
	;Null, Plains, River, Mountain
	.db 01,01,01,01
	;Forest, Road, City, Sea
	.db 01,01,01,01
	;HQ, None, Airport, Port
	.db 01,01,01,01
	;Bridge, Shoal, Base, Pipeline
	.db 01,01,01,01
	;Pipeseam, Silo, Silo - Launched, Reef
	.db 01,01,1,01
	;Lab, MinicannonS, MinicannonN, MinicannonW
	.db 01,01,01,01
	;MinicannonE, Laser, BlackCannonS, BlackCannonN
	.db 01,01,01,01
	;Volcano, Factory, Deathray, Variable Tile
	.db 01,01,01,01

;Mech Movement Type
	;Null, Plains, River, Mountain
	.db 01,01,01,01
	;Forest, Road, City, Sea
	.db 01,01,01,01
	;HQ, None, Airport, Port
	.db 01,01,01,01
	;Bridge, Shoal, Base, Pipeline
	.db 01,01,01,01
	;Pipeseam, Silo, Silo - Launched, Reef
	.db 01,01,01,01
	;Lab, MinicannonS, MinicannonN, MinicannonW
	.db 01,01,01,01
	;MinicannonE, Laser, BlackCannonS, BlackCannonN
	.db 01,01,01,01
	;Volcano, Factory, Deathray, Variable Tile
	.db 01,01,01,01
	
;Tread Movement Type
	;Null, Plains, River, Mountain
	.db 01,01,01,01
	;Forest, Road, City, Sea
	.db 01,01,01,01
	;HQ, None, Airport, Port
	.db 01,01,01,01
	;Bridge, Shoal, Base, Pipeline
	.db 01,01,01,01
	;Pipeseam, Silo, Silo - Launched, Reef
	.db 01,01,01,01
	;Lab, MinicannonS, MinicannonN, MinicannonW
	.db 01,01,01,01
	;MinicannonE, Laser, BlackCannonS, BlackCannonN
	.db 01,01,01,01
	;Volcano, Factory, Deathray, Variable Tile
	.db 01,01,01,01	
	
;Tyre Movement Type
	;Null, Plains, River, Mountain
	.db 01,01,01,01
	;Forest, Road, City, Sea
	.db 01,01,01,01
	;HQ, None, Airport, Port
	.db 01,01,01,01
	;Bridge, Shoal, Base, Pipeline
	.db 01,01,01,01
	;Pipeseam, Silo, Silo - Launched, Reef
	.db 01,01,01,01
	;Lab, MinicannonS, MinicannonN, MinicannonW
	.db 01,01,01,01
	;MinicannonE, Laser, BlackCannonS, BlackCannonN
	.db 01,01,01,01
	;Volcano, Factory, Deathray, Variable Tile
	.db 01,01,01,01	
	
;Aerial Movement Type
	;Null, Plains, River, Mountain
	.db 01,01,01,01
	;Forest, Road, City, Sea
	.db 01,01,01,01
	;HQ, None, Airport, Port
	.db 01,01,01,01
	;Bridge, Shoal, Base, Pipeline
	.db 01,01,01,01
	;Pipeseam, Silo, Silo - Launched, Reef
	.db 01,01,01,01
	;Lab, MinicannonS, MinicannonN, MinicannonW
	.db 01,01,01,01
	;MinicannonE, Laser, BlackCannonS, BlackCannonN
	.db 01,01,01,01
	;Volcano, Factory, Deathray, Variable Tile
	.db 01,01,01,01	
	
;Ship Movement Type
	;Null, Plains, River, Mountain
	.db 01,01,01,01
	;Forest, Road, City, Sea
	.db 01,01,01,01
	;HQ, None, Airport, Port
	.db 01,01,01,01
	;Bridge, Shoal, Base, Pipeline
	.db 01,01,01,01
	;Pipeseam, Silo, Silo - Launched, Reef
	.db 01,01,01,01
	;Lab, MinicannonS, MinicannonN, MinicannonW
	.db 01,01,01,01
	;MinicannonE, Laser, BlackCannonS, BlackCannonN
	.db 01,01,01,01
	;Volcano, Factory, Deathray, Variable Tile
	.db 01,01,01,01	
	
;Naval Transport Movement Type
	;Null, Plains, River, Mountain
	.db 01,01,01,01
	;Forest, Road, City, Sea
	.db 01,01,01,01
	;HQ, None, Airport, Port
	.db 01,01,01,01
	;Bridge, Shoal, Base, Pipeline
	.db 01,01,01,01
	;Pipeseam, Silo, Silo - Launched, Reef
	.db 01,01,01,01
	;Lab, MinicannonS, MinicannonN, MinicannonW
	.db 01,01,01,01
	;MinicannonE, Laser, BlackCannonS, BlackCannonN
	.db 01,01,01,01
	;Volcano, Factory, Deathray, Variable Tile
	.db 01,01,01,01	
	
;movementchart_nergal.asm
;Movement Chart For Nergal

MovementChart_CustomNergal_AllowList:

;Foot Movement Type
	;Null, Plains, River, Mountain
	.db -1,01,01,01
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

;Mech Movement Type
	;Null, Plains, River, Mountain
	.db -1,01,01,01
	;Forest, Road, City, Sea
	.db 01,01,01,-1
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
	
;Tread Movement Type
	;Null, Plains, River, Mountain
	.db -1,01,-1,-1
	;Forest, Road, City, Sea
	.db 01,01,01,-1
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
	.db -1,01,-1,-1
	;Forest, Road, City, Sea
	.db 01,01,01,-1
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
	
;Ship Movement Type
	;Null, Plains, River, Mountain
	.db -1,-1,-1,-1
	;Forest, Road, City, Sea
	.db -1,-1,-1,01
	;HQ, None, Airport, Port
	.db -1,-1,-1,01
	;Bridge, Shoal, Base, Pipeline
	.db -1,-1,-1,-1
	;Pipeseam, Silo, Silo - Launched, Reef
	.db -1,-1,-1,01
	;Lab, MinicannonS, MinicannonN, MinicannonW
	.db -1,-1,-1,-1
	;MinicannonE, Laser, BlackCannonS, BlackCannonN
	.db -1,-1,-1,-1
	;Volcano, Factory, Deathray, Variable Tile
	.db -1,-1,-1,-1	
	
;Naval Transport Movement Type
	;Null, Plains, River, Mountain
	.db -1,-1,-1,-1
	;Forest, Road, City, Sea
	.db -1,-1,-1,01
	;HQ, None, Airport, Port
	.db -1,-1,-1,01
	;Bridge, Shoal, Base, Pipeline
	.db -1,01,-1,-1
	;Pipeseam, Silo, Silo - Launched, Reef
	.db -1,-1,-1,01
	;Lab, MinicannonS, MinicannonN, MinicannonW
	.db -1,-1,-1,-1
	;MinicannonE, Laser, BlackCannonS, BlackCannonN
	.db -1,-1,-1,-1
	;Volcano, Factory, Deathray, Variable Tile
	.db -1,-1,-1,-1	
	
;Blank Line	
