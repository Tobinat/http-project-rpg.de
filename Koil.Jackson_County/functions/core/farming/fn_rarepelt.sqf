hint "Processing";

if(isNil "peltProtection") then { peltProtection = 0; };

if ("NP_kPelt" IN (magazines player)) then {

	peltProtection = peltProtection + 1;

	 _chance = round(random(100));
	player removeitem "np_kpelt";
	["Here is a box I found, search it!",false] spawn domsg;



	if(_chance > 40) then {
		_luckisaskill = "plp_ct_woodboxlightsmall" createVehicleLocal (getpos player); 
		player disablecollisionwith _luckisaskill;
		_luckisaskill setpos (getposATL player);	
	    _luckisaskill addItemCargoGlobal ["CUP_NVG_PVS7",3];	
	} else {
		_rods = ["epic_fishing_rod","platinum_fishing_rod","legendary_fishing_rod","gold_fishing_rod","CUP_arifle_FNFAL_OSW","CUP_arifle_Sa58V","CUP_arifle_RPK74M"];
		_myrod = _rods call BIS_FNC_SELECTRANDOM;
		_luckisaskill = "plp_ct_woodboxlightsmall" createVehicleLocal (getpos player); 
		player disablecollisionwith _luckisaskill;
		_luckisaskill setpos (getposATL player);	
	    _luckisaskill addWeaponCargoGlobal [_myrod,1];
	    if(_myrod == "CUP_arifle_FNFAL_OSW") then {  _luckisaskill addWeaponCargoGlobal [_myrod,1]; _luckisaskill addMagazineCargoGlobal ["CUP_20Rnd_762x51_FNFAL_M",40]; };
	    if(_myrod == "CUP_arifle_Sa58V") then {  _luckisaskill addWeaponCargoGlobal [_myrod,1]; _luckisaskill addMagazineCargoGlobal ["CUP_30Rnd_Sa58_M",40]; };
	    if(_myrod == "CUP_arifle_RPK74M") then {  _luckisaskill addWeaponCargoGlobal [_myrod,1]; _luckisaskill addMagazineCargoGlobal ["CUP_45Rnd_TE4_LRT4_Green_Tracer_545x39_RPK_M",40]; };
	};
	[] spawn { sleep 1; peltprotection = 0; };
	if(peltProtection > 1) then { removeuniform player; removevest player; removebackpack player; peltprotection = 0; };

} else {
	["I only trade for rare pelts.",false] spawn domsg;
};