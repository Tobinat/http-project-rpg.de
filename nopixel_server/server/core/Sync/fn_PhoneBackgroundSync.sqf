params["_bg","_uid"];
if (isNil "_bg") exitWith {diag_log "Error in: PhoneBackgroundSave: bg is nil!";};
if (isNil "_uid") exitWith {diag_log "Error in: PhoneBackgroundSave: uid is nil!";};
    _updatestr = format ["updatePlayerPhoneBackground:%1:%2", _bg, _uid];
	_update = [0, _updatestr] call ExternalS_fnc_ExtDBquery;