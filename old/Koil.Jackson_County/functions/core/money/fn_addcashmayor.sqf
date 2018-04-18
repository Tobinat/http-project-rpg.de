private ["_old", "_new"];
params ["_amount"];
_old = player getVariable "wallet";
_new = _old + _amount;
player setVariable ["wallet", _new, false];

hint format ["You just got paid %1 in taxes.",_amount];