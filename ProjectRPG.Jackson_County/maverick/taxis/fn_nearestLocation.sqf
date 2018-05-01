/*--------------------------------------------------------------------------
    Author:		Maverick Applications
    Website:	https://maverick-applications.com

    You're not allowed to use this file without permission from the author!
---------------------------------------------------------------------------*/

params [
	["_position", [], [[], objNull]]
];

private _return = "Unknown Location";
private _locations = ((nearestLocations [_position, ["NameCity", "NameCityCapital", "NameMarine", "NameVillage", "NameLocal", "Airport"], 10000]) apply {text _x}) select {!(_x isEqualTo "")};

if !(_locations isEqualTo []) then {
	_return = _locations param [0, ""];
};

_return