/*
	Author: KifKick
	Date: 03.03.2017
	
	Params:
		1 - Object - player object that will be saved
		2 - String - uid of player
	Description: Function that saves player statuses
	Return: nothing
*/
params ["_statuses","_uid"];
if(isNil "_statuses") exitwith { diag_log "Error in: SyncStatuses: statuses is nil"; };
if (isNil "_uid") exitWith {diag_log "Error in: SyncStatuses: uid is nil!";};
_updatestr = format ["updatePlayerStatuses:%1:%2", _statuses, _uid];
_update = [0, _updatestr] call ExternalS_fnc_ExtDBquery;
