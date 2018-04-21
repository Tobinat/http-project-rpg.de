/*
		Author: Kajetan "Kruk" Mruk
		Date: 16.03.2017
		Params: 
			0 - Object, player object
			1 - UID, looked for player uid
			2 - String, type(personal/vehicle)
		Description: Returns data to the client police computer with personal data
		Return: [_case]
*/
_player = _this select 0;
_id = _this select 1;
_type = _this select 2;
if(isNull _player) exitWith {};

if(isNil "_type") then { _type = "";};
if(_type == "vehicle") then {
	_query = format ["getSLPDWantedVehicle_case:%1", _id];
	_case = [_query,2] call ExternalS_fnc_ExtDBasync;
	_case = _case select 0;
	[_case, "vehicle"] remoteExec ["client_fnc_slpd_load_checkCase", _player];
} else {
	_query = format ["getSLPDWanted_case:%1", _id];
	_case = [_query,2] call ExternalS_fnc_ExtDBasync;
	_case = _case select 0;
	[_case, "personal"] remoteExec ["client_fnc_slpd_load_checkCase", _player];
};
