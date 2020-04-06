/*
		Author: Kajetan "Kruk" Mruk
		Date: 16.03.2017
		Params: 
			0 - String, Type of update
			1 - Number, ID
			2 - Number, Wanted level
			3 - String, UID
		Description: Updates data in the database
		Return: nothing
*/
_type = _this select 0;
_id = _this select 1;
_wanted_level = round(_this select 2);
if(_wanted_level > 5) then { _wanted_level = 5; };
if(_wanted_level < 0) then { _wanted_level = 0; };
_uid = _this select 3;
_active = 1;
if(_wanted_level == 0) then { _active = 0; };
if(_type == "personal") then {
	_queryString = "";
	if(_active != 0) then {
		_queryString = format["updateSLPDWanted_wanted:%1:%2", _wanted_level, _id];
	} else {
		_queryString = format["updateSLPDWanted_close:%1:%2", _uid, _id];
	};
	_query = [0, _queryString] call ExternalS_fnc_ExtDBquery;
};
if(_type == "vehicle") then {
	_queryString = "";
	if(_active != 0) then {
		_queryString = format["updateSLPDWantedVehicle_wanted:%1:%2", _wanted_level, _id];
	} else {
		_queryString = format["updateSLPDWantedVehicle_close:%1:%2", _uid, _id];
	};
	_query = [0, _queryString] call ExternalS_fnc_ExtDBquery;
};