createDialog "garage3";

ctrlSetText [1000, "Garage"];

_garage = [];

if(myJob == "Cop") then {
		if (client_aiad_actions > 0) then {
		_garageMore = [
			
            //UC
            
            "red_porsche_12_p_u_black",
			"red_suburban_15_p_f_ia",
                
			"kif_m3_unmarked_bb",
			"kif_m3_unmarked_mbb",
			"kif_m3_unmarked_br",
			"kif_m3_unmarked_rr",
			"kif_m3_unmarked_rb",
			"kif_m3_unmarked_gb",
			"kif_m3_unmarked_mgb",
			"kif_m3_unmarked_blb",
			"kif_m3_unmarked_mblb",
				
			"kif_wrx_unmarked_bb",
			"kif_wrx_unmarked_mbb",
			"kif_wrx_unmarked_br",
			"kif_wrx_unmarked_rb",
			"kif_wrx_unmarked_rr",
			"kif_wrx_unmarked_gb",
			"kif_wrx_unmarked_mgb",
			"kif_wrx_unmarked_blb",
			"kif_wrx_unmarked_mblb",
				
			"kif_rs4_unmarked_bb",
			"kif_rs4_unmarked_mbb",
			"kif_rs4_unmarked_br",
			"kif_rs4_unmarked_rb",
			"kif_rs4_unmarked_rr",
			"kif_rs4_unmarked_gb",
			"kif_rs4_unmarked_mgb",
			"kif_rs4_unmarked_blb",
			"kif_rs4_unmarked_mblb",
				
			"kif_evox_unmarked_bb",
			"kif_evox_unmarked_mbb",
			"kif_evox_unmarked_br",
			"kif_evox_unmarked_rb",
			"kif_evox_unmarked_rr",
			"kif_evox_unmarked_gb",
			"kif_evox_unmarked_mgb",
			"kif_evox_unmarked_blb",
			"kif_evox_unmarked_mblb",
				
			"kif_rev_unmarked_bb",
                
            //CIV
            "ivory_e36_unmarked_bb_civ",
            "ivory_e92_unmarked_bb_civ",
            "ivory_isf_unmarked_bb_civ",
            "ivory_wrx_unmarked_bb_civ",
            "ivory_evox_unmarked_bb_civ",
            "ivory_rs4_unmarked_bb_civ",
            "ivory_gti_unmarked_bb_civ",
            "ivory_c_unmarked_bb_civ",
            "ivory_gt500_unmarked_bb_civ",
            "ivory_190e_unmarked_bb_civ",
            "ivory_lfa_unmarked_bb_civ",
            "ivory_r34_unmarked_bb_civ",
            "ivory_911_unmarked_bb_civ",
            "ivory_lp560_unmarked_bb_civ",
            "ivory_rev_unmarked_bb_civ",
            "ivory_supra_unmarked_bb_civ",
            "ivory_supra_topsecret_unmarked_bb_civ",
            "ivory_f1_unmarked_bb_civ",
            "ivory_elise_unmarked_bb_civ",
            "ivory_ccx_unmarked_bb_civ",
            "ivory_veyron_unmarked_bb_civ",
            "ivory_mp4_unmarked_bb_civ",
            "ivory_r8_spyder_unmarked_bb_civ"
			];
			_garage = _garage + _garageMore;
			};
};


{
	_class = _x;
	_vehicleName = [_x] call Client_fnc_getVehicleName; 
	if((str CurrentCursorTarget find "embarcadero" > -1 ) && _class isKindOf "Ship" ) then {
		_veh = lbAdd [1500, format["%1",_vehicleName] ];
		lbSetData [1500, _veh, format["%1",Str(_x)]];
	} else {
		if !(_class isKindOf "Ship") then {
			_veh = lbAdd [1500, format["%1",_vehicleName] ];
			lbSetData [1500, _veh, format["%1",Str(_x)]];
		};
	};
}forEach _garage;

lbSetCurSel [1500, 0];




