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
params["_player","_unit","_type","_text","_amount"];
private["_playerUID","_playerName","_playerCash","_playerBank","_playerInv","_unitUID","_unitName","_unitBank","_unitCash","_unitInv"];

if(isNil "_player" || isNil "_type") exitWith {diag_log "JobLog: nil (1)";};
if("_type" == "") exitWith {diag_log "JobLog: _type is empty (2)";};
if(isNull _player) exitWith {diag_log "JobLog: _player is Null (3)";};
//if(isNull _unit) exitWith {diag_log "JobLog: _unit is Null (4)";};

if (isNil "_text") then {_text = "";};
if (isNil "_amount") then {_amount = "";};

_playerUID = getPlayerUID _player;
_playerName = name _player;
_playerCash = _player getVariable ["sl_wallet_silverlake",-1];
_playerBank = _player getVariable ["sl_atm_silverlake",-1];
_playerInv = getUnitLoadout _player;

if (isNull _unit) then {
    //diag_log "jobLog: unit is not defined";
    _unitUID = ""; _unitName = ""; _unitCash = "0"; _unitBank = "0"; _unitInv = "";
} else {
    _unitUID = getPlayerUID _unit;
    _unitName = name _unit;
    _unitCash = _unit getVariable ["sl_wallet_silverlake",-1];
    _unitBank = _unit getVariable ["sl_atm_silverlake",-1];
    _unitInv = getUnitLoadout _unit;
};

switch (_type) do {
    case 1: {_type = "Awans";};
    case 2: {_type = "Wyposażenie";};
    case 3: {_type = "RozpoczęciePracy";};
    case 4: {_type = "ZakończeniePracy";};
    case 5: {_type = "Skucie";};
    case 6: {_type = "Rozkucie";};
    case 7: {_type = "OkradniecieZKasy";};
    case 8: {_type = "Przeszukanie";};
    case 9: {_type = "Reanimacja";};
    case 10: {_type = "ZabranieWiertła";};
    case 11: {_type = "NamierzenieRozmowy";};
    case 12: {_type = "Nasikanie";};
    case 13: {_type = "Synchronizacja";};
    case 14: {_type = "NaprawienieWiertła";};
    case 15: {_type = "UkradniecieKasyZBanku";};
    case 16: {_type = "ZabezpieczeniePieniedzyWBanku";};
    case 17: {_type = "OkradniecieZKasyFail";};
    case 18: {_type = "Wytrych";};
    case 19: {_type = "RabunekSklepu";};
    case 20: {_type = "WynająłBiuro";};
    //case 21: {_type = "";};
};


_insertstr = format ["jobLog:%1:%2:%3:%4:%5:%6:%7:%8:%9:%10:%11:%12:%13", _playerUID, _playerName, _playerCash, _playerBank, _playerInv, _type, _text, _unitUID, _unitName, _unitCash, _unitBank, _unitInv, _amount];
_insert = [0, _insertstr] call ExternalS_fnc_ExtDBquery;