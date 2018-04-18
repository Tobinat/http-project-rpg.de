if(isNil "basket") exitwith { 
	_units = nearestObjects [player, ["litter_civ"], 30];
	if(count _units > 0) then { 
		deletevehicle (_units select 0); 
		deletevehicle ((ropes vehicle player) select 0); 
		deletevehicle ((ropeAttachedObjects vehicle player) select 0); 
	};
	[] spawn client_fnc_unloadbasket; 
};
if(isNull basket || isNull myRope || isNull lure) exitwith {
	_units = nearestObjects [player, ["litter_civ"], 30];
	if(count _units > 0) then { 
		deletevehicle (_units select 0); 
		deletevehicle ((ropes vehicle player) select 0); 
		deletevehicle ((ropeAttachedObjects vehicle player) select 0); 
	};
	[] spawn client_fnc_unloadbasket; 
};
if(ropelength myrope > 15) exitwith { hint "Nie mogę opuścić niżej"; };
ropeUnwind [myrope, 0.5, 3, true];	
