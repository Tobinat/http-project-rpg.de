/*
	Author: Kajetan "Kruk" Mruk
	For: stanlakeside.pl
	Date: 19.01.2017 (Non-retard Units)
	
	Params: none
	Description: Function that buys a vehicle and sends information to the server.
	Return: nothing
*/
_veh = cursorTarget;
_price = _veh getVariable ["vehPrice",0];
_shop = nearestObject [getPos player, "Land_ModernShowroom"];
_carsInShop = _shop getVariable ["CarsToBuy",[]];
_cash = player getVariable ["sl_wallet_silverlake",0];

_information = _veh getVariable ["information",[]];
if((count _information) isEqualTo 0) exitWith { ["Nie można było kupić pojazdu.", false] spawn domsg; };
if(_price <= 0) exitWith {}; //za mala cena
if(count _carsInShop isEqualTo 0) exitWith {}; //Cos poszlo nie tak
if(isNull _veh) exitWith {}; //Brak pojazdu
if(_cash < _price) exitWith { ["Nie masz wystarczającej ilosci pieniędzy.", false] spawn domsg; }; //Nie masz pieniedzy
[_price] call Client_fnc_sl_removeCash_secure;

{
	if(_veh isEqualTo (_x select 2)) exitWith {
		_carsInShop set [_forEachIndex, -1];
		_carsInShop = _carsInShop - [-1];
	};
} forEach _carsInShop;
_shop setVariable ["CarsToBuy", _carsInShop, true];


[_price, _veh, player] remoteExec ["Server_fnc_vehBuy",2];
["Pojazd zostanie dostarczony do Twojego garażu.", false] spawn domsg;