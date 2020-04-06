/*
		Author: Kajetan "Kruk" Mruk
		Date: 16.03.2017
		Params: 
			0 - String, Type of update
			1 - Array, data
		Description: Updates data in the database
		Return: nothing
*/
_type = _this select 0;
_data = _this select 1;
if(_type == "personal") exitWith {
	_uid_suspect = _data select 0;
	_uid_officer = _data select 1;
	_charges = _data select 2;
	_wanted_level = round(_data select 3);
	if(_wanted_level > 5) then { _wanted_level = 5; };
	if(_wanted_level < 0) then { _wanted_level = 0; };
	_active = 0;
	if(_wanted_level != 0) then { _active = 1; };
	_queryString = format["insertSLPDWanted:%1:%2:%3:%4:%5", _uid_suspect, _uid_officer, _charges, _wanted_level, _active];
	_query = [0, _queryString] call ExternalS_fnc_ExtDBquery;
};
if(_type == "vehicle") exitWith {
	_plate = _data select 0;
	_desc = _data select 1;
	_uid_officer = _data select 2;
	_reason = _data select 3;
	_wanted_level = round(_data select 4);
	if(_wanted_level > 5) then { _wanted_level = 5; };
	if(_wanted_level < 0) then { _wanted_level = 0; };
	_active = 0;
	if(_wanted_level != 0) then { _active = 1; };
	_queryString = format["insertSLPDWantedVehicle:%1:%2:%3:%4:%5:%6", _plate, _desc, _uid_officer, _reason, _wanted_level, _active];
	_query = [0, _queryString] call ExternalS_fnc_ExtDBquery;
};
if(_type == "ticket") exitWith {
	_uid_officer = _data select 0;
	_uid_player = _data select 1;
	_amount = _data select 2;
	_reason = _data select 3;
	_points = _data select 4;
	_queryString = format["insertSLPDTicket:%1:%2:%3:%4:%5", _uid_officer, _uid_player, _amount, _reason, _points];
	_query = [0, _queryString] call ExternalS_fnc_ExtDBquery;
};