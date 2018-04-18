/*
	Author: Kajetan "Kruk" Mruk
	For: stanlakeside.pl
	Date: 19.01.2017 (Non-retard Units)
	
	Params:
		0 - Number - price of vehicle
		1 - Object - vehicle object
	Description: Function that gives money to the seller and removes car from his array.
	Return: nothing
*/
_price = _this select 0;
_veh = _this select 1;
hint format [""];
[_price] call Client_fnc_sl_addBank_secure;
[format["Twój samochód sprzedał się za: $%1!", _price], true] spawn domsg;
[player,6,format ["%1 dostał %2 za sprzedaż samochodu",name player,_price],_price,"",""] remoteExec ["server_fnc_vehicleLog", 2];

_pia = Current_Cars find _veh;
Current_Cars deleteAt _pia;
[getPlayerUID player, "usedgarage", current_cars] remoteExec ["Server_fnc_setVariable",2];