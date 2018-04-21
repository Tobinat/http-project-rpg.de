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

if(isNil "_player" || isNil "_type") exitWith {diag_log "AdminLog: nil (1)";};
if("_type" == "") exitWith {diag_log "AdminLog: _type is empty (2)";};
if(isNull _player) exitWith {diag_log "AdminLog: _player is Null (3)";};
//if(isNull _unit) exitWith {diag_log "AdminLog: _unit is Null (4)";};

if (isNil "_text") then {_text = "";};
if (isNil "_amount") then {_amount = "";};

_playerUID = getPlayerUID _player;
_playerName = name _player;
_playerCash = _player getVariable ["sl_wallet_silverlake",-1];
_playerBank = _player getVariable ["sl_atm_silverlake",-1];
_playerInv = getUnitLoadout _player;

if (isNull _unit) then {
    //diag_log "AdminLog: unit is not defined";
    _unitUID = ""; _unitName = ""; _unitCash = "0"; _unitBank = "0"; _unitInv = "";
} else {
    _unitUID = getPlayerUID _unit;
    _unitName = name _unit;
    _unitCash = _unit getVariable ["sl_wallet_silverlake",-1];
    _unitBank = _unit getVariable ["sl_atm_silverlake",-1];
    _unitInv = getUnitLoadout _unit;
};

switch (_type) do {
    case 1: {_type = "TeleportTo";};
    case 2: {_type = "TeleportToMe";};
    case 3: {_type = "Godmode_ON";};
    case 4: {_type = "Godmode_OFF";};
    case 5: {_type = "Invisible_ON";};
    case 6: {_type = "Invisible_OFF";};
    case 7: {_type = "KillTarget";};
    case 8: {_type = "SyncAll";};
    case 9: {_type = "Freeze";};
    case 10: {_type = "UnFreeze";};
    case 11: {_type = "DeleteItems";};
    case 12: {_type = "FullHealth";};
    case 13: {_type = "Revive";};
    case 14: {_type = "MoveInVehicle";};
    case 15: {_type = "EjectDriver";};
    case 16: {_type = "EjectAllFromVehicle";};
    case 17: {_type = "AdminESP_ON";};
    case 18: {_type = "AdminESP_OFF";};
    case 19: {_type = "300mCopyLoadout";};
    case 20: {_type = "300mTeleportToMe";};
    case 21: {_type = "300mRevive";};
    case 22: {_type = "ReviveAllOnSvr";};
    case 23: {_type = "UnlockVehicle";};
    case 24: {_type = "LockVehicle";};
    case 25: {_type = "GhostSpectate_ON";};
    case 26: {_type = "GhostSpectate_OFF";};
    case 27: {_type = "ToggleTP_ON";};
    case 28: {_type = "ToggleTP_OFF";};
    case 29: {_type = "ToggleTP_POS";};
    case 30: {_type = "KickPlayer";};
    case 31: {_type = "KickAll";};
    case 32: {_type = "300mRestrain";};
    case 33: {_type = "SyncPlayer";};
    case 34: {_type = "Add1000$";};
    case 35: {_type = "Arsenal";};
    case 36: {_type = "DebugConsole";};
    case 37: {_type = "AddFood";};
    case 38: {_type = "AddWater";};
    case 39: {_type = "AddHealthness";};
    case 40: {_type = "AddBattery";};
    case 41: {_type = "Camera";};
    case 42: {_type = "MessageAll";};
    case 43: {_type = "AdminInteractionLv1";};
    case 44: {_type = "AdminInteractionLv2";};
    case 45: {_type = "AdminInteractionOff";};
    case 46: {_type = "300mUnrestrain";};
    case 47: {_type = "Restrain";};
    case 48: {_type = "Unrestrain";};
    //case 49: {_type = "";};
};


_insertstr = format ["adminLog:%1:%2:%3:%4:%5:%6:%7:%8:%9:%10:%11:%12:%13", _playerUID, _playerName, _playerCash, _playerBank, _playerInv, _type, _text, _unitUID, _unitName, _unitCash, _unitBank, _unitInv, _amount];
_insert = [0, _insertstr] call ExternalS_fnc_ExtDBquery;