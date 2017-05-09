_houseLevel = player getvariable "houselevel";

_cashCheck = [2,125000] call client_fnc_checkmoney;

if!(_cashCheck) exitwith { hint "You need 125k for this!"; };

if(_houselevel == 1) then { hint "You upgraded to tier 2 housing, you will get your new house on soft-relog(going to player select screen)."; player setvariable ["houselevel",2,false]; [player, "houselevel", 2] remoteExec ["Server_fnc_setVariable",2]; };
if(_houselevel == 2) then { hint "You upgraded to tier 3 housing, you will get your new house on soft-relog(going to player select screen)."; player setvariable ["houselevel",3,false]; [player, "houselevel", 3] remoteExec ["Server_fnc_setVariable",2]; };
if(_houselevel == 3) then { hint "You can not upgrade any higher, yet!"; };

[125000] call Client_fnc_removebank;