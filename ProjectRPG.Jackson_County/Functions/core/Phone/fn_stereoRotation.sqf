	_stereo = (call TFAR_fnc_ActiveSwRadio) call TFAR_fnc_getCurrentSwStereo;
	_stereo = _stereo + 1;
	if(_stereo > 2) then { _stereo = 0; };
	[(call TFAR_fnc_ActiveSWRadio), _stereo] call TFAR_fnc_setSwStereo;
	if(_stereo == 0) exitwith { ["Tryb Stereo.", false] spawn doquickmsg; };
	if(_stereo == 1) exitwith { ["Tylko lewa sluchawka.", false] spawn doquickmsg; };
	if(_stereo == 2) exitwith { ["Tylko prawa sluchawka.", false] spawn doquickmsg; };	