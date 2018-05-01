/*--------------------------------------------------------------------------
    Author:		Maverick Applications
    Website:	https://maverick-applications.com

    You're not allowed to use this file without permission from the author!
---------------------------------------------------------------------------*/

params [
	"_startPos",
	"_wayPoints",
	"_preference"
];

private _return = [];

for "_y" from 0 to 1 step 0 do {
	
	if (_wayPoints isEqualTo []) exitWith {};

	private _endPos = _wayPoints param [0];

	if !(_return isEqualTo []) then {
		_return deleteAt 0;
	};

	if( !( ( toLower(worldName) find "altis" ) isEqualTo -1 ) ) then {

		if ((_startPos inArea [[7737.795, 14336.498, 0], 6745.936, 10345.594, 0, true]) && {_endPos inArea [[20041.074, 9653.373, 0], 5428.237, 5627.76, 0, true]}) then {

			private _roadCheckpoint = ([15800.1,16281.5,0.0014534] nearRoads 5) select 0;
			_return append ([ _startPos, _roadCheckpoint, _preference] call MAV_gps_fnc_explorer);
			_return deleteAt ((count _return) - 1);

			_startPos = _roadCheckpoint;
		};
	};

	_return append ([ _startPos, _endPos, _preference] call MAV_gps_fnc_explorer);
	_wayPoints deleteAt 0;
	_startPos = _endPos;
};

reverse _return;
_return