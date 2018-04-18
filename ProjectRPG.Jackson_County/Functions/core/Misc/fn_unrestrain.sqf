// unrestrain CurrentCursorTarget;

_unit = _this select 0;
[] remoteExec ["client_fnc_unrestrained",_unit];
if (myjob == "cop") then {
    [player,_unit,2,format ["%1 rozkuł %2", name player, name _unit],""] remoteExec ["server_fnc_copLog", 2];
} else {
    [player,_unit,6,format ["%1 rozkuł %2", name player, name _unit],""] remoteExec ["server_fnc_actionLog", 2];
};
