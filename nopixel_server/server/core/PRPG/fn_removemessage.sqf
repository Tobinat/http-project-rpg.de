  /*
	Author: PRPG
	Date: 19.04.2020 (Non-retard Units)
	
		Return: nothing
		Description: Nachrichten werden gelöscht.
*/
private["_updateStr"];

_id = _this select 0;
_updateStr = format ["deletMessages:%1", _id];
_update = [0, _updateStr] call ExternalS_fnc_ExtDBquery;