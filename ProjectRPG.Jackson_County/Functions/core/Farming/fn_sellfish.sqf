/*
petroleo < string to object
*/

private["_n","_i"];

_barArray = ["np_fishmeat"];
_priceArray = [45];


if(isNil "globalProtection") then { globalProtection = 0; };
if(globalProtection != 0) exitwith { hint "Du verarbeitest."; };
_localProtection = 0;
["Du Verkaufst Fischfilets, das kann kurz dauern, bleibe Stehen.",true] spawn domsg;


_n = 0;
_cashTotal = 0;
_total = 0;
{
	_total = {_x == (_barArray select _n)} count magazines player;
	_i = _total;

	while{ _i > 0 } do {

		_localProtection = _localprotection + 1;
		globalProtection = globalProtection + 1;
		if(_localProtection != globalProtection) exitwith { [1,"Selling Fish Script"] spawn client_fnc_anticheat; };

		player removeitem (_barArray select _n);
		_value = (_priceArray select _n);
		[_value] call Client_fnc_sl_addCash_secure;
		_cashTotal = _cashTotal + _value;
		_i = _i - 1;
		playSound3D ["vvv_fishingrod\sounds\splash.ogg", player, false, getPosasl player, 5, 1, 5];
		sleep 0.25;
		if(dialog) then { closedialog 0; };
	};

	_n = _n + 1;

} foreach _barArray;

globalProtection = 0;

["Verarbeite",format["Du hast Fischfilet für $%1 verkauft", _cashTotal],[0,255,0,1],""] call Client_fnc_showNotification;
[player,objNull,3,format ["%1 verkauft %2 Fischfilets für $%3", name player, _total, _cashTotal],_cashTotal, "RYBY", _total] remoteExec ["server_fnc_economyLog", 2];
//hint format["Zarobiłeś $%1",_cashTotal];