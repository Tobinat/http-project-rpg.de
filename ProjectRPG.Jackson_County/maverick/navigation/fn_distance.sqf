/*--------------------------------------------------------------------------
    Author:		Maverick Applications
    Website:	https://maverick-applications.com

    You're not allowed to use this file without permission from the author!
---------------------------------------------------------------------------*/

params [
	["_path", [], [[]]]
];

private _distance = 0;

{
	private _previous = _path param [_forEachIndex - 1, []];
	if !(_previous isEqualTo []) then {
		_distance = _distance + (_x distance _previous);
	};
} forEach _path;

_distance