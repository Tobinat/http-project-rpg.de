/*
	File: fn_wantedFetch.sqf
	"
	
	Description:
	Displays wanted list information sent from the server.
*/

params [["_ret", objNull, [objNull]], "_list", "_jailedUnits"];
if(isNull _ret) exitWith {};

_jailedUnits = [];
{if(_x distance (getMarkerPos "jail_marker") < 120) then {_jailedUnits pushBack getPlayerUID _x}} foreach playableUnits;

_list = [];
{
	_uid = _x select 1;
	if([_uid] call life_fnc_isUIDActive) then
	{
		if(!(_uid in _jailedUnits)) then {
			_list pushBack _x;
		};
	};
} foreach life_wanted_list;
[_list] remoteExecCall ["life_fnc_wantedList",_ret];