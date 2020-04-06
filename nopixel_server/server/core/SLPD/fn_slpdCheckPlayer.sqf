/*
		Author: Kajetan "Kruk" Mruk
		Date: 16.03.2017
		Params: 
			0 - Object, player object
			1 - UID, looked for player uid
		Description: Returns data to the client police computer with personal data
		Return: [_activeCases, _prevCases, _tickets, _vehicles, _playerInfo]
*/
_type = "";
_player = _this select 0;
_uid = _this select 1;
_type = _this select 2;

if(isNil "_type") then { _type = ""; };
if(isNull _player) exitWith {};
if(_type == "name") then {
	_query = format ["getSLPDplayerInfo_name:%1", _uid];
	_uid = (([_query,2] call ExternalS_fnc_ExtDBasync) select 0) select 0;
};

_query = format ["getSLPDWanted_uid:%1:1", _uid];
_activeCases = [_query,2] call ExternalS_fnc_ExtDBasync;

_query = format ["getSLPDWanted_uid:%1:0", _uid];
_prevCases = [_query,2] call ExternalS_fnc_ExtDBasync;

_query = format ["getSLPDticket_uid:%1", _uid];
_tickets = [_query,2] call ExternalS_fnc_ExtDBasync;

_query = format ["getGarage:%1", _uid];
_vehicles = [_query,2] call ExternalS_fnc_ExtDBasync;

_query = format ["getSLPDplayerInfo_uid:%1", _uid];
_playerInfo = [_query,2] call ExternalS_fnc_ExtDBasync;


[_activeCases, _prevCases, _tickets, _vehicles, _playerInfo] remoteExec ["client_fnc_slpd_load_personalData", _player];