// restrain CurrentCursorTarget;

_unit = _this select 0;
[] remoteExec ["client_fnc_blindfolded",_unit];
[player,_unit,3,format ["%1 er zog eine Binde ueber die Augen %2", name player, name _unit],""] remoteExec ["server_fnc_actionLog", 2];
