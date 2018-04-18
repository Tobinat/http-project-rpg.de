params["_bankType"];


_amount = parseNumber (ctrlText 1400);
closeDialog 0;

if (_amount > 0) then 
{
	if (_amount > 999999) exitWith {hint "Kwota nie może być większa niż 999 999$!";};
	if(_bankType == 0) then {

		_check = [1, _amount] call Client_fnc_sl_checkMoney_secure;
		if (_check) then 
		{
		
			[_amount] call Client_fnc_sl_removeCash_secure;
			[_amount] call Client_fnc_sl_addBank_secure;
			["Sukces","Pomyślnie wpłacono pieniądze",[0,255,0,1],""] call Client_fnc_showNotification;
			[player,objNull,3,format ["%1 wpłacił %2", name player, _amount],_amount] remoteExec ["server_fnc_moneyLog", 2];
			//hint "Pomyślnie wpłacono pieniądze";
			
		} else {
			["Błąd","Nie masz wystarczająco dużo gotówki!",[255,0,0,1],""] call Client_fnc_showNotification;
			//hint "Nie masz wystarczająco dużo gotówki!";
		
		};

	} else {
		
		_check = [1, _amount] call Client_fnc_sl_checkMoney_secure;
		if (_check) then 
		{
			
			["Add",_amount] remoteexec ["server_fnc_updateMafiaBank",2];
			[_amount] call Client_fnc_sl_removeCash_secure;
			["Sukces","Pomyślnie wpłacono pieniądze",[0,255,0,1],""] call Client_fnc_showNotification;
			[player,objNull,4,format ["%1 wpłacił %2", name player, _amount],_amount] remoteExec ["server_fnc_moneyLog", 2];
			//hint "Pomyślnie wpłacono pieniądze!";
			
		} else {
			["Błąd","Stan konta zbyt mały!",[255,0,0,1],""] call Client_fnc_showNotification;
			//hint "Stan konta zbyt mały!";
		
		};

	};
}
 else  
{
	["Błąd","Wpłata musi wynosić więcej niż $0!",[255,0,0,1],""] call Client_fnc_showNotification;
	//hint "Wpłata musi wynosić więcej niż $0!";
	
};