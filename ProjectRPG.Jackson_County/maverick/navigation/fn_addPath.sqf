/*--------------------------------------------------------------------------
    Author:		Maverick Applications
    Website:	https://maverick-applications.com

    You're not allowed to use this file without permission from the author!
---------------------------------------------------------------------------*/

params [
	["_path", [], [[]]]
];

if (_path isEqualTo []) exitWith {false};

private _pathPairs = [];
{
	private _nextSegment = _x;
	private _previousSegment = _path param [_forEachIndex - 1, objNull];
	if (!isNull _nextSegment && {!isNull _previousSegment}) then {
		_pathPairs pushBack [_previousSegment, _nextSegment];
	};

} forEach _path;

{
	[_x select 0, _x select 1] call MAV_gps_fnc_addPathSegment
} count _pathPairs;

true