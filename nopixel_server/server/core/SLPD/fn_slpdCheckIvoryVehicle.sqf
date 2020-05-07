/*
		Author: PRPG
		Date: 07.05.2020
			Params: 
			0 - numberplate
		Description: kenzeichen abfrage für ivory computer
		Return: vehicle data array
*/
_plate = _this select 0;

_query = format["getSLPDVehicle_plate:%1", _plate];
_vehInfo = [_query,2] call ExternalS_fnc_ExtDBasync;
_return = _vehInfo select 0;

/*
_query = format ["getSLPDWantedVehicle_plate:%1", _plate];
_wanted = [_query,2] call ExternalS_fnc_ExtDBasync;
*/

_return