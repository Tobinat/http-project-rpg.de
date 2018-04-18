/*
		Author: Kajetan "Kruk" Mruk
		Date: 15.03.2017
		Params:
			0 - String, type of addition(personal/vehicle)
		Description: Adds vehicle or person to the database
		Return: none
*/
disableSerialization;
_type = _this select 0;
_uid_officer = getPlayerUID player;
if(_type == "vehicle") then {
	_display = findDisplay 666004;
	_plate = ctrlText 1001;
	_level = parseNumber(ctrlText 1002);
	_desc = ctrlText 1003;
	_reason = ctrlText 1004;
	_data = [_plate, _desc, _uid_officer, _reason, _level];
	["vehicle", _data] remoteExec ["server_fnc_slpdCaseAdd", 2];
};
if(_type == "personal") then {
	_uid_suspect = _this select 1;
	_display = findDisplay 666005;
	_reason = ctrlText 1001;
	_level = parseNumber(ctrlText 1002);
	_data = [_uid_suspect, _uid_officer, _reason, _level];
	["personal", _data] remoteExec ["server_fnc_slpdCaseAdd", 2];
};