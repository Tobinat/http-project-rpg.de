/*
	File: fn_insertRequest.sqf
	
	
	Description:
	Does something with inserting... Don't have time for
	descriptions... Need to write it...
*/

params [["_uid", "", [""]], ["_name", "", [""]], ["_money", 0, [""]], ["_bank", 2500, [""]], ["_returnToSender", objNull, [objNull]],
"_side", "_licenses", "_handler", "_thread", "_queryResult", "_query", "_alias", "_arrestreason"];

if((_uid isEqualTo "") OR (_name isEqualTo "")) exitWith {systemChat "Bad UID or name";}; 
if(isNull _returnToSender) exitWith {systemChat "ReturnToSender is Null!";}; 

_query = format["SELECT playerid, name FROM players WHERE playerid='%1'",_uid];

_tickTime = diag_tickTime;
_queryResult = [_query,2] call DB_fnc_asyncCall;

diag_log "------------- Insert Query Request -------------";
diag_log format["QUERY: %1",_query];
diag_log format["Time to complete: %1 (in seconds)",(diag_tickTime - _tickTime)];
diag_log format["Result: %1",_queryResult];
diag_log "------------------------------------------------";

if(typeName _queryResult isEqualTo "STRING") exitWith {[] remoteExecCall ["SOCK_fnc_dataQuery",_returnToSender]}; 
if(count _queryResult != 0) exitWith {[] remoteExecCall ["SOCK_fnc_dataQuery",_returnToSender]};

_name = [_name] call DB_fnc_mresString; 
_alias = [[_name]] call DB_fnc_mresArray;
_money = [_money] call DB_fnc_numberSafe;
_bank = [_bank] call DB_fnc_numberSafe;
_arrestreason = ["none"] call DB_fnc_mresString;

_query = format["INSERT INTO players (playerid, name, cash, bankacc, aliases, cop_licenses, med_licenses, civ_licenses, civ_gear, cop_gear, med_gear, arrestreason) VALUES('%1', '%2', '%3', '%4', '%5','""[]""','""[]""','""[]""','""[]""','""[]""','""[]""','%6')",
	_uid,
	_name,
	_money,
	_bank,
	_alias,
	_arrestreason
];

[_query,1] call DB_fnc_asyncCall;
[] remoteExecCall ["SOCK_fnc_dataQuery",_returnToSender];