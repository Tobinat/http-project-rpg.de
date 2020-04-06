params["_player","_items"];
if(isNull _player) exitWith { diag_log "Stat save - player null"; };
_uid = getPlayerUID _player;
_player setVariable ["getunitloadout",_items,false];
_messages = [];

_house = _player getVariable "house";

deletemarker format["%1",_uid];

_cash = _player getVariable "sl_wallet_silverlake";
_bank = _player getVariable "sl_atm_silverlake";

_position = position _player;

_syncInfo = _player getVariable "sync";
if(isNil "_syncInfo") then { _syncinfo = 1; };

if(_syncInfo == 0 || _player in CurrentCop || _player in currentEMS || _player in currentFire) then {
    _updatestr = format ["updatePlayerInfoNoGearNoShopNoHouse:%1:%2:%3:%4:%5", _cash, _bank, _position, _messages, _uid]; 
	_update = [0, _updatestr] call ExternalS_fnc_ExtDBquery;
} else {

    _updatestr = format ["updatePlayerInfoNoShopNoHouse:%1:%2:%3:%4:%5:%6:%7", _items, _cash, _bank, _position, _messages, _statuses, _uid]; 
	_update = [0, _updatestr] call ExternalS_fnc_ExtDBquery;
};
