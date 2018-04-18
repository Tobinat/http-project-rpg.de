// restrain CurrentCursorTarget;

_unit = _this select 0;
[] remoteExec ["client_fnc_unblindfolded",_unit];
[player,_unit,4,format ["%1 zdjął worek na głowę dla %2", name player, name _unit],""] remoteExec ["server_fnc_actionLog", 2];
