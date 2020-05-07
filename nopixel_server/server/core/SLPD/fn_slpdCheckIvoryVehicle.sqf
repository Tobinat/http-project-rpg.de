/*
		Author: PRPG
		Date: 07.05.2020
			Params: 
			0 - player
			1 - plate
		Description: kenzeichen abfrage für ivory computer
		Return: vehicle data array
*/
_player = _this select 0;
_plate = _this select 1;

_query = format["getSLPDVehicle_plate:%1", _plate];
_vehInfo = [_query,2] call ExternalS_fnc_ExtDBasync;
_vehinfo = _vehInfo select 0;

/*
_query = format ["getSLPDWantedVehicle_plate:%1", _plate];
_wanted = [_query,2] call ExternalS_fnc_ExtDBasync;
*/

[_vehinfo] remoteexec ["fn_slpd_checkplate",_player];