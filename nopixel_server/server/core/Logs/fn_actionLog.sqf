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
params["_player","_unit","_type","_text","_amount"];
private["_playerUID","_playerName","_playerCash","_playerBank","_playerInv","_unitUID","_unitName","_unitBank","_unitCash","_unitInv"];

if(isNil "_player" || isNil "_type") exitWith {diag_log "ActionLog: nil (1)";};
if("_type" == "") exitWith {diag_log "ActionLog: _type is empty (2)";};
if(isNull _player) exitWith {diag_log "ActionLog: _player is Null (3)";};
//if(isNull _unit) exitWith {diag_log "ActionLog: _unit is Null (4)";};

if (isNil "_text") then {_text = "";};
if (isNil "_amount") then {_amount = "";};

_playerUID = getPlayerUID _player;
_playerName = name _player;
_playerCash = _player getVariable ["sl_wallet_silverlake",-1];
_playerBank = _player getVariable ["sl_atm_silverlake",-1];
_playerInv = getUnitLoadout _player;

if (isNull _unit) then {
    //diag_log "ActionLog: unit is not defined";
    _unitUID = ""; _unitName = ""; _unitCash = "0"; _unitBank = "0"; _unitInv = "";
} else {
    _unitUID = getPlayerUID _unit;
    _unitName = name _unit;
    _unitCash = _unit getVariable ["sl_wallet_silverlake",-1];
    _unitBank = _unit getVariable ["sl_atm_silverlake",-1];
    _unitInv = getUnitLoadout _unit;
};

switch (_type) do {
    case 1: {_type = "Eskorta";};
    case 2: {_type = "WrzucenieDoPojazdu";};
    case 3: {_type = "WorekNaGłowę";};
    case 4: {_type = "WorekZGłowy";};
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
    case 21: {_type = "SkrzynkaDom";};
    case 22: {_type = "SkrzynkaSklep";};
    case 23: {_type = "PrzeszukanieDomu";};
    case 24: {_type = "PrzeszukanieSklepu";};
    case 25: {_type = "PosadzilMaryche";};
    case 26: {_type = "ScialMaryche";};
    case 27: {_type = "PostawilStolMethy";};
    case 28: {_type = "ZakonczylGotowacMethe";};
    case 29: {_type = "ZapakowalDrewnoNaPojazd";};
    case 30: {_type = "PrzerobilDrewno";};
    //case 31: {_type = "";};
};


_insertstr = format ["actionLog:%1:%2:%3:%4:%5:%6:%7:%8:%9:%10:%11:%12:%13", _playerUID, _playerName, _playerCash, _playerBank, _playerInv, _type, _text, _unitUID, _unitName, _unitCash, _unitBank, _unitInv, _amount];
_insert = [0, _insertstr] call ExternalS_fnc_ExtDBquery;