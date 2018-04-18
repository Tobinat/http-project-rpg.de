	_volume = (call TFAR_fnc_ActiveSwRadio) call TFAR_fnc_getSwVolume;
	_volume = _volume + 1;
	if(_volume > 10) then { _volume = 10; };
	[format["Glosnosc: %1",_volume], false] spawn doquickmsg;
	[(call TFAR_fnc_ActiveSWRadio), _volume] call TFAR_fnc_setSwVolume;