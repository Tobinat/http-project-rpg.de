/*
	Author: KifKick
	Date: 03.03.2017
	
	Params:
		1 - Object - player object that will be saved
		2 - String - uid of player
	Description: Function that saves player house level
	Return: nothing
*/
params ["_lvl","_uid"];
if ("_lvl" == "") exitWith {diag_log "Error in: SyncHouseLevel: lvl is not selected!";};
if (isNil "_uid") exitWith {diag_log "Error in: SyncHouseLevel: uid is nil!";};
_updatestr = format ["updateHouseLevel:%1:%2", _lvl, _uid];
_update = [0, _updatestr] call ExternalS_fnc_ExtDBquery;
