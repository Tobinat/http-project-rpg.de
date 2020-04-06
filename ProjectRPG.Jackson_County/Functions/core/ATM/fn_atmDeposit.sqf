params["_bankType"];


_amount = parseNumber (ctrlText 1400);
closeDialog 0;

if (_amount > 0) then 
{
	if (_amount > 999999) exitWith {hint "Bitte versuchen Sie nicht mehr als 999 999$ abzuheben!";};
	if(_bankType == 0) then {

		_check = [1, _amount] call Client_fnc_sl_checkMoney_secure;
		if (_check) then 
		{
		
			[_amount] call Client_fnc_sl_removeCash_secure;
			[_amount] call Client_fnc_sl_addBank_secure;
			["Erledigt!","Sie haben erfolgreich Geld eingezahlt!",[0,255,0,1],""] call Client_fnc_showNotification;
			[player,objNull,3,format ["%1 wpłacił %2", name player, _amount],_amount] remoteExec ["server_fnc_moneyLog", 2];
			//hint "Sie haben Ihr Geld erfolgreich eingezahlt!";
			
		} else {
			["Verdammt!","Du hast leider nicht so viel Geld!",[255,0,0,1],""] call Client_fnc_showNotification;
			//hint "Du hast nicht genug Geld!";
		
		};

	} else {
		
		_check = [1, _amount] call Client_fnc_sl_checkMoney_secure;
		if (_check) then 
		{
			
			["Add",_amount] remoteexec ["server_fnc_updateMafiaBank",2];
			[_amount] call Client_fnc_sl_removeCash_secure;
			["Erledigt!","Das gewaschene Geld wurde eingezahlt!",[0,255,0,1],""] call Client_fnc_showNotification;
			[player,objNull,4,format ["%1 wpłacił %2", name player, _amount],_amount] remoteExec ["server_fnc_moneyLog", 2];
			//hint "Das Geld wurde erfolgreich eingezahlt!";
			
		} else {
			["Verdammt!","Dein Kontostand ist zu niedrig!",[255,0,0,1],""] call Client_fnc_showNotification;
			//hint "Dein Kontostand ist zu klein!";
		
		};

	};
}
 else  
{
	["Verdammt!","Bitte zahlen Sie mehr als $0 ein!",[255,0,0,1],""] call Client_fnc_showNotification;
	//hint "Bitte zahlen Sie mehr als $0 ein!";
	
};