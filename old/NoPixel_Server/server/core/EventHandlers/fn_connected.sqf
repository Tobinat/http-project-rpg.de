 /*
	Author: KifKick
	For: stanlakeside.pl
	Date: 19.01.2017 (Non-retard Units)
	
		Params:
		0 - Object - player object
		1 - String - 1 or 0
		Description: Function that send SQL query to the server for get connected to server or not.
		Return: nothing
*/
 
 params["_playerUID","_type", "_name"];
 private["_updateStr"];

if(isNil "_playerUID" || isNil "_type") exitWith {diag_log "fn_connected.sqf: nil (1)";}; 
if("_type" == "") exitWith {diag_log "fn_connected.sqf: _type empty (2)";}; 
//if(isNull _playerUID || isNull "_type") exitWith {diag_log "fn_connected.sqf: _playerUID is null (3)"};

if(_type == "connected") exitWith {
	 _updateStr = format["updateConnected_connected:%1:%2", _name, _playerUID];
	 _update = [0, _updateStr] call ExternalS_fnc_ExtDBquery;
};
if(_type == "disconnected") exitWith {
	 _updateStr = format["updateConnected_disconnected:%1", _playerUID];
	 _update = [0, _updateStr] call ExternalS_fnc_ExtDBquery;
};

