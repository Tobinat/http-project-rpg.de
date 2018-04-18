/*
Refine Logs trees by koil
*/
private["_localprotection"];

if(backpack player == "") exitwith { hint "Musisz mieć plecak!"; };

if(isNil "globalProtection") then { globalProtection = 0; };
if(globalProtection != 0) exitwith { hint "Już przetwarzam"; };
_localProtection = 0;

if(vehSpawned distance player > 15 || isNil {vehSpawned} || isnull vehSpawned ) exitwith { hint "Twoja ciężarówka jest zbyt daleko!"; };
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
		hint "Przerabiasz drewno, stój w miejscu!"
	};
} forEach attachedObjects vehspawned;
hint "Drewno przerobione.";
["Processed"] spawn mav_ttm_fnc_addExp;
[player,objNull,30,format ["%1 przerobił drewno. Ilość drewna przerobionego: %2",name player, totalLogs],totalLogs] remoteExec ["server_fnc_actionLog", 2];
totalLogs = 0;

globalProtection = 0;