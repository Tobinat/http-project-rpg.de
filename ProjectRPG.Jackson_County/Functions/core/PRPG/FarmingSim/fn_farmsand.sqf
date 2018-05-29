if(surfacetype getpos player != "#k_sand") exitwith {};


_findchance = round(random 20);
if(_findchance > 10) then {
_sand = "prpg_item_sand";
player additem _sand;
["Du hast Sand gesammelt", true] spawn domsg;
["OreGathered"] spawn mav_ttm_fnc_addExp;
};
