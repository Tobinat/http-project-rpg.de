private["_name","_markers"];

waituntil{visiblemap};

_markers = [];

{
	if ( _x getVariable["dead",FALSE] ) then {
		_marker = createMarkerLocal [format["%1_dead_marker",name _x],visiblePosition _x];
		_marker setMarkerColorLocal "ColorRed";
		_marker setMarkerTypeLocal "loc_Hospital";
		_marker setMarkerTextLocal "Downed Person";
		_markers pushBack [_marker,_x];
	};
} foreach PlayableUnits;


while {visibleMap} do
{
	{
		private["_marker","_unit"];
		_marker = _x select 0;
		_unit = _x select 1;
		
		if(!isNil "_unit") then
		{
			if(!isNull _unit) then
			{
				_marker setMarkerPosLocal (visiblePosition _unit);
			};
		};
		
	} foreach _markers;
	if(!visibleMap) exitWith {};
	uiSleep 0.05;
};
{deleteMarkerLocal (_x select 0);} foreach _markers;	






