private["_name","_markers"];

waituntil{visiblemap};

_markers = [];
if(visibleMap && "ItemGPS" in assignedItems player || visibleGPS) then {
	{
		if ( _x getVariable["robber",FALSE] ) then {
			_marker = createMarkerLocal [format["%1_NAMIERZONY_PRZESTĘPCA_BANK",name _x],visiblePosition _x];
			_marker setMarkerColorLocal "ColorRed";
			_marker setMarkerTypeLocal "hd_dot";
			_marker setMarkerTextLocal "NAMIERZONY WŁAMYWACZ DO BANKU";
			_markers pushBack [_marker,_x];
		};
		if ( _x getVariable["pbsee",FALSE] ) then {
			_marker = createMarkerLocal [format["%1_PANIC_BUTTON_CYWIL",name _x],visiblePosition _x];
			_marker setMarkerColorLocal "ColorRed";
			_marker setMarkerTypeLocal "hd_dot";
			_marker setMarkerTextLocal "NAMIERZONY PANIC BUTTON";
			_markers pushBack [_marker,_x];
		};

		if ( _x getVariable["tracking",FALSE]  ) then {
		_marker = createMarkerLocal [format["%1_TRACKING",name _x],visiblePosition _x];
		_marker setMarkerColorLocal "ColorRed";
		_marker setMarkerTypeLocal "loc_Hospital";
		_marker setMarkerTextLocal format["%1",name _x];
		_markers pushBack [_marker,_x];
		};
		if ("ItemGPS" in assignedItems _x) then {
								//&& driver (vehicle _x) == _x
			if ( _x in currentcop) then {
				_marker = createMarkerLocal [format["%1_PD_UNIT",name _x],visiblePosition _x];
				_marker setMarkerColorLocal "ColorBlue";
				_marker setMarkerTypeLocal "hd_dot";
				_marker setMarkerTextLocal format["%1",name _x];
				_markers pushBack [_marker,_x];
			};
								//&& driver (vehicle _x) == _x
			if ( _x in currentems) then {
				_marker = createMarkerLocal [format["%1_EMS_UNIT",name _x],visiblePosition _x];
				_marker setMarkerColorLocal "ColorGreen";
				_marker setMarkerTypeLocal "hd_dot";
				_marker setMarkerTextLocal format["%1",name _x];
				_markers pushBack [_marker,_x];
			};
								//&& driver (vehicle _x) == _x
			if ( _x in currentfire) then {
				_marker = createMarkerLocal [format["%1_FD_UNIT",name _x],visiblePosition _x];
				_marker setMarkerColorLocal "ColorYellow";
				_marker setMarkerTypeLocal "hd_dot";
				_marker setMarkerTextLocal format["%1",name _x];
				_markers pushBack [_marker,_x];
			};
		};
	} foreach PlayableUnits;


{  
	if( _x getVariable["trackingCop",FALSE] ) then  
	{	 
		_rand = round (random(999));
		_marker = createMarkerLocal [format["%1_TRACKING",_rand],visiblePosition _x];
		_marker setMarkerColorLocal "ColorRed";
		_marker setMarkerTypeLocal "loc_Hospital";
		_return = getText(configFile >> "CfgVehicles" >> typeof _x >> "displayName");
		_marker setMarkerTextLocal format["%1",_return];
		_markers pushBack [_marker,_x];	
	};   
} foreach vehicles;


	while {visibleMap|| visibleGPS} do
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
};

if(visibleMap && "kif_gps" in assignedItems player || visibleGPS) then {
	{
		if ( _x getVariable["robber",FALSE] ) then {
			_marker = createMarkerLocal [format["%1_NAMIERZONY_PRZESTĘPCA_BANK",name _x],visiblePosition _x];
			_marker setMarkerColorLocal "ColorRed";
			_marker setMarkerTypeLocal "hd_dot";
			_marker setMarkerTextLocal "NAMIERZONY WŁAMYWACZ DO BANKU";
			_markers pushBack [_marker,_x];
		};
		if ( _x getVariable["pbsee",FALSE] ) then {
			_marker = createMarkerLocal [format["%1_PANIC_BUTTON_CYWIL",name _x],visiblePosition _x];
			_marker setMarkerColorLocal "ColorRed";
			_marker setMarkerTypeLocal "hd_dot";
			_marker setMarkerTextLocal "NAMIERZONY PANIC BUTTON";
			_markers pushBack [_marker,_x];
		};

		if ( _x getVariable["tracking",FALSE]  ) then {
		_marker = createMarkerLocal [format["%1_TRACKING",name _x],visiblePosition _x];
		_marker setMarkerColorLocal "ColorRed";
		_marker setMarkerTypeLocal "loc_Hospital";
		_marker setMarkerTextLocal format["%1",name _x];
		_markers pushBack [_marker,_x];
		};
		if ("ItemGPS" in assignedItems _x) then {
								//&& driver (vehicle _x) == _x
			if ( _x in currentcop) then {
				_marker = createMarkerLocal [format["%1_PD_UNIT",name _x],visiblePosition _x];
				_marker setMarkerColorLocal "ColorBlue";
				_marker setMarkerTypeLocal "hd_dot";
				_marker setMarkerTextLocal format["%1",name _x];
				_markers pushBack [_marker,_x];
			};
								//&& driver (vehicle _x) == _x
			if ( _x in currentems) then {
				_marker = createMarkerLocal [format["%1_EMS_UNIT",name _x],visiblePosition _x];
				_marker setMarkerColorLocal "ColorGreen";
				_marker setMarkerTypeLocal "hd_dot";
				_marker setMarkerTextLocal format["%1",name _x];
				_markers pushBack [_marker,_x];
			};
								//&& driver (vehicle _x) == _x
			if ( _x in currentfire) then {
				_marker = createMarkerLocal [format["%1_FD_UNIT",name _x],visiblePosition _x];
				_marker setMarkerColorLocal "ColorYellow";
				_marker setMarkerTypeLocal "hd_dot";
				_marker setMarkerTextLocal format["%1",name _x];
				_markers pushBack [_marker,_x];
			};
		};
		if ("kif_gps" in assignedItems _x) then {
								//&& driver (vehicle _x) == _x
			if ( _x in currentcop) then {
				_marker = createMarkerLocal [format["%1_PD_UNIT",name _x],visiblePosition _x];
				_marker setMarkerColorLocal "ColorWhite";
				_marker setMarkerTypeLocal "hd_dot";
				_marker setMarkerTextLocal format["%1",name _x];
				_markers pushBack [_marker,_x];
			};
		};
	} foreach PlayableUnits;


{  
	if( _x getVariable["trackingCop",FALSE] ) then  
	{	 
		_rand = round (random(999));
		_marker = createMarkerLocal [format["%1_TRACKING",_rand],visiblePosition _x];
		_marker setMarkerColorLocal "ColorRed";
		_marker setMarkerTypeLocal "loc_Hospital";
		_return = getText(configFile >> "CfgVehicles" >> typeof _x >> "displayName");
		_marker setMarkerTextLocal format["%1",_return];
		_markers pushBack [_marker,_x];	
	};   
} foreach vehicles;


	while {visibleMap || visibleGPS} do
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
};





