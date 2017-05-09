params["_bankType"];


_amount = parseNumber (ctrlText 1400);
closeDialog 0;

if (_amount > 0) then 
{


	if(_bankType == 0) then {

		_check = [1, _amount] call Client_fnc_checkMoney;
		if (_check) then 
		{
		
			[_amount] call Client_fnc_removeCash;
			[_amount] call Client_fnc_addBank;
			hint "Ihr Geld wurde erfolgreich Eingezahlt.";
			
		} else {
		
			hint "Ihr Konto ist nicht gedeckt!";
		
		};

	} else {
		
		_check = [1, _amount] call Client_fnc_checkMoney;
		if (_check) then 
		{
			
			["Add",_amount] remoteexec ["server_fnc_updateMafiaBank",2];
			[_amount] call Client_fnc_removeCash;
			hint "Du hast erfolgreich deine Mafia Kohle abgehoben!";
			
		} else {
		
			hint "Nicht genug Läden ausgeraubt, oder warum hast du kein Geld?!";
		
		};

	};
}
 else  
{

	hint "Der Einzahlungsbetrag muss über $0 sein oder willst du uns verarschen?!";
	
};