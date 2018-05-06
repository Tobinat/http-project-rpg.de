/*
fn_pumpOil.sqf
Written by Leonard for PRPG

Pumpt Öl via Bohrturm LKW
*/

if !(typeof CurrentcursorTarget == "prpg_kamaz_6550") exit with {};
if !(cursorTarget animationPhase "bur_rot" > 0.99) exit with {};
if ("CG_OilBarrel" in ((getItemCargo cursorTarget) select 0)) exit with {};

cursorTarget = this;
for "_i" from 1 to 6 do {this addItemCargo "CG_OilBarrel";};
["OreGathered"] spawn mav_ttm_fnc_addExp;
