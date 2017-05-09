/*
Refine Logs trees by koil
*/
private["_localprotection"];

if(backpack player == "") exitwith { hint "You need to grab a backpack before doing this!"; };

if(isNil "globalProtection") then { globalProtection = 0; };
if(globalProtection != 0) exitwith { hint "Error - Already processing"; };
_localProtection = 0;

if(vehSpawned distance player > 15 || isNil {vehSpawned} || isnull vehSpawned ) exitwith { hint "Your truck is too far away!"; }; 
{ 
	if(_x distance vehspawned < 11) then {

		_localProtection = _localprotection + 1;
		globalProtection = globalProtection + 1;
		if(_localProtection != globalProtection) exitwith { [1,"Refine Pelt Script"] spawn client_fnc_anticheat; };
		detach _x;
		deletevehicle _x; 
		_sound = round(random 5);
		playSound3D ["CG_Jobs\sounds\sawing\saw.ogg", player, false, getPosasl player, 7, 1, 25];
		player additem "NP_Wood";	
		uisleep 0.25;
		if(dialog) then { closedialog 0; };
		hint "You are refining wood, stay still!"
	};
} forEach attachedObjects vehspawned;
hint "Wood refined & placed in inventory";  
totalLogs = 0;

globalProtection = 0;