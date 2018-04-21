/*
		Author: Kajetan "Kruk" Mruk
		Date: 15.03.2017
		Params: 
			0 - Object, player object
		Description: Returns data to the client police computer
		Return: [wanted_criminals, wanted_vehicles]
*/
_player = _this select 0;
if(isNull _player) exitWith {};

_query = format ["getSLPDWanted_active:%1", 1];
_criminals = [_query,2] call ExternalS_fnc_ExtDBasync;

_query = format ["getSLPDWantedVehicle_active:%1", 1];
_vehicles = [_query,2] call ExternalS_fnc_ExtDBasync;


[_criminals, _vehicles] remoteExec ["client_fnc_slpd_load_computerData", _player];