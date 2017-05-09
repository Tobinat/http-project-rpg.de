private ["_old", "_new"];
params ["_amount"];
_old = player getVariable "wallet";
_new = _old + _amount;
if(_new < 0) then { _new = 0; };
if(_amount > 1000) then {
	[player, "wallet", _new] remoteExec ["Server_fnc_setVariable",2];
};

player setVariable ["wallet", _new, false];