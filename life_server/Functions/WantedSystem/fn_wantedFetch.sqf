/*
	File: fn_wantedFetch.sqf
	Author: Bryan "Tonic" Boardwine"
	
	Description:
	Displays wanted list information sent from the server.
*/

_ret = param [0,ObjNull,[ObjNull]];

if(isNull _ret) exitWith {};

_ret = owner _ret;
private _jailedUnits = [];
{if(_x distance (getMarkerPos "jail_marker") < 120) then {_jailedUnits pushBack getPlayerUID _x}} forEach playableUnits;

private _list = [];
{
	_uid = _x select 1;
	if([_uid] call life_fnc_isUIDActive) then
	{
		if(!(_uid in _jailedUnits)) then {
			_list pushBack _x;
		};
	};
} foreach life_wanted_list;

[_list] remoteExec ["life_fnc_wantedList",_ret];
