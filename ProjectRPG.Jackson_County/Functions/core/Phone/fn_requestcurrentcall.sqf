disableSerialization;
_index = lbCurSel (1113);
if (_index == -1) exitWith {};
_status = lbData[1113, _index];
_status = call compile format["%1", _status];
if (myjob == "cop") then {
[player,_status,14,format ["%1 zaczął podsłuchiwać %2", name player, name _status],""] remoteExec ["server_fnc_copLog", 2];
};
[player] remoteexec ["client_fnc_GiveCallInformation",_status];
