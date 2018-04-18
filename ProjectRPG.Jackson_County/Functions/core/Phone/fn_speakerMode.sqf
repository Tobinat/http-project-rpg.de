	_stereo = (call TFAR_fnc_ActiveSwRadio) call TFAR_fnc_getSwSpeakers;
	if(_stereo) then {
		["Wylaczyles tryb glosnomowiacy!", false] spawn doquickmsg;
	} else {
		["Wlaczyles tryb glosnomowiacy!", false] spawn doquickmsg;
	};
	[call TFAR_fnc_ActiveSWRadio] call TFAR_fnc_setSwSpeakers;