_price = 250;

_cash = player getVariable "sl_wallet_silverlake";

if(_cash < _price) exitwith { [format["KOSZT: %1 - Za mało pieniędzy.",_price], true] spawn domsg; };

[_price] call Client_fnc_sl_removeCash_secure;

[player] remoteexec ["client_fnc_trackingme",currentcursortarget]; 
currentcursortarget setvariable ["tracking",true,false];