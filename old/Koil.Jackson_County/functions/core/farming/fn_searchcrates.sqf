
if (isNil "searchedcrates") then { searchedcrates = []; };

if (currentcursortarget IN searchedcrates) exitwith { hint "Du hast die Kiste schon durchstöbert"; };

searchedcrates pushback currentcursortarget;

_chance = round(random(100));

if(_chance < 30) then { player additem "cg_DrugBrick"; ["Du hast Drogen gefunden, du Glückspilz!",false] spawn domsg; };


if(_chance == 99) THEN {
	player additem "NP_kPelt";
	["Du hast einen sehr seltenen Pelz gefunden!",false] spawn domsg; 
};

[] spawn {
	_crate = currentcursortarget;
	uisleep 300;
	_pia = searchedcrates find _crate;
	searchedcrates deleteAT _pia;
};