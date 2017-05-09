_class1 = ["CG_MethBag100","CG_MethBag90","CG_WeedBag4","CG_Heroin"];
_class2 = ["CG_MethBag80","CG_WeedBag3","CG_Cocaine"];
_class3 = ["CG_MethBag70","CG_WeedBag2"];
_class4 = ["CG_MethBag60"];
_class5 = ["CG_MethBag50","CG_WeedBag1"];

_total = 0;
_cashout = 0;

{
	_mag = _x;
	if(_mag IN _class1) then { _cashout = _cashout + 145; player removeMagazine _mag; _total = _total + 1; };
	if(_mag IN _class2) then { _cashout = _cashout + 125; player removeMagazine _mag; _total = _total + 1; };
	if(_mag IN _class3) then { _cashout = _cashout + 110; player removeMagazine _mag; _total = _total + 1; };
	if(_mag IN _class4) then { _cashout = _cashout + 90; player removeMagazine _mag; _total = _total + 1; };
	if(_mag IN _class5) then { _cashout = _cashout + 70; player removeMagazine _mag; _total = _total + 1; };	

} forEach magazines player;

if(myjob == "Mafia") then { _cashout = _cashout * 2.25 };

[_cashout] call Client_fnc_addCash;

hint format["You made $%1 from this drug run.",_cashout];



if(myJob != "Mafia") exitwith {};
[1,_total,player,getpos player] remoteExec ["server_fnc_drugJob",2];



