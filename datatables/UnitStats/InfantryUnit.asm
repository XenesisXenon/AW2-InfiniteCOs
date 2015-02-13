;InfantryUnit.asm
;Infantry Stats


;Unit Name ID
	.dh 2234
	
;Primary Weapon Name ID
	.dh 2266
	
;Secondary Weapon Name ID	
	.dh 2253
	
;Unit Price for 1HP
	.dh 100
	
;Unknown
	.dh 0

;Movement
	.db 3
	
;Maximum Ammunition
	.db 0
	
;Vision Range
	.db 2
	
;Unknown
	.db 0
	
;Firing Range
	.db 1,1
	
;Maximum Fuel
	.db 99
	
;B-Button Range Display Type.
	.db BButtonDirect
	
;Unknown
	.dh 0
	
;Transport Ability
	.dw BooleanOff

;Unit Class
	.db ClassSoldier
	
;Movement Class
	.db MoveFoot
	
;Facilities this unit can be built from
	.db BuildBase
	
;AI Unit AI
	.db AICaptureUnit

;AI Priority Attack Targeting
	.db BooleanOff

;AI Considers this a Unit of Type
	.db AITargetGround
	
;Unknown
	.db 0	
		
;Damage Chart (Primary Weapon)
;Infantry, Mech, Medium Tank, UID4
	.db 00,00,00,00
;Tank, Recon, APC, Neotank	
	.db 00,00,00,00
;UID9, Artillery, Rockets, UIDC	
	.db 00,00,00,00
;UIDD, Antiair, Missile, Fighter	
	.db 00,00,00,00
;Bomber, UID12, B-Copter, T-Copter	
	.db 00,00,00,00
;Battleship, Cruiser, Lander, Sub	
	.db 00,00,00,00
;Dived Sub	
	.db 00	

;Unknown
	.db 0	
		
;Damage Chart (Secondary Weapon)
;Infantry, Mech, Medium Tank, UID4
	.db 55,45,1,0
;Tank, Recon, APC, Neotank	
	.db 5,12,14,1
;UID9, Artillery, Rockets, UIDC	
	.db 00,15,25,0
;UIDD, Antiair, Missile, Fighter	
	.db 0,5,25,0
;Bomber, UID12, B-Copter, T-Copter	
	.db 0,0,7,30
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
