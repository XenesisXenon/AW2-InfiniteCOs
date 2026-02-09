;Unit Transport Capabilities
;transporttypecarrier.asm

TransportTypeCarrier:
	.dw	TransportTypeCarrierList
	.dw	TransportTypeCarrierList
	.dw	TransportTypeCarrierList
	.dw	TransportTypeCarrierList
	.dw	TransportTypeCarrierList
	.dw	TransportTypeCarrierList
	.dw	TransportTypeCarrierList
	.dw	TransportTypeCarrierList
	.dw	TransportTypeCarrierList
	.dw	TransportTypeCarrierList
	.dw	TransportTypeCarrierList
	.dw	TransportTypeCarrierList
	.dw	TransportTypeCarrierList
	.dw	TransportTypeCarrierList
	.dw	TransportTypeCarrierList
	.dw	TransportTypeCarrierList
	.dw	TransportTypeCarrierList
	.dw	TransportTypeCarrierList
	.dw	TransportTypeCarrierList
	
TransportTypeCarrierList:
;Transport Capacity. Maximum of 2.
	.dh 2

;Loadable Units
	;Infantry, Mech, Medium Tank, UID4
	.db 0,0,0,0
	;Tank, Recon, APC, Neotank	
	.db 0,0,0,0
	;UID9, Artillery, Rockets, UIDC	
	.db 0,0,0,0
	;UIDD, Antiair, Missile, Fighter	
	.db 0,0,0,1
	;Bomber, UID12, B-Copter, T-Copter	
	.db 1,1,1,1
	;Battleship, Cruiser, Lander, Sub	
	.db 0,0,0,0


;Loadable Terrain
	;Null, Plains, River, Mountain
	.db 0,0,0,0
	;Forest, Road, City, Sea
	.db 0,0,0,1
	;HQ, None, Airport, Port
	.db 0,0,0,1
	;Bridge, Shoal, Base, Pipeline
	.db 1,1,0,0
	;Pipeseam, Silo, Silo - Launched, Reef
	.db 0,0,0,1
	;Lab, MinicannonS, MinicannonN, MinicannonW
	.db 0,0,0,0
	;MinicannonE, Laser, BlackCannonS, BlackCannonN
	.db 0,0,0,0
	;Volcano, Factory, Deathray, Variable Tile
	.db 0,0,0,0


;Padding	
	.db 00,00	
;Blank Line
