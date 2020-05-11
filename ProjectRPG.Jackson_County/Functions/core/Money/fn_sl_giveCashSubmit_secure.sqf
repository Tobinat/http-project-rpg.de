params ["_target", "_giver"];

_amount = parseNumber (ctrlText 1401);
closeDialog 0;

if (_amount > 0) then 
{	
	if (_amount > 999999) exitWith {hint "Der Betrag darf nicht mehr als 999 999$ sein!";};
	_enoughCash = [1, _amount] call Client_fnc_sl_checkMoney_secure;
	if (_enoughCash) then 
	{
	
		[_amount] call Client_fnc_sl_removeCash_secure;
		//[_giver, getUnitLoadout _giver] call Server_fnc_statSave; 
		[_amount] remoteexec ["Client_fnc_sl_addCash_secure", _target];
		//[_target, getUnitLoadout _target] call Server_fnc_statSave; 
		_name = name _giver;
		_text = format ["%1 gibt dir %2 $", _name, _amount];
		[_text, false] remoteExec ["domsg",_target];
		[_giver,_target,5,format ["%1 gibt %2$.", name _giver, _amount, name _target],_amount] remoteExec ["server_fnc_moneyLog", 2];
	} else {
		hint "Du hast nicht genug Geld dabei!";
	};
} else {
	hint "Du Betrag muss mehr als $0 betragen!";
};