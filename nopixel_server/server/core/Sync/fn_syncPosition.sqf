/*
	Author: KifKick
	Date: 03.03.2017
	
	Params:
		1 - Object - player object that will be saved
		2 - String - uid of player
	Description: Function that saves player position
	Return: nothing
*/
params ["_position","_uid"];
if(isNil "_position") exitwith { diag_log "Error in: SyncPosition: position is nil"; };
if (isNil "_uid") exitWith {diag_log "Error in: SyncPosition: uid is nil!";};
_updatestr = format ["updatePlayerPosition:%1:%2", _position, _uid];
_update = [0, _updatestr] call ExternalS_fnc_ExtDBquery;
