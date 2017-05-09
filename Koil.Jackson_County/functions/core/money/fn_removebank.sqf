private ["_old", "_new"];
params ["_amount"];
_old = player getVariable "atm";
_new = _old - _amount;
if (_new < 0) then {
	_return = false;
} else {
	player setVariable ["atm", _new, false];
	[player, "atm", _new] remoteExec ["Server_fnc_setVariable",2];
	_return = true;
};