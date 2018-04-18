params ["_veh"];

if(_veh iskindof "Car" || _veh iskindof "Ship" || _veh iskindof "Air") then {
	_locked = locked _veh;
	if(_veh in current_cars && player distance _veh < 8) then {

		if(_locked == 2) then {
			
			if(local _veh) then {
				_veh lock 0;
			} else {
				[_veh,0] remoteExecCall ["client_fnc_lock",_veh];
			};
			["Otwarty", false] spawn doquickmsg; 
		} else {

			if(local _veh) then {
				_veh lock 2;
			} else {
				[_veh,2] remoteExecCall ["client_fnc_lock",_veh];
			};	

			["Zamkniety", false] spawn doquickmsg; 
		};
	};
};