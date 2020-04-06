if !("ItemMap" in items player) then {
	player addweapon "ItemMap";
};

if (VehicleMarkers_TOGGLE) then {
	Veh_Markers = [];
	hint "Vehicle Markers ON";
	VehicleMarkers_TOGGLE = false;
} else {
	hint "Vehicle Markers OFF";
	VehicleMarkers_TOGGLE = true;
};

while {!VehicleMarkers_TOGGLE} do {
	{
		_veh = _x;
		_wantedTypes = ["Air", "Water", "Land", "Tank"];
		_good = false;
		{
			if (_veh isKindOf _x) exitwith {
				_good = true
			};
		}forEach _wantedTypes;
		_marker = str _x;
		deleteMarkerLocal _marker;
		if (_good) then {
			_marker = createMarkerLocal[_marker, getPos _x];
			Veh_Markers = Veh_Markers + [_marker];
			_marker setMarkerTypeLocal "waypoint";
			_marker setMarkerPosLocal getPos _x;
			_marker setMarkerSizeLocal[0.5, 0.5];
			_marker setMarkerTextLocal format['%1', typeOf _x];
			if ((_x isKindOf "Air") || (_x isKindOf "Tank")) then {
				_marker setMarkerColorLocal "ColorRed";
			} else {
				if ((_x isKindOf "Land") || (_x isKindOf "Water")) then {
					_marker setMarkerColorLocal "ColorBlue";
				};
			};
		};
	}forEach vehicles;
	sleep 1;
};

{
	deleteMarkerLocal _x;
}forEach Veh_Markers;