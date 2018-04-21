/*
	Author: KifKick
	Date: 03.03.2017
	
	Params:
		1 - Object - player object that will be saved
		2 - String - uid of player
	Description: Function that saves player respawn counter
	Return: nothing
*/
params ["_respawn","_uid"];
if(isNil "_respawn") exitwith { diag_log "Error in: SyncRespawn: statuses is nil"; };
if (isNil "_uid") exitWith {diag_log "Error in: SyncRespawn: uid is nil!";};
_updatestr = format ["updatePlayerRespawn:%1:%2", _respawn, _uid];
_update = [0, _updatestr] call ExternalS_fnc_ExtDBquery;
