
if (isNil "searchedcrates") then { searchedcrates = []; };

if (currentcursortarget IN searchedcrates) exitwith { hint "You recently searched this crate"; };

searchedcrates pushback currentcursortarget;

_chance = round(random(100));

if(_chance < 30) then { player additem "cg_DrugBrick"; ["You found drugs",false] spawn domsg; };


if(_chance == 99) THEN {
	player additem "NP_kPelt";
	["You found a very rare pelt!",false] spawn domsg; 
};

[] spawn {
	_crate = currentcursortarget;
	uisleep 300;
	_pia = searchedcrates find _crate;
	searchedcrates deleteAT _pia;
};