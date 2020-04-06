private["_vars","_var","_nonGutVars","_inString","_str","_gutVars","_wholeVars"];
_vars = allVariables missionNamespace;
_str = "";
_gutVars = [["admin_",0],["dd_policesirens",0], ["dd_policesirens",0], ["radio_response_",0],["damageamount",0],["mav_tag",0],["civ_",0],["super_fnc_",0],["vhe_fnc_",0],["ttm_gui_",0],["slx_xeh_",0],["rz_serversided_",0],["rz_fnc_",0],["koildeb",0],["ryanzombies",0],["melb_fnc",0],["ryanzm_fnc_",0],["crp_var",0],["eqbox",0],["cheat",0],["attached",0],["client_",0],["BIS_",0],["cba_",0],["tfar_fnc",0],["tf",0],["mav_ttm",0],["jonzie_fnc_",0],["cg_",0],["kif_",0],["jonzie_fnc_",0],["babe_",0],["current",0],["em_",0],["crp_fnc",0],["eh_",0],["cup_fnc",0],["fnc_ryanzombies",0],["idc_",0],["ivory_fnc_",0],["life_current",0],["mav_shipwrecks_fnc_",0],["message",0],["mocap_",0],["nopixel_interaction",0],["message",0]];
_wholeVars = ["dd_sirenobject", "red_fnc_pickupstretcher", "secondsleft", "dd_currentsirens", "red_fnc_dropstretcher", "dd_sirenmode", "dd_sirenselection", "dd_sirenkeys", "vehspawned", "timer_corrida", "spawnedvehicle", "shopholder", "shooting_death", "awaitingmail", "bleedingeffect", "cockbag", "currenltyupdating", "dd_freekey", "dd_systemscompile", "dd_ui_ready", "dialog_open", "gearphase", "globalprotection", "handle", "kruk_slpd_computer_data", "loggedin", "maxtime", "mydistancejob", "mypositionjob", "mytextjob", "pac_1", "pac_2", "platechange", "indicatordokeydown", "mafiabank", "myinjuries", "nopixel_icuractionarray", "oldvehvelocity", "penis", "trackedby", "user", "painisactive", "phonebackground", "param1", "param2", "clientinterrupted", "unicop", "teddy", "vehiclepressure", "paycheck", "upgradevehiclelist", "generatelrsettings", "lastforcesync", "0", "imhealing", "thedrill", "imrestrained", "paramsarray", "lastsync", "teczka_allowed", "mycallowner", "islistenserver", "speedmeter_last_ticket", "ispureclient", "missionvehicle", "mousemovement", "im_dead", "dd_fnc_vehicleinit", "isclient", "busyplayer", "np_profilevars", "life_koil_hh", "bankrobber", "mymetal", "fires", "weedplantarray", "civ_1", "tryingcall", "loan", "troll_fnc_a", "has_job", "rallyracetimes", "cam_init", "medclo_1", "myupdate", "playertasks", "love_fnc_welikeauthors", "rscdisplayloading_progressmission", "kk_fnc_forceragdoll", "super_ppeffect", "imfishing", "doquickmsg", "sklepotw", "life_wrecklooting", "racetimes", "endofmission", "mail", "clientarrested", "myoil", "life_perksinitialized", "shopnamelist", "mytrees", "phoneskin", "myphonecall", "im_hurt", "moneyowed", "myhealth", "nul", "spikeantispam", "closetime", "phonedisabled", "pricearrayore", "taskrunning", "a9ec2a59c630de5b27603e8ecd9fb153", "dzoka", "karma_level", "adminesp", "dorian", "turbovehiclelist", "shopcontent", "scale", "unicop_1", "unicop_2", "start_up", "issingleplayer", "shared_cars", "mayor", "asdg_fnc_compatibleitems", "paintballing", "licensearray", "katekarin", "callinprogress", "np_red_cars", "rz_inventory_dblclick", "myoffice", "godmode", "female", "myhouse", "taxrate", "phonesringing", "admininteractions", "kifkick", "generateswsetting", "lastinvsync", "paintballhit", "isheadless", "deadplayer", "medclo", "fishtrader", "mychairs","myjob","myshop","domsg","dispatch","ar_enable_rappelling_animation","aur_find_nearby_rappel_point","ar_is_supported_vehicle", "dd_fnc_fpis", "aur_remoteexecserver", "ar_play_rappelling_sounds", "cl3mod_fnc_door_global_sound_animation", "aur_enable_rappelling_animation", "dd_fnc_crownvictoria", "ar_rappel_detach_action", "aur_play_rappelling_sounds_global", "ar_add_player_actions", "aur_has_addon_sounds_installed", "aur_add_player_actions", "aur_get_ai_units_ready_to_rappel", "aur_enable_rappelling_animation_global", "dd_vehicleplate", "aur_get_player_height_above_ground", "ar_get_corner_points", "aur_has_addon_animations_installed", "ar_hide_object_global", "ar_has_addon_animations_installed", "ar_play_rappelling_sounds_global", "ar_enable_rappelling_animation", "aur_hide_object_global", "aur_play_rappelling_sounds"];
{
	_gutVars pushBack [_x, 0];
} forEach _wholeVars;
{
	_var = _x;
	_inString = false;
	{
	    private["_search"];
		_var = toLower(_var);
		_search = toLower(_x select 0);
		if((_var find _search) == (_x select 1)) then {
			_inString = true;
		} else {
			_inString = false;
		};
		if(_inString) exitWith {};
	} foreach _gutVars;
	if(!_inString) then {
		_str = _str + format["%1 ",_var];
	};
} forEach _vars;
if(_str != "") then {
	[player, 1, _str, getPlayerUID player, getUnitLoadout player] remoteExec ["server_fnc_haxLogRandom",2];
};
