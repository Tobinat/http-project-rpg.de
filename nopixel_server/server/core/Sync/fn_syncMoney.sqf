/*
	Author: KifKick
	Date: 21.02.2017
	
	Params:
		1 - Object - player object that will be saved
		2 - String - uid of player
	Description: Function that saves player wallet or atm cash or wallet with atm
	Return: nothing
*/
params ["_type","_cash","_bank","_uid"];
if ("_type" == "") exitWith {diag_log "Error in: SyncMoney: type is not selected!";};
if (isNil "_uid") exitWith {diag_log "Error in: SyncMoney: uid is nil!";};
if (isNil "_cash") then {_cash = "";};
if (isNil "_bank") then {_bank = "";};
switch (_type) do {
    case 1: {_updatestr = format ["updatePlayerMoneyWallet:%1:%2", _cash, _uid]; _update = [0, _updatestr] call ExternalS_fnc_ExtDBquery;};
    case 2: {_updatestr = format ["updatePlayerMoneyATM:%1:%2", _bank, _uid]; _update = [0, _updatestr] call ExternalS_fnc_ExtDBquery;};
    case 3: {_updatestr = format ["updatePlayerMoney:%1:%2:%3", _cash, _bank, _uid]; _update = [0, _updatestr] call ExternalS_fnc_ExtDBquery;};
};
