// restrain CurrentCursorTarget;

_unit = _this select 0;
[] remoteExec ["client_fnc_restrained",_unit];
if (myJob == "cop") then {
[player,_unit,1,format ["%1 zakuł %2", name player, name _unit],""] remoteExec ["server_fnc_copLog", 2];
} else {
[player,_unit,5,format ["%1 zakuł %2", name player, name _unit],""] remoteExec ["server_fnc_actionLog", 2];
	["Remove","Karma",10] call client_fnc_sustain;
};

