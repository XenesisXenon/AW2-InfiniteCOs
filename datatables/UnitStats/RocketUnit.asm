;RocketUnit.asm
;Rocket Stats


;Unit Name ID
	.dh 2242
	
;Primary Weapon Name ID
	.dh 2256
	
;Secondary Weapon Name ID	
	.dh 2266
	
;Unit Price for 1HP
	.dh 1500
	
;Unknown
	.dh 0

;Movement
	.db 5
	
;Maximum Ammunition
	.db 6
	
;Vision Range
	.db 1
	
;Unknown
	.db 0
	
;Firing Range
	.db 3,5
	
;Maximum Fuel
	.db 50
	
;B-Button Range Display Type.
	.db BButtonIndirect
	
;Unknown
	.dh 0
	
;Transport Ability
	.dw BooleanOff

;Unit Class
	.db ClassVehicle
	
;Movement Class
	.db MoveTyre
	
;Facilities this unit can be built from
	.db BuildBase
	
;AI Unit AI
	.db AIIndirectCombat

;AI Priority Attack Targeting
	.db AITargetGround+AITargetSea

;AI Considers this a Unit of Type
	.db AITargetGround
	
;Unknown
	.db 0	
		
;Damage Chart (Primary Weapon)
;Infantry, Mech, Medium Tank, UID4
	.db 95,90,55,00
;Tank, Recon, APC, Neotank	
	.db 80,90,80,50
;UID9, Artillery, Rockets, UIDC	
	.db 00,80,85,00
;UIDD, Antiair, Missile, Fighter	
	.db 00,85,90,00
;Bomber, UID12, B-Copter, T-Copter	
	.db 00,00,00,00
;Battleship, Cruiser, Lander, Sub	
	.db 55,85,60,85
;Dived Sub	
	.db 00	
	
;Unknown
	.db 0
	
;Damage Chart (Secondary Weapon)
;Infantry, Mech, Medium Tank, UID4
	.db 0,0,0,0
;Tank, Recon, APC, Neotank	
	.db 0,0,0,0
;UID9, Artillery, Rockets, UIDC	
	.db 0,0,0,0
;UIDD, Antiair, Missile, Fighter	
	.db 0,0,0,0
;Bomber, UID12, B-Copter, T-Copter	
	.db 0,0,0,0
;Battleship, Cruiser, Lander, Sub	
	.db 0,0,0,0
;Dived Sub	
	.db 0

;Padding
	.dh 00

;Unit is Supplied on This Terrain
	.dw SuppliedByBase
	
;Unit Uses Fuel on These Tiles
	.dw FuelUseageTypeGround
	
;Blank Line
