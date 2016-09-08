/*
    File: Siren.sqf
    Author: Dome Pwny
    Website: Lakeside-Reallife.de
	Description: Working Siren for Police/Medic Vehicles
*/
private["_vehicle"];

_vehicle = _this select 0;

while {alive _vehicle} do {


	if(!isNull driver _vehicle && _vehicle getVariable "lrl_siren" > 0 && getdammage _vehicle < 0.7 && _vehicle animationPhase "BeaconsStart" > 0) then {
		_phase = _vehicle getVariable "lrl_siren";
		_phase = _phase * 10;
		_phase = round _phase;
		_phase = _phase / 10;
		
		switch (_phase) do {
			case (0.2): {
				_vehicle say3D "CopWail";
				sleep 5.0962;
			};
			case (0.4): {
				_vehicle say3D "EMSWail";
				sleep 5.0962;
			};
			
		};
	} else {
		waitUntil {sleep 2; (_vehicle getVariable "lrl_siren" > 0 && getdammage _vehicle < 0.7 && _vehicle animationPhase "BeaconsStart" > 0)};
	};
};

exit;