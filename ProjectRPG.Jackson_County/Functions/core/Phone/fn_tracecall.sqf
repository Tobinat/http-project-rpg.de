if(isNil "TracingPlayers") then { TracingPlayers = []; };
if(CurrentCursorTarget in TracingPlayers) exitWith {};
[player] remoteexec ["client_fnc_trackedby",CurrentCursorTarget];
TracingPlayers pushback CurrentCursorTarget;
if (myjob == "cop") then {
[player,CurrentCursorTarget,16,format ["%1 namierzył rozmowę %2", name player, name CurrentCursorTarget],""] remoteExec ["server_fnc_copLog", 2];
} else {
[player,CurrentCursorTarget,11,format ["%1 namierzył rozmowę %2", name player, name CurrentCursorTarget],""] remoteExec ["server_fnc_actionLog", 2];
};