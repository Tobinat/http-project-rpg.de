private["_name","_markers"];

waituntil{visiblemap};

_markers = [];

{
	if ( _x getVariable["robber",FALSE] ) then {
		_marker = createMarkerLocal [format["%1_TRACKED_BANK_ROBBER",name _x],visiblePosition _x];
		_marker setMarkerColorLocal "ColorRed";
		_marker setMarkerTypeLocal "hd_dot";
		_marker setMarkerTextLocal "Bank Robbery";
		_markers pushBack [_marker,_x];
	};

	if ( _x in currentcop && driver (vehicle _x) == _x) then {
		_marker = createMarkerLocal [format["%1_PD_UNIT",name _x],visiblePosition _x];
		_marker setMarkerColorLocal "ColorBlue";
		_marker setMarkerTypeLocal "hd_dot";
		_marker setMarkerTextLocal format["%1_PD_UNIT",name _x];
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






