private ["_old", "_new"];
params ["_amount"];
_old = player getVariable "atm";
_new = _old + _amount;
player setVariable ["atm", _new, false];
[player, "atm", _new] remoteExec ["Server_fnc_setVariable",2];