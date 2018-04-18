_data = lbData[911,lbCurSel (911)];
_rank = call compile format["%1", _data];
[myjob,CurrentCursorTarget,_rank] remoteExec ["server_fnc_promote",2];

[player,CurrentCursorTarget,0,format ["%1 awansował %2 na poziom %3", name player, name CurrentCursorTarget,_rank],_rank] remoteExec ["server_fnc_jobLog", 2];
if (myjob == "cop") then {
[player,currentcursortarget,6,format ["%1 awansował %2 na poziom %3", name player, name currentcursortarget, _rank],_rank] remoteExec ["server_fnc_copLog", 2];
};