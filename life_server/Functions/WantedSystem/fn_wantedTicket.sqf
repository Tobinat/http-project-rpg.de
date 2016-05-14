/*
	File: fn_wantedTicket.sqf
	Author: Bryan "Tonic" Boardwine
	
	Description:
	Checks the price of the ticket against the bounty, if => then bounty remove them from the wanted list.
*/

params [
	["_uid","",[""]],
	["_price",0,[0]]
];

if(_uid == "" OR _price == 0) exitWith {};

private _ind = [_uid,life_wanted_list] call TON_fnc_index;
if(_ind == -1) exitWith {};
life_wanted_list set[_ind,-1];
life_wanted_list = life_wanted_list - [-1];

diag_log format["WANTED_LIST = %1", life_wanted_list];
_wantedlist = [life_wanted_list] call DB_fnc_mresArray;
_query = format["UPDATE wanted set list = '%1'", _wantedlist];

_queryResult = [_query,1] call DB_fnc_asyncCall;