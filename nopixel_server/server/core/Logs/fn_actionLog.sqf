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
    case 1: {_type = "Escort";};
    case 2: {_type = "Fahrzeug hinstellen";};
    case 3: {_type = "Kopftasche";};
    case 4: {_type = "Tasche mit Kopf";};
    case 5: {_type = "Schmiedestück";};
    case 6: {_type = "Rozkucie";};
    case 7: {_type = "Du stiehlst Geld";};
    case 8: {_type = "Durchsuche";};
    case 9: {_type = "Reanimations";};
    case 10: {_type = "Den Bohrer nehmen";};
    case 11: {_type = "Gespräche verfolgen";};
    case 12: {_type = "Nasikanie";};
    case 13: {_type = "Synchronisation";};
    case 14: {_type = "Reparatur des Bohrers";};
    case 15: {_type = "Geld von der Bank zu stehlen";};
    case 16: {_type = "Geldsicherheit bei der Bank";};
    case 17: {_type = "Aus der Registrierkasse stehlen";};
    case 18: {_type = "Nachschlüssel";};
    case 19: {_type = "Shop Plünderung";};
    case 20: {_type = "Er hat das Büro gemietet";};
    case 21: {_type = "Hauskiste";};
    case 22: {_type = "Aufbewahrungsbox";};
    case 23: {_type = "Das Haus durchsuchen";};
    case 24: {_type = "Durchsuchen Sie den Store";};
    case 25: {_type = "PosadzilMaryche";};
    case 26: {_type = "ScialMaryche";};
    case 27: {_type = "Er stahl das Meth";};
    case 28: {_type = "Meth Fertig Kochen";};
    case 29: {_type = "Er packte das Holz in das Fahrzeug";};
    case 30: {_type = "Verarbeite Holz";};
    //case 31: {_type = "";};
};


_insertstr = format ["actionLog:%1:%2:%3:%4:%5:%6:%7:%8:%9:%10:%11:%12:%13", _playerUID, _playerName, _playerCash, _playerBank, _playerInv, _type, _text, _unitUID, _unitName, _unitCash, _unitBank, _unitInv, _amount];
_insert = [0, _insertstr] call ExternalS_fnc_ExtDBquery;