/*
	File: fn_copMarkers.sqf
	
	
	Description:
	Marks cops on the map for other cops. Only initializes when the actual map is open.
*/

private _markers = [];
private _cops = [];
private _sos = [];
private _sosms = [];

uiSleep 0.5;
if(visibleMap) then {
	{if(side _x == west || side _x == independent) then {_cops pushBack _x;}} foreach playableUnits; //Fetch list of cops / blufor
	{
		if(_x getVariable "sosActive") then {
			_sos pushback _x;
		};
	} forEach playableUnits;
	
	//Create markers
	{
		if ("ItemGPS" in assignedItems _x) then {
			_marker = createMarkerLocal [format["%1_marker",_x],visiblePosition _x];
			if(side _x == west) then {
				_marker setMarkerColorLocal "ColorBlue";
			} else {
				_marker setMarkerColorLocal "ColorGreen";
			};
			if(_x getVariable["dead",FALSE]) then {
				_marker setMarkerColorLocal "ColorRed";
			};
			_marker setMarkerTypeLocal "Mil_dot";
			_marker setMarkerTextLocal format["%1", _x getVariable["realname",name _x]];
			_markers pushBack [_marker,_x];
		};
	} foreach _cops;
	
	{
		if(license_civ_udc OR playerSide == west) then {
			_sosm = createMarkerlocal [format["sos_marker_%1",_x],visiblePosition _x];
			_sosm setMarkerTypelocal "selector_selectedMission";
			_sosm setMarkerTextLocal format["!!!SOS - %1 - SOS!!!", name _x];
			_sosms pushBack [_sosm,_x];
		};
	} forEach _sos;
		
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
					if ("ItemGPS" in assignedItems _unit) then
					{
						_marker setMarkerPosLocal (visiblePosition _unit);
					};
				};
			};
			
		} foreach _markers;

		if(!visibleMap) exitWith {};
		uiSleep 0.2;	//Client FPS purposes
	};

	{deleteMarkerLocal (_x select 0);} foreach _markers;
	{deleteMarkerLocal (_x select 0);} foreach _sosms;
	_markers = [];
	_cops = [];
	_sos = [];
	_sosms = [];
}; 