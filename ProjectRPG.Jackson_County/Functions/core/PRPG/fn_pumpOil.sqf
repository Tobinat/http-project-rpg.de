/*
fn_pumpOil.sqf
Written by Leonard for PRPG

Pumpt Öl via Bohrturm LKW
*/

if !(typeof CurrentcursorTarget == "prpg_kamaz_6550") exit with {};
if !(cursorTarget animationPhase "bur_rot" > 0.99) exit with {
	hint "Warte bis der Bohrer auf eine Quelle getroffen ist!"
	};
if ("CG_OilBarrel" in MagazineCargo cursorTarget) exit with {
	hint "Du hast bereits Öl in deinem LKW, entlere ihn erst einmal!"
	};
if (player distance [9500.73,9700.02,0.00143892] > 35) exit with {
	hint "Du hast am Falschen Ort gebohrt und nun wasser in den Leitungen"
	};

cursorTarget addItemCargo ["CG_OilBarrel", 6];
["OreGathered"] spawn mav_ttm_fnc_addExp;
