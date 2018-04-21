/*
    Author: KifKick
    Date: 04.02.2017

    Params:
        0 - Object - player who do task
        1 - Object - unit on do task
        2 - Number - type of log
        3 - String - custom text
        4 - String - text for amount
    Description: Function that send SQL query to the server inserting logs for inspecting players.
    Return: nothing
 */
params["_player","_type","_text","_classname","_nameItem"];
private["_playerUID","_playerName","_playerCash","_playerBank","_playerInv"];

if(isNil "_player" || isNil "_type") exitWith {diag_log "CraftLog: nil (1)";};
if("_type" == "") exitWith {diag_log "CraftLog: _type is empty (2)";};
if(isNull _player) exitWith {diag_log "CraftLog: _player is Null (3)";};
if (isNil "_text") then {_text = "";};
if (isNil "_classname") then {_classname = "";};
if (isNil "_nameItem") then {_nameItem = "";};

_playerUID = getPlayerUID _player;
_playerName = name _player;
_playerCash = _player getVariable ["sl_wallet_silverlake",-1];
_playerBank = _player getVariable ["sl_atm_silverlake",-1];
_playerInv = getUnitLoadout _player;

switch (_type) do {
    case 1: {_type = "Weapon";};
    case 2: {_type = "Mag";};
    //case 3: {_type = "";};
};


_insertstr = format ["craftLog:%1:%2:%3:%4:%5:%6:%7:%8:%9", _playerUID, _playerName, _playerCash, _playerBank, _playerInv, _type, _text, _classname, _nameItem];
_insert = [0, _insertstr] call ExternalS_fnc_ExtDBquery;