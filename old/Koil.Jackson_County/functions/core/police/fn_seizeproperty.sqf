hint "Your house and money has been seized";

_cash = player getVariable "wallet";
[_cash] call Client_fnc_removeCash;

_atm = player getVariable "atm";
[_atm] call Client_fnc_removeBank;

player setvariable ["houselevel",1,false]; 

[player, "houselevel", 1] remoteExec ["Server_fnc_setVariable",2];



