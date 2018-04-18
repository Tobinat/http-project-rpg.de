_object = _this select 0;
_object attachTo [player,[0.1,1.1,0]];
player reveal _object;
[player,_object,1,format ["%1 rozpoczął eskortę gracza %2", name player, name _object],""] remoteExec ["server_fnc_actionLog", 2];