/*
Refine Logs trees by koil
*/
private["_localprotection"];

if(backpack player == "") exitwith { hint "Hol dir einen Rucksack bevor du das tragen willst!"; };

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
		hint "Du verarbeitest dein Holz, habe Geduld und trink nen Kaffe!"
	};
} forEach attachedObjects vehspawned;
hint "Dein Holz wurde verarbeitet und in deinen Kofferraum geschmissen!";  
totalLogs = 0;

globalProtection = 0;