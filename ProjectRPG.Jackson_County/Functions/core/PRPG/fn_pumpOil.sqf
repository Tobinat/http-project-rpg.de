/*
fn_pumpOil.sqf
Written by Leonard for PRPG

Pumpt Öl via Bohrturm LKW
*/
cursorTarget addItemCargo ["CG_OilBarrel", 6];
["OreGathered"] spawn mav_ttm_fnc_addExp;
