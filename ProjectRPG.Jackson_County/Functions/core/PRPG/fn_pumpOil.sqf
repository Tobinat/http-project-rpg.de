/*
fn_pumpOil.sqf
Written by Leonard for PRPG

Pumpt Öl via Bohrturm LKW
*/
/*
if !("CG_OilBarrel" in MagazineCargo cursorTarget) then {
	cursorTarget addItemCargo ["CG_OilBarrel", 6];
	["OreGathered"] spawn mav_ttm_fnc_addExp;
	hint "Du hast Öl gesammelt";
	} else {
		hint "Du Hast noch Öl im Laster.";
	};
*/

_pumpe = cursorTarget;
_fuel = fuel _pumpe;
if (_fuel < 0.4) exitWith {
["Du hast nicht genug Benzin im LKW!",false] spawn domsg;
};

[_pumpe,0] remoteExec ["client_fnc_setFuel",_pumpe];

//Seiten öffnen
_pumpe animate ["bort_r", 1];
_pumpe animate ["bort_l", 1];

["Dein LKW Bohrt nun nach Öl, das dauert ein wenig!",false] spawn domsg;

sleep 1;

//Pumpe oder so
_pumpe animate ["dizel_slang", 1];

waitUntil {_pumpe animationPhase "dizel_slang" > 0.99 };
sleep 1;

//Stützen ausfahren
_pumpe animate ["opora_l", 1];
_pumpe animate ["opora_r", 1];
_pumpe animate ["opora_l_niz", 1];
_pumpe animate ["opora_r_niz", 1];

waitUntil {_pumpe animationPhase "opora_r_niz" > 0.99 };
sleep 1;

//Bohrturm ausfahren
_pumpe animate ["strela", 1];
_pumpe animate ["gidra", 1];
_pumpe animate ["stok", 1];

waitUntil {_pumpe animationPhase 'strela' > 0.9 };
sleep 1;

//Bohrvorgang beginnen
_pumpe animate ["bur_plate", 1];
_pumpe animate ["bur", 1];
_pumpe animate ["bur_rot", 1];

waitUntil {_pumpe animationPhase 'bur_rot' > 0.99 };
sleep 1;

//Pump vorgang beginnen
_pumpe animate ["truba_hide", 1];

sleep 5;

// Öl in LKW & XP an spieler
_chance = random (200);
if (_chance > 2) then {
	_pumpe addItemCargoGlobal ["CG_OilBarrel", 6];
	["OreGathered"] spawn mav_ttm_fnc_addExp;
	["Du hast Öl gesammelt, schau in den LKW!",false] spawn domsg;
	} else {
	["Du hast kein Ölvorkommen gefunden!",false] spawn domsg;
};

sleep 2;

waitUntil {_pumpe animationPhase 'truba_hide' > 0.99 };
sleep 1;

//Pump vorgang Beenden
_pumpe animate ["truba_hide", 0];

waitUntil {_pumpe animationPhase 'truba_hide' < 0.001 };
sleep 1;

//Bohrer hochfahren
_pumpe animate ["bur_plate", 0];
_pumpe animate ["bur", 0];
_pumpe animate ["bur_rot", 0];

waitUntil {_pumpe animationPhase 'bur_rot' < 0.001 };
sleep 1;

//Bohrarm einfahren
_pumpe animate ["strela", 0];
_pumpe animate ["gidra", 0];
_pumpe animate ["stok", 0];

waitUntil {_pumpe animationPhase 'strela' < 0.001 };
sleep 1;

//Stützen einfahren
_pumpe animate ["opora_l", 0];
_pumpe animate ["opora_r", 0];
_pumpe animate ["opora_l_niz", 0];
_pumpe animate ["opora_r_niz", 0];

waitUntil {_pumpe animationPhase 'opora_l' < 0.001 };
sleep 1;

//Pumpe aus
_pumpe animate ["dizel_slang", 0];

//Seiten schließen
_pumpe animate ["bort_r", 0];
_pumpe animate ["bort_l", 0];

hint "Der Bohrvorgang ist beendet.";

_fuel = _fuel - 0.4;
//_pumpe setFuel _fuel;
[_pumpe,_fuel] remoteExec ["client_fnc_setFuel",_pumpe];
