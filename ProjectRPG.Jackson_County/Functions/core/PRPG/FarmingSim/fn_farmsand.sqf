if(surfacetype getpos player != "#k_sand") exitwith {};


_findchance = round(random 20);
if(_findchance > 5) then {
	_sand = "prpg_item_sandsack";
	if (player canAdd _sand) then {
		player additem _sand;
		["Du hast Sand gesammelt", true] spawn domsg;
		["OreGathered"] spawn mav_ttm_fnc_addExp;
	} else {
		["Du hast nicht genug Platz für Sand!", true] spawn domsg;
	};
};
