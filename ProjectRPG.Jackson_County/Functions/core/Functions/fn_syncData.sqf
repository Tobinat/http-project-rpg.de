_wallet = player getVariable "sl_wallet_silverlake";
_atm = player getVariable "sl_atm_silverlake";
[player, "sl_wallet_silverlake", _wallet] remoteExec ["Server_fnc_setVariable",2];
[player, "sl_atm_silverlake", _atm] remoteExec ["Server_fnc_setVariable",2];
[player, "sync", 1] remoteExec ["Server_fnc_setVariable",2];
[player, getUnitLoadout player] remoteExec ["server_fnc_steppedsync",2];

_items = uniformItems player;
player forceAddUniform uniform player;
{player addItemToUniform _x} foreach _items;
_vestItems = vestItems player;
player addVest vest player;
{player addItemToVest _x} foreach _vestItems;

hint "Pomyślnie zapisano!"; 
lastforcesync = time;
[player,objNull,13,format ["%1 wykonał synchronizacje", name player],""] remoteExec ["server_fnc_actionLog", 2];