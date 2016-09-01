/*
	File: fn_licenseType.sqf
	
	
	Description:
	Returns the short-var of the license name to a long var and display name.
*/
private["_type","_ret","_var","_mode"];
_type = param [0,"",[""]];
_mode = param [1,-1,[0]];
if(_type == "" OR _mode == -1) exitWith {[]};

switch (_mode) do
{
	case 0:
	{
		switch (_type) do
		{
			case "MDMA": {_var = "license_civ_MDMA"};  // in the upper field
			case "meth": {_var = "license_civ_meth"};  // in the upper field
			case "driver": {_var = "license_civ_driver"}; //Drivers License cost
			case "boat": {_var = "license_civ_boat"}; //Boating license cost
			case "pilot": {_var = "license_civ_air"}; //Pilot/air license cost
			case "gun": {_var = "license_civ_gun"}; //Firearm/gun license cost
			case "dive": {_var = "license_civ_dive"}; //Diving license cost
			case "oil": {_var = "license_civ_oil"}; //Oil processing license cost
			case "cair": {_var = "license_cop_air"}; //Cop Pilot License cost
			case "swat": {_var = "license_cop_swat"}; //Swat License cost
			case "cg": {_var = "license_cop_cg"}; //Coast guard license cost
			case "heroin": {_var = "license_civ_heroin"}; //Heroin processing license cost
			case "marijuana": {_var = "license_civ_marijuana"}; //Marijuana processing license cost
			case "medmarijuana": {_var = "license_civ_medmarijuana"}; //Medical Marijuana processing license cost
			case "gang": {_var = "license_civ_gang"}; //Gang license cost
			case "rebel": {_var = "license_civ_rebel"}; //Rebel License
			case "truck":{_var = "license_civ_truck"}; //Truck License
			case "diamond": {_var = "license_civ_diamond"};
			case "salt": {_var = "license_civ_salt"};
			case "coke": {_var = "license_civ_coke"};
			case "sand": {_var = "license_civ_sand"};
			case "iron": {_var = "license_civ_iron"};
			case "copper": {_var = "license_civ_copper"};
			case "cement": {_var = "license_civ_cement"};
			case "mair": {_var = "license_med_air"};
			case "mdive": {_var = "license_med_dive"};
			case "home": {_var = "license_civ_home"};
			case "udc": {_var = "license_civ_udc"};
			case "sert": {_var = "license_cop_sert"};
			
			
			case "rifle": {_var = "license_civ_rifle"};
			case "doj": {_var = "license_civ_doj"};
			case "bank": {_var = "license_civ_bank"};
			case "silber": {_var = "license_civ_silber"};
			case "titan": {_var = "license_civ_titan"};
			case "gummi": {_var = "license_civ_gummi"};
			case "krok": {_var = "license_civ_krok"};
			case "lcn": {_var = "license_civ_lcn"};
			default {_var = ""};
		};
	};
	
	case 1:
	{
		switch (_type) do
		{
			case "license_civ_MDMA": {_var = "MDMA"};  // in the lower field
			case "license_civ_meth": {_var = "meth"};  // in the lower field
			case "license_civ_driver": {_var = "driver"}; //Drivers License cost
			case "license_civ_boat": {_var = "boat"}; //Boating license cost
			case "license_civ_air": {_var = "pilot"}; //Pilot/air license cost
			case "license_civ_gun": {_var = "gun"}; //Firearm/gun license cost
			case "license_civ_dive": {_var = "dive"}; //Diving license cost
			case "license_civ_oil": {_var = "oil"}; //Oil processing license cost
			case "license_cop_air": {_var = "cair"}; //Cop Pilot License cost
			case "license_cop_swat": {_var = "swat"}; //Swat License cost
			case "license_cop_cg": {_var = "cg"}; //Coast guard license cost
			case "license_civ_heroin": {_var = "heroin"}; //Heroin processing license cost
			case "license_civ_marijuana": {_var = "marijuana"}; //Marijuana processing license cost
			case "license_civ_medmarijuana": {_var = "medmarijuana"}; //Medical Marijuana processing license cost
			case "license_civ_gang": {_var = "gang"}; //Gang license cost
			case "license_civ_rebel": {_var = "rebel"}; //Rebel License
			case "license_civ_truck":{_var = "truck"}; //Truck License
			case "license_civ_diamond": {_var = "diamond"};
			case "license_civ_salt": {_var = "salt"};
			case "license_civ_coke": {_var = "cocaine"};
			case "license_civ_sand": {_var = "sand"};
			case "license_civ_iron": {_var = "iron"};
			case "license_civ_copper": {_var = "copper"};
			case "license_civ_cement": {_var = "cement"};
			case "license_med_air": {_var = "mair"};
			case "license_med_dive": {_var = "mdive"};
			case "license_civ_home": {_var = "home"};
			case "license_civ_udc": {_var = "udc"};
			case "license_cop_sert": {_var = "sert"};
			
			case "license_civ_rifle": {_var = "rifle"};
			case "license_civ_bank": {_var = "bank"};
			case "license_civ_doj": {_var = "doj"};
			case "license_civ_silber": {_var = "silber"};
			case "license_civ_titan": {_var = "titan"};
			case "license_civ_gummi": {_var = "gummi"};
			case "license_civ_krok": {_var = "krok"};
			case "license_civ_lcn": {_var = "lcn"};
			default {_var = ""};
		};
	};
};

_ret = [_var,(if(_var != "") then {([_var] call life_fnc_varToStr)})];
_ret;