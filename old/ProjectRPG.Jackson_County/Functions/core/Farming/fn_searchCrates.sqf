
if (isNil "searchedcrates") then { searchedcrates = []; };

if (currentcursortarget IN searchedcrates) exitwith { hint "Sie haben diese Box bereits durchsucht."; };

searchedcrates pushback currentcursortarget;

_chance = round(random(150));

if(_chance > 145) then {
 player additem "NP_kPelt";
	["Du hast eine sehr seltenen Pelz gefunden.",false] spawn domsg; 
 };

if(_chance < 20) then { player additem "cg_DrugBrick"; ["Du hast Drogen gefunden.",false] spawn domsg; };


/*if(_chance == 149) THEN {
	player additem "NP_kPelt";
	["Znalazłeś bardzo rzadką skórę!",false] spawn domsg; 
};*/

[] spawn {
	_crate = currentcursortarget;
	uisleep 300;
	_pia = searchedcrates find _crate;
	searchedcrates deleteAT _pia;
};