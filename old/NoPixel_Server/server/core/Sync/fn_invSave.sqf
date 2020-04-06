/*
	Author: Kajetan "Kruk" Mruk
	Edit: KifKick
	Date: 22.01.2017 (Non-retard Units)
	
	Params:
		1 - Object - player object that will be saved
		2 - Array - items of player
		3 - String - uid of player
	Description: Function that saves player inventory
	Return: nothing
*/
params ["_player","_items","_uid"];
if (isNull _player) exitWith {diag_log "Error in: invSave _player is null!";};
if (isNil "_uid") exitWith {diag_log "Error in: invSave: uid is nil!";};
//_items = getunitloadout _player;
if(!(_player in CurrentCop || _player in currentEMS || _player in currentFire)) then {
	_updatestr = format ["updatePlayerInv:%1:%2", _items, _uid];
	_update = [0, _updatestr] call ExternalS_fnc_ExtDBquery;
};
