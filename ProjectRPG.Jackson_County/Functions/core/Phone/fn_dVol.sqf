	_volume = (call TFAR_fnc_ActiveSwRadio) call TFAR_fnc_getSwVolume;
	_volume = _volume - 1;
	if(_volume < 1) then { _volume = 1; };
	[format["Lautstärke: %1",_volume], false] spawn doquickmsg;
	[(call TFAR_fnc_ActiveSWRadio), _volume] call TFAR_fnc_setSwVolume;