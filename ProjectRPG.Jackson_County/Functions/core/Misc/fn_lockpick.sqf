if(currentcursortarget iskindof "man") then {
	[] remoteExec ["client_fnc_unrestrained",currentcursortarget];
};

if(currentcursortarget iskindof "car"  || currentcursortarget iskindof "boat" || currentcursortarget iskindof "Air") then {
	current_cars pushback currentcursortarget;
	[player,objNull,18,format ["%1 zwytrychował %2", name player, typeOf currentcursortarget],typeOf currentcursortarget] remoteExec ["server_fnc_actionLog", 2];
};

	["Remove","Karma",15] call client_fnc_sustain;
	["VehicleLockpicked"] spawn mav_ttm_fnc_addExp;