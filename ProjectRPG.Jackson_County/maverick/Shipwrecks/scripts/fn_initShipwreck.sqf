/*
	Author: Maverick Applications
	Desc: Altis Life Shipwreck
*/

//Do not touch below
if(!isServer) exitWith {};
[] spawn {
	private["_positions","_position","_ship","_ship2","_createNewWreck","_deleteOldWreck","_lastCreateTime","_marker","_markerZone","_radius"];
	sleep 360;
	_positions = getArray(missionConfigFile >> "Maverick_Shipwrecks" >> "Positions");
	_ship = objNull;
	_ship2 = objNull;
	_lastCreateTime = time - 360;
	_radius = getNumber(missionConfigFile >> "Maverick_Shipwrecks" >> "Radius");

	_createNewWreck = {
		_position = selectRandom _positions;

		_marker = createMarker ["shipwreck",_position];
		_marker setMarkerColor "ColorBlack";
		_marker setMarkerType "mil_warning";
		_marker setMarkerText "Wrak Statku";
		_marker setMarkerAlpha 0.95;

		_markerZone = createMarker ["shipwreckzone",_position];
		_markerZone setMarkerColor "ColorGrey";
		_markerZone setMarkerType "Empty";
		_markerZone setMarkerShape "ELLIPSE";
		_markerZone setMarkerSize [_radius,_radius];

		_position = [((_position select 0) - _radius) + random(_radius*2),((_position select 1) - _radius) + random(_radius*2),0];
		_ship = "Land_Wreck_Traw_F" createVehicle _position;
		_ship allowDamage false;
		_ship setDamage 0;
		_ship setPosATL _position;
		_ship enableSimulationGlobal false;
		_ship setVariable ["wrecktime", time];
		_ship setVariable ["wreckloot", selectRandom(getArray(missionConfigFile >> "Maverick_Shipwrecks" >> "ShipLoot")), true];


		_ship2 = "Land_Wreck_Traw2_F" createVehicle _position;
		_ship2 allowDamage false;
		_ship2 setDamage 0;
		_ship2 setPosATL [(_position select 0) + random(50), (_position select 1) + random(50), 0];
		_ship2 enableSimulationGlobal false;
		_ship2 setVariable ["wrecktime", time];

		getText(missionConfigFile >> "Maverick_Shipwrecks" >> "SpawnMSG") remoteExecCall ["hint",0];
	};

	_deleteOldWreck = {
		if(!isNull _ship) then {
			getText(missionConfigFile >> "Maverick_Shipwrecks" >> "DeleteMSG") remoteExecCall ["hint",0];
			sleep 5;
			deleteVehicle _ship;
			deleteVehicle _ship2;
			deleteMarker "shipwreck";
			deleteMarker "shipwreckzone";
		};
		_ship = objNull;
		_ship2 = objNull;
		_lastCreateTime = time;
	};

	for "_i" from 0 to 1 step 0 do  {
		if(isNull _ship) then {
			if((time - _lastCreateTime) >= (getNumber(missionConfigFile >> "Maverick_Shipwrecks" >> "ShipwreckInterval"))) then {
				[] call _deleteOldWreck;
				[] call _createNewWreck;
				_lastCreateTime = time + (getNumber(missionConfigFile >> "Maverick_Shipwrecks" >> "ShipwreckInterval"));
			};
		} else {
			if((_ship getVariable ["wreckloot", []]) isEqualTo []) then {
				[] call _deleteOldWreck;
			};
		};

		sleep 45;
	};
};