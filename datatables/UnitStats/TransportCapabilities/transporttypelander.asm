;Unit Transport Capabilities
;transporttypelander.asm

TransportTypeLander:
;Transport Capacity. Maximum of 2.
	.dh 2

;Loadable Units
	;Infantry, Mech, Medium Tank, UID4
	.db 1,1,1,0
	;Tank, Recon, APC, Neotank	
	.db 1,1,1,1
	;UID9, Artillery, Rockets, UIDC	
	.db 0,1,1,0
	;UIDD, Antiair, Missile, Fighter	
	.db 0,1,1,0
	;Bomber, UID12, B-Copter, T-Copter	
	.db 0,0,0,0
	;Battleship, Cruiser, Lander, Sub	
	.db 0,0,0,0

;Loadable Terrain
	;Null, Plains, River, Mountain
	.db 0,0,0,0
	;Forest, Road, City, Sea
	.db 0,0,0,0
	;HQ, None, Airport, Port
	.db 0,0,0,1
	;Bridge, Shoal, Base, Pipeline
	.db 0,1,0,0
	;Pipeseam, Silo, Silo - Launched, Reef
	.db 0,0,0,0
	;Lab, MinicannonS, MinicannonN, MinicannonW
	.db 0,0,0,0
	;MinicannonE, Laser, BlackCannonS, BlackCannonN
	.db 0,0,0,0
	;Volcano, Factory, Deathray, Variable Tile
	.db 0,0,0,0

;Padding	
	.db 00,00	
;Blank Line
