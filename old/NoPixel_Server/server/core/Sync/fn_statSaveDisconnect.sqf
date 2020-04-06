params["_player"];
if(isNull _player) exitWith { diag_log "Stat save Disconnect - player null"; };
_uid = getPlayerUID _player;

_messages = [];

_house = _player getVariable "house";
_shop = _player getVariable "shop";

_shop setVariable ["shop",nil,false];
shops pushback _shop;
_houselevel = _player getVariable "houselevel";

    if (_houseLevel == 1) then {
        tier1housing pushback _house;
    };
    if (_houseLevel == 2) then {
        tier1housing pushback _house;
    };
    if (_houseLevel == 3) then {
        tier1housing pushback _house;
    };
    if (_houseLevel == 4) then {
        tier2housing pushback _house;
    };
    if (_houseLevel == 5) then {
        tier2housing pushback _house;
    };
    if (_houseLevel == 6) then {
        tier2housing pushback _house;
    };
    if (_houseLevel == 7) then {
        tier3housing pushback _house;
    };
    if (_houseLevel == 8) then {
        tier3housing pushback _house;
    };
    if (_houseLevel == 9) then {
        tier3housing pushback _house;
    };
     if (_houseLevel == 10) then {
        tier3housing pushback _house;
    };

deletemarker format["%1",_uid];

_cash = _player getVariable "sl_wallet_silverlake";
_bank = _player getVariable "sl_atm_silverlake";

_position = position _player;

_syncInfo = _player getVariable "sync";
if(isNil "_syncInfo") then { _syncinfo = 1; };

if(_syncInfo == 0 || _player in currentCop || _player in currentEMS || _player in currentFire) then { 
	_updatestr = format ["updatePlayerInfoNoGearNoShopNoHouse:%1:%2:%3:%4:%5", _cash, _bank, _position, _messages, _uid]; 
	_update = [0, _updatestr] call ExternalS_fnc_ExtDBquery;
} else { 
	_updatestr = format ["updatePlayerInfoNoGearNoShopNoHouse:%1:%2:%3:%4:%5", _cash, _bank, _position, _messages, _uid]; 
	_update = [0, _updatestr] call ExternalS_fnc_ExtDBquery;
}; 