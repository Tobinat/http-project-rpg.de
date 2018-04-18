disableSerialization;
_shopname = ctrlText 9339;

_cash = player getVariable "sl_wallet_silverlake";
if(_cash < 250) exitwith { ["Za mało pieniędzy. ($250)", true] spawn domsg; };
[getpos currentcursortarget,player,_shopname] remoteexec ["server_fnc_rentoffice",2];
[player,objNull,20,format ["%1 wynajął biuro z nazwą %2", name player, str _shopname],str _shopname] remoteExec ["server_fnc_actionLog", 2];
