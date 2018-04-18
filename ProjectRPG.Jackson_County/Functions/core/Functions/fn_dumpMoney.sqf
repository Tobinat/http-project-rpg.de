if (myjob == "Cop" || myjob == "EMS" || myjob == "Fire") exitWith {};
_class1 = ["kif_25k"];  
_class2 = ["kif_100k"]; 
_class3 = ["kif_50k"]; 
_class4 = ["kif_10k"]; 
_class5 = ["kif_5k"];
_total = 0;
_cashout = 0;

{
	_mag = _x;
	if(_mag IN _class1) then { _cashout = _cashout + 25000; player removeMagazine _mag; _total = _total + 1; };
	if(_mag IN _class2) then { _cashout = _cashout + 100000; player removeMagazine _mag; _total = _total + 1; };
	if(_mag IN _class3) then { _cashout = _cashout + 50000; player removeMagazine _mag; _total = _total + 1; };
	if(_mag IN _class4) then { _cashout = _cashout + 10000; player removeMagazine _mag; _total = _total + 1; };
	if(_mag IN _class5) then { _cashout = _cashout + 5000; player removeMagazine _mag; _total = _total + 1; };

} forEach magazines player;


[_cashout] call Client_fnc_sl_addCash_secure;


[player,objNull,7,format ["%1 wyprał %2", name player, _cashout],_cashout] remoteExec ["server_fnc_moneyLog", 2];
["Sukces",format["Wyprałeś: $%1", _cashout],[0,255,0,1],""] call Client_fnc_showNotification;
[player, getunitloadout player, getPlayerUID player] remoteExec ["Server_fnc_invSave", 2];
//[player,objNull,3,format ["%1 sprzedał NARKOTYKI w ilości %2 za %3 $", name player, _total, _cashout],_cashout, "NARKOTYKI", _total] remoteExec ["server_fnc_economyLog", 2];
//hint format["Zarobiłeś $%1.",_cashout];
