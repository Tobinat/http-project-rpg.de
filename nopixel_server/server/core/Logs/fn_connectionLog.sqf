/*
    Author: KifKick
    Date: 17.03.2017

    Params:
        0 - Object - player who do task
        1 - Object - unit on do task
        2 - Number - type of log
        3 - String - custom text
        4 - String - text for amount
    Description: Function that send SQL query to the server inserting logs for inspecting players.
    Return: nothing
 */
params["_player","_type","_text","_uid","_items"];
private["_playerUID","_playerName","_playerCash","_playerBank"];

if(isNil "_player" || isNil "_type") exitWith {diag_log "ConnectionLog: nil (1)";};
if("_type" == "") exitWith {diag_log "ConnectionLog: _type is empty (2)";};
if(isNull _player) exitWith {diag_log "ConnectionLog: _player is Null (3)";};
//if(isNull _unit) exitWith {diag_log "ConnectionLog: _unit is Null (4)";};

if (isNil "_text") then {_text = "";};
if (isNil "_uid") then {_uid = "";};

//_playerUID = getPlayerUID _player;
_playerName = name _player;
_playerCash = _player getVariable ["sl_wallet_silverlake",-1];
_playerBank = _player getVariable ["sl_atm_silverlake",-1];
_items = getUnitLoadout _player;

switch (_type) do {
    case 1: {_type = "Połączenie";};
    case 2: {_type = "Rozłączenie";};
    //case 3: {_type = "";};
};


_insertstr = format ["connectionLog:%1:%2:%3:%4:%5:%6:%7", _uid, _playerName, _playerCash, _playerBank, _items, _type, _text];
_insert = [0, _insertstr] call ExternalS_fnc_ExtDBquery;