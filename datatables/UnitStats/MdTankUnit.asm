;MDTankUnit.asm
;Medium Tank Stats


;Unit Name ID
	.dh 2237
	
;Primary Weapon Name ID
	.dh 2258
	
;Secondary Weapon Name ID	
	.dh 2253
	
;Unit Price for 1HP
	.dh 1600
	
;Unknown
	.dh 0

;Movement
	.db 5
	
;Maximum Ammunition
	.db 8
	
;Vision Range
	.db 1
	
;Unknown
	.db 0
	
;Firing Range
	.db 1,1
	
;Maximum Fuel
	.db 50
	
;B-Button Range Display Type.
	.db BButtonDirect
	
;Unknown
	.dh 0
	
;Transport Ability
	.dw BooleanOff

;Unit Class
	.db ClassVehicle
	
;Movement Class
	.db MoveTread
	
;Facilities this unit can be built from
	.db BuildBase
	
;AI Unit AI
	.db AIDirectCombat

;AI Priority Attack Targeting
	.db AITargetGround

;AI Considers this a Unit of Type
	.db AITargetGround
	
;Unknown
	.db 0	
		
;Damage Chart (Primary Weapon)
;Infantry, Mech, Medium Tank, UID4
	.db 50,45,55,00
;Tank, Recon, APC, Neotank	
	.db 85,105,105,45
;UID9, Artillery, Rockets, UIDC	
	.db 00,105,105,00
;UIDD, Antiair, Missile, Fighter	
	.db 00,105,105,00
;Bomber, UID12, B-Copter, T-Copter	
	.db 00,00,00,00
;Battleship, Cruiser, Lander, Sub	
	.db 10,45,35,10
;Dived Sub	
	.db 00
	
;Unknown
	.db 0
	
;Damage Chart (Secondary Weapon)
;Infantry, Mech, Medium Tank, UID4
	.db 105,95,1,0
;Tank, Recon, APC, Neotank	
	.db 8,45,45,1
;UID9, Artillery, Rockets, UIDC	
	.db 00,45,55,0
;UIDD, Antiair, Missile, Fighter	
	.db 00,7,35,0
;Bomber, UID12, B-Copter, T-Copter	
	.db 00,00,12,45
;Battleship, Cruiser, Lander, Sub	
	.db 00,00,00,00
;Dived Sub	
	.db 00

;Padding
	.dh 00

;Unit is Supplied on This Terrain
	.dw SuppliedByBase
	
;Unit Uses Fuel on These Tiles
	.dw FuelUseageTypeGround
	
;Blank Line
