// restrain CurrentCursorTarget;

_unit = _this select 0;
[] remoteExec ["client_fnc_blindfolded",_unit];
[player,_unit,3,format ["%1 założył worek na głowę dla %2", name player, name _unit],""] remoteExec ["server_fnc_actionLog", 2];
