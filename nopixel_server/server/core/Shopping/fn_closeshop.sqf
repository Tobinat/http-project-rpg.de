params ["_player"];
[_player, getUnitLoadout _player] spawn server_fnc_steppedsync;
_shop = _player getVariable "shop";
//_shop setVariable ["shop",nil,false];
shops pushback _shop;
deletemarker format["%1",_uid];