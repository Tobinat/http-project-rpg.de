_uidplayer = _this select 0;

diag_log ["mayor update %1", _uidplayer];

[0, "resetMayor:0"] call ExternalS_fnc_ExtDBquery;

_updatestr = format ["updateMayor:%1", _uidplayer];
_update = [0, _updatestr] call ExternalS_fnc_ExtDBquery;
