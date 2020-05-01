/*
petroleo < string to object
*/

private["_n","_i","_localProtection"];

_barArray = ["prpg_item_kupfer_bar","prpg_item_eisen_bar","prpg_item_silber_bar","NP_Wood","CG_OilCanister","prpg_item_aluminium_bar","prpg_item_blei_bar","prpg_item_glas","prpg_item_gummi"];
//priceArrayOre = [30,45,75,10,115,30,35,20,125];
//publicVariable priceArrayOre;

if(isNil "globalProtection") then { globalProtection = 0; };
if(globalProtection != 0) exitwith { hint "Du verarbeitest."; };
_localProtection = 0;


_n = 0;
_cashTotal = 0;
{
	_total = {_x == (_barArray select _n)} count magazines player;
	_i = _total;

	while{ _i > 0 } do {

		_localProtection = _localprotection + 1;
		globalProtection = globalProtection + 1;
		if(_localProtection != globalProtection) exitwith { [1,"Selling Ore Script"] spawn client_fnc_anticheat; };

		player removeitem (_barArray select _n);
		_value = (priceArrayOre select _n);
		[_value] call Client_fnc_sl_addCash_secure;
		_cashTotal = _cashTotal + _value;
		_i = _i - 1;
		playSound3D ["CG_Jobs\sounds\mining\mineF2.ogg", player, false, getPosasl player, 31, 1, 15];
		sleep 0.25;
		if(dialog) then { closedialog 0; };
	};

	_n = _n + 1;

} foreach _barArray;

globalProtection = 0;

["Verarbeite",format["Du hast Rohstoffe verkauft für: $%1", _cashTotal],[0,255,0,1],""] call Client_fnc_showNotification;
//[player,objNull,3,format ["%1 hat Rohstoffe verkauft in einer Menge von: %2 fuer %3 $", name player, _total, _cashTotal],_cashTotal, "SUROWIEC", _total] remoteExec ["server_fnc_economyLog", 2];
//hint format["Zarobiłeś $%1",_cashTotal];