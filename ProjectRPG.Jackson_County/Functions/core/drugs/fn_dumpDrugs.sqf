_class1 = ["CG_Heroin"];  
_class2 = ["CG_MethBag100","CG_MethBag90"]; 
_class3 = ["CG_Cocaine"]; 
_class4 = ["CG_WeedBag4"]; 
_class5 = ["CG_MethBag80","CG_WeedBag3"]; 
_class6 = ["CG_MethBag70","CG_WeedBag2"]; 
_class7 = ["CG_MethBag60"]; 
_class8 = ["CG_MethBag50","CG_WeedBag1"]; 
_mafia = player getVariable ["Mafia",0];
_total = 0;
_cashout = 0;

{
	_mag = _x;
	if(_mag IN _class1) then { _cashout = _cashout + 350; player removeMagazine _mag; _total = _total + 1; };
	if(_mag IN _class2) then { _cashout = _cashout + 300; player removeMagazine _mag; _total = _total + 1; };
	if(_mag IN _class3) then { _cashout = _cashout + 250; player removeMagazine _mag; _total = _total + 1; };
	if(_mag IN _class4) then { _cashout = _cashout + 210; player removeMagazine _mag; _total = _total + 1; };
	if(_mag IN _class5) then { _cashout = _cashout + 180; player removeMagazine _mag; _total = _total + 1; };  
	if(_mag IN _class6) then { _cashout = _cashout + 160; player removeMagazine _mag; _total = _total + 1; }; 
	if(_mag IN _class7) then { _cashout = _cashout + 140; player removeMagazine _mag; _total = _total + 1; }; 
	if(_mag IN _class8) then { _cashout = _cashout + 120; player removeMagazine _mag; _total = _total + 1; };

} forEach magazines player;

if(myjob == "Mafia" && _mafia > 2 && _mafia < 4) then { _cashout = _cashout * 2.0 };
if(myjob == "Mafia" && _mafia >= 4) then { _cashout = _cashout * 2.25 };

[_cashout] call Client_fnc_sl_addCash_secure;

["Erfolgreich",format["Du hast Drogen für $%1 verkauft.", _cashout],[0,255,0,1],""] call Client_fnc_showNotification;
[player,objNull,3,format ["%1 er verkauft %2 päckchen drogen für %3$", name player, _total, _cashout],_cashout, "DROGEN", _total] remoteExec ["server_fnc_economyLog", 2];

[player, getunitloadout player, getPlayerUID player] remoteExec ["Server_fnc_invSave", 2];
if(myJob != "Mafia") exitwith {};
[1,_total,player,getpos player] remoteExec ["server_fnc_drugJob",2];



