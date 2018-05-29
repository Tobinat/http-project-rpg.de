if!((str (nearestObjects [player, [], 3]) find "arundod") > -1 ) exitWith {};

  _findchance = round(random 20);
  if(_findchance > 10) then {
  _garn = "prpg_item_garn";
  player additem _garn;
  ["Du hast Garn gesammelt", true] spawn domsg;
  ["OreGathered"] spawn mav_ttm_fnc_addExp;
  };
