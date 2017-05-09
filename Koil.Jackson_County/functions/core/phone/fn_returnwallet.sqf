params["_player"];

_cash = player getvariable "wallet";
if(isNil "_cash") exitwith {};
if(_cash == 0) exitwith { "No money" remoteexec ["hint",_player]; };
player setvariable ["wallet",0,false];
[player, "wallet", 0] remoteExec ["Server_fnc_setVariable",2];
[_cash] remoteexec ["client_fnc_robfinish",_player];