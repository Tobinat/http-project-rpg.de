/*
	File: fn_queryRequest.sqf
	
	
	Description:
	Handles the incoming request and sends an asynchronous query 
	request to the database.
	
	Return:
	ARRAY - If array has 0 elements it should be handled as an error in client-side files.
	STRING - The request had invalid handles or an unknown error and is logged to the RPT.
*/

params [["_uid", "", [""]], ["_side", sideUnknown, [civilian]], ["_sender", objNull, [objNull]],
"_query", "_return", "_queryResult", "_qResult", "_handler", "_thread", "_tickTime", "_loops"];

if(isNull _sender) exitWith {};

_query = switch(_side) do {
	case west: {format["SELECT playerid, name, cash, bankacc, adminlevel, donatorlvl, cop_licenses, coplevel, cop_gear, blacklist FROM players WHERE playerid='%1'",_uid];};
	case east: {format["SELECT playerid, name, cash, bankacc, adminlevel, donatorlvl, civ_licenses, arrested, civ_gear, jailtime, arrestreason, streamSaftey FROM players WHERE playerid='%1'",_uid];};
	case civilian: {format["SELECT playerid, name, cash, bankacc, adminlevel, donatorlvl, civ_licenses, arrested, civ_gear, jailtime, arrestreason, streamSaftey FROM players WHERE playerid='%1'",_uid];};
	case independent: {format["SELECT playerid, name, cash, bankacc, adminlevel, donatorlvl, med_licenses, mediclevel, med_gear FROM players WHERE playerid='%1'",_uid];};
};
_tickTime = diag_tickTime;
_queryResult = [_query,2] call DB_fnc_asyncCall;

diag_log "------------- Client Query Request -------------";
diag_log format["QUERY: %1",_query];
diag_log format["Time to complete: %1 (in seconds)",(diag_tickTime - _tickTime)];
diag_log format["Result: %1",_queryResult];
diag_log "------------------------------------------------";

if(isNil "_queryResult") exitWith {
	remoteExecCall ["SOCK_fnc_dataQuery",_sender];
};

if(typeName _queryResult isEqualTo "STRING") exitWith {
	[_uid,name _sender,0,45000,_sender] call DB_fnc_insertRequest;	
};

if(count _queryResult isEqualTo 0) exitWith {
	[_uid,name _sender,0,45000,_sender] call DB_fnc_insertRequest;	
};

_name = _queryResult select 1;
if(name _sender != _name) then {
	_query = format["SELECT aliases FROM players WHERE playerid='%1'",_uid];
	_aliases = [([_query,2] call DB_fnc_asyncCall) select 0] call DB_fnc_mresToArray;
	if(name _sender in _aliases && _name in _aliases) then {
		_query = format["UPDATE players SET name='%1' WHERE playerid='%2'",name _sender,_uid];
		[_query,1] call DB_fnc_asyncCall;
	} else {
		if(_name isEqualTo "") then {
			_aliases = [name _sender];
			_aliases = [_aliases] call DB_fnc_mresArray;
			_query = format["UPDATE players SET name='%1', aliases='%2' WHERE playerid='%3'",name _sender,_aliases,_uid];
			[_query,1] call DB_fnc_asyncCall;
		} else {
			_needsToBeSaved = false;
			if!(_name in _aliases) then {
				_aliases pushBack _name;
				_needsToBeSaved = true;
			};
			if!(name _sender in _aliases) then {
				_aliases pushBack name _sender;
				_needsToBeSaved = true;
			};
			if(_needsToBeSaved) then {
				_aliases = [_aliases] call DB_fnc_mresArray;
				_query = format["UPDATE players SET name='%1', aliases='%2' WHERE playerid='%3'",name _sender,_aliases,_uid];
				[_query,1] call DB_fnc_asyncCall;			
			};
		};
	};
};

private["_tmp"];
_tmp = _queryResult select 2;
_queryResult set[2,[_tmp] call DB_fnc_numberSafe];
_tmp = _queryResult select 3;
_queryResult set[3,[_tmp] call DB_fnc_numberSafe];

_new = [(_queryResult select 6)] call DB_fnc_mresToArray;
if(typeName _new isEqualTo "STRING") then {_new = call compile format["%1", _new];};
_queryResult set[6,_new];

_old = _queryResult select 6;
for "_i" from 0 to (count _old)-1 do
{
	_data = _old select _i;
	_old set[_i,[_data select 0, ([_data select 1,1] call DB_fnc_bool)]];
};

_queryResult set[6,_old];
_new = [(_queryResult select 8)] call DB_fnc_mresToArray;
if(typeName _new isEqualTo "STRING") then {_new = call compile format["%1", _new];};
_queryResult set[8,_new];

switch (_side) do {
	case west: {
		_queryResult set[9,([_queryResult select 9,1] call DB_fnc_bool)];
	};
	case east: {
		_tmp = _queryResult select 9;
		_queryResult set[9,[_tmp] call DB_fnc_numberSafe];

		_new = _queryResult select 10;
		_new = format["%1", _new];
		_queryResult set[10,_new];

		_queryResult set[7,([_queryResult select 7,1] call DB_fnc_bool)];
		_queryResult set[11,([_queryResult select 11,1] call DB_fnc_bool)];	
		_houseData = _uid call TON_fnc_fetchPlayerHouses;
		_queryResult pushBack (missionNamespace getVariable[format["houses_%1",_uid],[]]);
		_gangData = _uid call TON_fnc_queryPlayerGang;
		_queryResult pushBack (missionNamespace getVariable[format["gang_%1",_uid],[]]);
	};
	case civilian: {
		_tmp = _queryResult select 9;
		_queryResult set[9,[_tmp] call DB_fnc_numberSafe];

		_new = _queryResult select 10;
		_new = format["%1", _new];
		_queryResult set[10,_new];

		_queryResult set[7,([_queryResult select 7,1] call DB_fnc_bool)];
		_queryResult set[11,([_queryResult select 11,1] call DB_fnc_bool)];	
		_houseData = _uid call TON_fnc_fetchPlayerHouses;
		_queryResult pushBack (missionNamespace getVariable[format["houses_%1",_uid],[]]);
		_gangData = _uid call TON_fnc_queryPlayerGang;
		_queryResult pushBack (missionNamespace getVariable[format["gang_%1",_uid],[]]);
	};
};

_queryResult remoteExecCall ["SOCK_fnc_requestReceived",_sender];