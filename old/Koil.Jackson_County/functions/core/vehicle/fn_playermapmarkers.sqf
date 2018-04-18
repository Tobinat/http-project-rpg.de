//tracks all tracked units, vehicle or player.

private["_name","_markers"];

waituntil{visiblemap};

_markers = [];

{
	if ( _x getVariable["tracking",FALSE]  ) then {
		_marker = createMarkerLocal [format["%1_TRACKING",name _x],visiblePosition _x];
		_marker setMarkerColorLocal "ColorRed";
		_marker setMarkerTypeLocal "loc_Hospital";
		_marker setMarkerTextLocal format["%1_TRACKING",name _x];
		_markers pushBack [_marker,_x];
	};
} foreach PlayableUnits;


{  
	if( _x getVariable["tracking",FALSE] ) then  
	{	 
		_rand = round (random(999));
		_marker = createMarkerLocal [format["%1_TRACKING",_rand],visiblePosition _x];
		_marker setMarkerColorLocal "ColorRed";
		_marker setMarkerTypeLocal "loc_Hospital";
		_marker setMarkerTextLocal format["%1_TRACKING",(typeof _x)];
		_markers pushBack [_marker,_x];	
	};   
} foreach vehicles;


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

