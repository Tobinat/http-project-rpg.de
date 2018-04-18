createDialog "garage3";

ctrlSetText [1000, "Garage"];

_garage = [];

if(myJob == "Cop") then {
	_garage = [
	
			"HST_CVPI_MD001",
			"HST_CVPI_MD002",
			"HST_CVPI_MD003",
			"HST_CVPI_MD004",
			"HST_CVPI_MD005",
			"HST_CVPI_MD006",
			"HST_CVPI_MD007",
			"HST_FPI_MD008",
			"HST_FPI_MD009",
			"HST_FPI_MD010",
			"HST_FPI_MD011",
			"HST_DC12_MD020",
			"HST_DC12_MD021",
			"HST_DC15_MD022",
			"HST_DC15_MD023",
			"HST_DC15_MD041",
			"HST_DC15_MD042",
			"HST_DC15_MD043",
			"sl_055",
			"kif_dodgedurango_police",
			"kif_dodgedurango_police2",
			"HST_MUSTANG_MD051",
			"sl_tahoe_police",
			"sl_tahoe_police_supervisor",
			"fpiu_01",
			"HST_SUBURBAN_AIAD901",
			"red_cvpi_06_p_custom1",
			"red_suburban_15_p_custom1",
			"sl_cvpi_sheriff",
			"sl_cvpi_swat",
			"sl_cvpi_highway",
			"kif_dodge_charger_sheriff",
			"kif_dodge_charger_swat",
			"kif_dodge_charger_highway",
			"kif_dodgedurango_sheriff",
			"kif_dodgedurango_swat",
			"kif_dodgedurango_highway",
			"SL_Command_Unit",
			"sl_impala_201_supervisior",
			"sl_impala_202",
			"sl_impala_203",
			"sl_impala_204",
			"sl_impala_um_white",
			"sl_impala_um_black",
			"sl_impala_um_blue",
			"sl_impala_um_red",
			"sl_charger_220",
			"sl_charger_slicktop_221",
			"sl_222",
			"sl_224",
			"sl_fpiu_so",
			"sl_f150_so",
			"sl_fpiu_227",
			"sl_taurus_231",
			"sl_taurus_232",
			"sl_taurus_233",
			"sl_cvpi_241",
			"sl_cvpi_242",
			"sl_cvpi_243",
			"sl_cvpi_244",
			"sl_suburban_251",
			"sl_suburban_250",
			"sl_260",
			"sl_269",
			"sl_280",
			"sl_281",
			"sl_282",
			"sl_283",
			"sl_284",
			"sl_285",
			"sl_286",
			"red_kawasaki_10_p_sheriff",
			"red_f350_08_p_parkranger",
			"kif_suburban_black",
			"sl_tahoe_sheriff",
			"sl_tahoe_sheriff2",
			"sl_tahoeuc_police",
			"sl_mustang_sheriff",
			"sl_charger_sert",
			"red_cvpi_06_p_trooper",
			"red_explorer_16_p_statetrooper",
			"red_f350_08_p_statetrooper",
			"kif_f150_statetrooper",
			"sl_tahoe_statetrooper",
			"red_suburban_15_p_u_trooper",
			"red_explorer_16_p_fto",
			"red_kawasaki_10_p",
			"FPIU_04",
			"sl_ford350_swat",
			"sl_charger12_swat",
			"sl_mustang_swat",
			"cg_suburban_sert_pol",
			"Abruzzi_LencoPD_01",
			//"Abruzzi_LencoPD_01",
			//"kif_taurus_sheriff",
			//"kif_kawasaki_police",
			//"kif_kawasaki_sheriff",
			"ivory_suburban_unmarked",
			"ivory_suburban_slicktop",
			"ivory_suburban_marked",
			"ivory_evox_unmarked",
			"ivory_evox_slicktop",
			"ivory_evox_marked",
			"ivory_isf_unmarked",
			"ivory_isf_slicktop",
			"ivory_isf_marked",
			"ivory_m3_unmarked",
			"ivory_m3_slicktop",
			"ivory_m3_marked",
			"kif_rev_marked",
			"kif_rev_unmarked",
			"B_Boat_Transport_01_F",
			"ivory_rs4_unmarked",
			"vvv_HarleyDavidson_CustomBobber",
			"C_Boat_Civil_01_F",
			"C_Scooter_Transport_01_F",
			"MELB_H6M",
			"MELB_MH6M"
			];
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




