private["_crew"];
_crew = crew CurrentCursorTarget;
_veh = CurrentCursorTarget;

if((side player == civilian && (_veh in current_cars)) || myjob == "Cop" || myJob == "Mafia" || myJob == "EMS" || myJob == "Fire") then {
	
	{
		[_x] remoteExecCall ["client_fnc_pulloutVeh",_x];
	} foreach _crew;

};