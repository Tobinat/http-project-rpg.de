/*
Refine Logs trees by koil
*/
private["_localprotection"];

if(backpack player == "") exitwith { ["Du brauchst einen Rucksack!",false] spawn domsg; };
if(isNil "globalProtection") then { globalProtection = 0; };
if(globalProtection != 0) exitwith { ["Eins nach dem anderen!",false] spawn domsg; };
_localProtection = 0;

if(vehSpawned distance player > 10 || isNil {vehSpawned} || isnull vehSpawned ) exitwith { ["Willst du die stämme den ganzen weg Tragen?",false] spawn domsg; };
{
	if(_x distance vehspawned < 10) then {
		_localProtection = _localprotection + 1;
		globalProtection = globalProtection + 1;
		if(_localProtection != globalProtection) exitwith { [1,"Refine Pelt Script"] spawn client_fnc_anticheat; };
		detach _x;
		deletevehicle _x;
		_sound = round(random 5);
		playSound3D ["CG_Jobs\sounds\sawing\saw.ogg", player, false, getPosasl player, 7, 1, 25];
		player additem "NP_Wood";
		["Processed"] spawn mav_ttm_fnc_addExp;
		uisleep 0.25;
		if(dialog) then { closedialog 0; };
		["Du Verarbeitest Holz, bleibe kurz stehen!",false] spawn domsg;
	};
} forEach attachedObjects vehspawned;
["Du bist fertig!",false] spawn domsg;
//[player,objNull,30,format ["%1 hat Holz gemacht. Menge an verarbeitetem Holz: %2",name player, totalLogs],totalLogs] remoteExec ["server_fnc_actionLog", 2];
totalLogs = 0;

globalProtection = 0;
