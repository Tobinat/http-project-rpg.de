private ["_old", "_new"];
params ["_amount"];
_old = player getVariable "sl_atm_silverlake";
_new = _old + _amount;
if(_new < 0) then { _new = 0; };

player setVariable ["sl_atm_silverlake", _new, false];
[player, "sl_atm_silverlake", _new] remoteExec ["Server_fnc_setVariable",2];
[2,_new,_new,getplayeruid player] remoteExec ["server_fnc_syncmoney",2];