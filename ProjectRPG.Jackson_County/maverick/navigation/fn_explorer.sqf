/*--------------------------------------------------------------------------
    Author:		Maverick Applications
    Website:	https://maverick-applications.com

    You're not allowed to use this file without permission from the author!
---------------------------------------------------------------------------*/

scopeName "explorer";

params[
	"_roadStart",
	"_roadEnd",
	"_preference"
];

private _preset = 0;

if( toLower( _preference ) isEqualTo "highway" ) then {
	_preset = 1;
};

private _total_distance = (_roadStart distance2D _roadEnd);

private _greedy = 1 + ( ( 1.337 * ( _total_distance / 10000 ) ) / 2 );

if( _preset isEqualTo 1 ) then {

	_greedy = 1.15;

	if( isNumber( missionConfigFile >> "maverick_navigation_cfg" >> "AlgorithmParameters" >> worldName >> "greedy") ) then {
		_greedy = getNumber( missionConfigFile >> "maverick_navigation_cfg" >> "AlgorithmParameters" >> worldName >> "greedy");
	};
};

private _openSet   = [];
private _closedSet = [];
private _return    = [];

_openSet pushBack [(_total_distance*_greedy), _roadStart, 0, _roadStart];

for "_i" from 0 to 1 step 0 do {

	if(_openSet isEqualTo []) then {[] breakOut "explorer";};

	(_openSet param [0]) params ["_current_f_score", "_currentRoad", "_current_g_score", "_cameFrom"];

	private _closedEntry = _openSet param [0];
	_closedEntry pushBack _cameFrom;
	_closedSet pushBack _closedEntry;
	_openSet deleteAt 0;

	if( _currentRoad isEqualTo _roadEnd ) then {

		private _endNode = _closedSet select { ( _x param [1] ) isEqualTo _roadEnd };

		if( !( _endNode isEqualTo [] )) then {

				_endNode = _endNode param [0];

			if( ( _endNode param [1] ) isEqualType objNull ) then {
				
				_return pushBack _roadEnd;
				
				for "_y" from 0 to 1 step 0 do {

					_return pushBack _cameFrom;

					if(_cameFrom isEqualTo _roadStart) exitWith {};

					private _goBackNode = _closedSet select {(_x param [1]) isEqualTo _cameFrom};

					if( !( _goBackNode isEqualTo [] )) then {

						_goBackNode = _goBackNode param [0];
						_cameFrom = _goBackNode param [4];
					} else {
						[] breakOut "explorer";
					};
				};
			} else {
				[] breakOut "explorer";
			};
		} else {
			[] breakOut "explorer";
		};

		reverse _return;
		_return breakOut "explorer";
	};

	private _radius = 16;

	private _array = roadsConnectedTo _currentRoad;
	_array append ( (_currentRoad nearRoads _radius) select { !( ( _x isEqualTo _currentRoad ) || ( _x isEqualTo _cameFrom ) ) } );
	_array = _array arrayIntersect _array;

	if( isNumber( missionConfigFile >> "maverick_navigation_cfg" >> "AlgorithmParameters" >> worldName >> "radius") ) then {
		_radius = getNumber( missionConfigFile >> "maverick_navigation_cfg" >> "AlgorithmParameters" >> worldName >> "radius");
	};

	for "_i" from 1 to 3 step 1 do {
		if( !( _array isEqualTo [] || ( (count _array) isEqualTo 1 ) ) ) exitWith {};
		_array append ( (_currentRoad nearRoads ( _radius * _i )) );
		_array = _array arrayIntersect _array;
	};

	private _roadCnt = count _array;

	private _cost = -1;

	{
		private _neighbour = _x;

		if((_roadCnt > 2) || {_cost isEqualTo -1}) then {

			private _roadTypes = [
				[3.2,[1.5,30]],
				[4.15,[1.25,18]],
				[6.32,[1,1]]
			];
			private _testIndex = 0;
			{
				private _offset = _currentRoad getRelDir _neighbour;
				if((isOnRoad (_neighbour getRelPos [(_roadTypes param [_testIndex]) param [0], 90 + _offset])) && (isOnRoad (_neighbour getRelPos [(_roadTypes param [_testIndex]) param [0], 270 + _offset])))then{
					_cost = ((_roadTypes param [_testIndex]) param [1]) param [_preset];
				};
				_testIndex = _testIndex + 1;
				false;
			} count _roadTypes;
			if(_cost isEqualTo -1)then{
				_cost = ((_roadTypes param [0]) param [1]) param [_preset];
			};
		};

		private _tentative_g_score = _current_g_score + _cost;
		private _f_score = _current_g_score + ((_neighbour distance2D _roadEnd)*_greedy);

		private _closedNode = _closedSet select {(_x param [1]) isEqualTo _neighbour};
		if( !( _closedNode isEqualTo [] ) ) then {

			_closedNode = _closedNode param [0];

			if(_tentative_g_score < (_closedNode param [2])) then {

				private _index = _closedSet find _closedNode;
				(_closedSet param [_index]) set [0, _f_score];
				(_closedSet param [_index]) set [2, _tentative_g_score];
				(_closedSet param [_index]) set [3, _currentRoad];
			};
		} else {

			private _node = _openSet select {(_x param [1]) isEqualTo _neighbour};

			if(_node isEqualTo [])then{

				_openSet pushBack [_f_score, _neighbour, _tentative_g_score, _currentRoad];
			} else {

				_node = _node param [0];

				if(_tentative_g_score < (_node param [2]))then{

					private _index = _openSet find _node;
					(_openSet param [_index]) set [0, _f_score];
					(_openSet param [_index]) set [2, _tentative_g_score];
					(_openSet param [_index]) set [3, _currentRoad];
				};
			};
		};

		false;
	} count _array;

	_openSet sort true;
};