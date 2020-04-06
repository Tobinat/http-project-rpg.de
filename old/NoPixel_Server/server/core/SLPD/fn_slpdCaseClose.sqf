/*
		Author: Kajetan "Kruk" Mruk
		Date: 16.03.2017
		Params: 
			0 - Number, id of a case
			1 - String, Type of update
			2 - String, officer uid
		Description: Updates data in the database
		Return: nothing
*/
_id = _this select 0;
_type = _this select 1;
_uid = _this select 2;
if(_type == "personal") then {
	_queryString = format["updateSLPDWanted_close:%1:%2", _uid, _id];
	_query = [0, _queryString] call ExternalS_fnc_ExtDBquery;
};
if(_type == "vehicle") then {
	_queryString = format["updateSLPDWantedVehicle_close:%1:%2", _uid, _id];
	_query = [0, _queryString] call ExternalS_fnc_ExtDBquery;
};
if(_type == "vehicle_all") then {
	_queryString = format["updateSLPDWantedVehicle_close_all:%1:%2", _uid, _id];
	_query = [0, _queryString] call ExternalS_fnc_ExtDBquery;
};