;Unit Transport Capabilities
;transporttyperailcannon.asm

TransportTypeRailcannon:
	.dw	TransportTypeRailcannonList
	.dw	TransportTypeRailcannonList
	.dw	TransportTypeRailcannonList
	.dw	TransportTypeRailcannonList
	.dw	TransportTypeRailcannonList
	.dw	TransportTypeRailcannonList
	.dw	TransportTypeRailcannonList
	.dw	TransportTypeRailcannonList
	.dw	TransportTypeRailcannonList
	.dw	TransportTypeRailcannonList
	.dw	TransportTypeRailcannonList
	.dw	TransportTypeRailcannonList
	.dw	TransportTypeRailcannonList
	.dw	TransportTypeRailcannonList
	.dw	TransportTypeRailcannonList
	.dw	TransportTypeRailcannonList
	.dw	TransportTypeRailcannonList
	.dw	TransportTypeRailcannonList
	.dw	TransportTypeRailcannonList

TransportTypeRailcannonList:
;Transport Capacity. Maximum of 2.
	.dh 2

;Loadable Units
	;Infantry, Mech, Medium Tank, Antitank
	.db 1,1,1,1
	;Tank, Recon, APC, Neotank	
	.db 1,1,1,1
	;Destroyer, Artillery, Rockets, Gunboat	
	.db 0,1,1,0
	;Carrier, Antiair, Missile, Fighter	
	.db 0,1,1,1
	;Bomber, Duster, B-Copter, T-Copter	
	.db 1,1,1,1
	;Battleship, Cruiser, Lander, Sub	
	.db 0,0,0,0

;Loadable Terrain
	;Null, Plains, River, Mountain
	.db 0,0,0,0
	;Forest, Road, City, Sea
	.db 0,1,1,0
	;HQ, None, Airport, Port
	.db 1,0,1,1
	;Bridge, Shoal, Base, Pipeline
	.db 1,0,1,1
	;Pipeseam, Silo, Silo - Launched, Reef
	.db 0,1,1,0
	;Lab, MinicannonS, MinicannonN, MinicannonW
	.db 1,0,0,0
	;MinicannonE, Laser, BlackCannonS, BlackCannonN
	.db 0,0,0,0
	;Volcano, Factory, Deathray, Variable Tile
	.db 0,0,0,0


;Padding	
	.db 00,00	
;Blank Line
