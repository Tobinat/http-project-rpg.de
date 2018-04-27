/*
Author: Kerkkoh
First Edit: 30.11.2015
*/
params["_bankType"];
_amount = parseNumber (ctrlText 1400);
closeDialog 0;

if (_amount > 0) then
{
	if (_amount > 999999) exitWith {hint "Der Betrag darf 999 999$ nicht überschreiten!";};
	if(_bankType == 0) then {

		_check = [2, _amount] call Client_fnc_sl_checkMoney_secure;
		if (_check) then
		{

			[_amount] call Client_fnc_sl_removeBank_secure;
			[_amount] call Client_fnc_sl_addCash_secure;

			//["Erledigt!","Du hast dein Geld entnommen!",[0,255,0,1],""] call spawn domsg;
			["Du hast dein Geld entnommen!.", false] call domsg;
			[player,objNull,1,format ["%1 bezahlt %2", name player, _amount],_amount] remoteExec ["server_fnc_moneyLog", 2];
			//hint "Bitte entnehmen Sie Ihr Geld!";

		} else {

			//["Verdammt!","Ihr Konto ist nicht ausreichend gedeckt!",[255,0,0,1],""] spawn domsg;
			["Du hast nicht genug Geld auf dem Konto.", false] call domsg;
			//hint "Ihr Konto ist nicht ausreichend gedeckt!";

		};

	} else {

		if (_amount < mafiaBank) then
		{

			["Remove",_amount] remoteexec ["server_fnc_updateMafiaBank",2];
			[_amount] call Client_fnc_sl_addCash_secure;

			//["Erledigt!","Du hast dein Kriminelles Geld entnommen!",[0,255,0,1],""] call spawn domsg;
			["Du hast das Geld vom Mafiakonto abgehoben.", false] call domsg;
			[player,objNull,2,format ["%1 bezahlt %2", name player, _amount],_amount] remoteExec ["server_fnc_moneyLog", 2];
			//hint "Entnehmen Sie bitte Ihr Kriminelles Geld!";

		} else {

			//["Verdammt!","Ihr Konto ist nicht ausreichend Gedeckt!",[255,0,0,1],""] spawn domsg;
			["Du hast nicht genug Geld auf dem Konto.", false] call domsg;
			//hint "Ihr Konto ist nicht ausreichend Gedeckt!";

		};

	};

}
 else
{

	//["Verdammt!","Bitte heben Sie mehr als $0 ab!",[255,0,0,1],""] spawn domsg;
	["Du musst mehr als $0 Abheben.", false] call domsg;
	//hint "Bitte heben Sie mehr als $0 ab!";

};
