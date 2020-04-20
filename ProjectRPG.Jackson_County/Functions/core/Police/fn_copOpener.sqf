/* police sender, open gates from inside the car (only for cops)  by Insane www.tdc-clan.eu*/
{if (_x animationPhase "Door_1_rot" == 1) then {
	_x animate ["Door_1_rot", 0];	
} else {
	_x animate ["Door_1_rot", 1];	
};		
} forEach (nearestObjects [player, ["Land_BarGate_F"], 10]);

{if (_x animationPhase "GateDoor_3" >= 2) then {
	_x animate ["GateDoor_3", 0];	
} else {
	_x animate ["GateDoor_3", 5];	
};		
} forEach (nearestObjects [player, ["Land_Gate_C","Land_Gate_EMS"], 10]);