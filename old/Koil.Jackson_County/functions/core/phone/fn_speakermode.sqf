	_stereo = (call TFAR_fnc_ActiveSwRadio) call TFAR_fnc_getSwSpeakers;
	if(_stereo) then {
		["Your phone is off speaker mode!", false] spawn doquickmsg;
	} else {
		["Your phone is on speaker mode!", false] spawn doquickmsg;
	};
	[call TFAR_fnc_ActiveSWRadio] call TFAR_fnc_setSwSpeakers;