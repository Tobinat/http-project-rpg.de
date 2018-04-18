params ["_vehicle","_owedPlayers","_owedInformation","_object"];
private["_owner"];
_carowner = _vehicle select 8;
{

	if( (getplayeruid _x) == _carowner ) then {
		_owner = _x;
	};

} foreach playableunits;


//copy from car shop - cunt.
_civilianVehicle = [
	["Jonzie_XB",1900],
	["vvv_Chevrolet_Cone0",2000],
	["ADM_1969_Camaro",2200],
	["Jonzie_Mini_Cooper",2300],
	["Jonzie_Ceed",2400],
	["ADM_1964_Impala",2500],
	["ivory_190e",2600],
	["jonzie_30CSL",3200],
	["ADM_1969_Charger",3500],
	["vvv_Abarth_695",4000],
	["ivory_rs4",5000],
	["ADM_GMC_Vandura",5100], // can farm
	["ivory_gti",6000],	
	["Jonzie_Transit",6400], //can farm
	["vvv_Chevrolet_Bel_Air",7000],
	["vvv_Abarth_500",7000],
	["vvv_Alfa_Romeo_Spider_Duetto",8000],
	["vvv_Chevrolet_Camaro_RS",9000],
	["Jonzie_Mini_Cooper_r_spec",9000],	
	["ADM_Ford_F100",9500], // can farm	
	["nopixel_GMC_Campervan",9999],	
	["nopixel_Box_Default",9999],	
	["vvv_Chevrolet_Blazer",10000],
	["vvv_Alfa_Romeo_59", 10000],
	["vvv_Chevrolet_Impala",10000],
	["ivory_e36",12000],
	["Jonzie_Raptor",12000], // can farm	
	["Jonzie_Escalade",12000],
	["ivory_gt500",12000],
	["vvv_Chevrolet_Corvette_Cone",12000],
	["vvv_Cadillac_Eldorado",15000],
	["ivory_evox",18000],	
	["ivory_supra",19000],	
	["ivory_r34",22000],
	["vvv_Cadillac_CTSV",25000],
	["ivory_m3",25000],
	["ivory_wrx",27000],
	["vvv_Cadillac_Escalade",30000],
	["vvv_Audi_A4",30000],
	["ivory_elise",30000],		
	["ivory_isf",35000],		
	["Jonzie_Viper",39999],
	["vvv_Audi_RS6_Avant_C6",40000],
	["vvv_Audi_Q7",50000],
	["vvv_Audi_Q7",50000],
	["ivory_c",75000],
	["vvv_Cadillac_DTS",75000],
	["ivory_lfa",85000],
	["ivory_mp4",95000],
	["vvv_Cadillac_XLR_V",95000],
	["ivory_r8", 120000],
	["ivory_911",100000],
	["vvv_Aston_Martin_DB9", 120000],
	["vvv_audi_r8", 120000],
	["ivory_r8_spyder", 140000],
	["vvv_Audi_TT_RS_Coupe", 150000],
	["vvv_Aston_Martin_Rapide", 150000],
	["ivory_lp560", 170000],
	["ivory_rev", 220000],
	["ivory_ccx", 240000],
	["ivory_f1",250000],
	["ivory_veyron",300000],
	["vvv_man_obras_negro", 35000],
	["shounka_buggy", 35000],
	["vvv_man_obras_negro", 35000],
	["VVV_cazafantasmas_civ", 35000],
	["devon_gtx", 50000],
	["vvv_DOD_RamSRT_civ", 25000],
	["vvv_dumper", 50000],
	["Jonzie_Forklift", 25000],
	["vvv_formula1_twitch", 100000],
	["vvv_formula1", 100000],
	["vvv_formula1_noshpegan", 100000],
	["vvv_formula1_redbull", 100000],
	["vvv_formula1_ferrari", 100000],
	["vvv_formula1_Mclaren", 100000],
	["C_Offroad_02_unarmed_F", 50000],
	["New_Holland_TC590_civ", 25000],
	["vvv_Ponsse_Buffalo_Forwarder_civ", 30000],
	["B_T_LSV_01_unarmed_F", 100000],
	["vvv_SeatLeon_2014_WEBER", 100000],
	["vvv_SeatLeon_2014_BRICHE_BLUE", 100000],
	["vvv_SeatLeon_2014_FOGLIO", 100000],
	["vvv_SeatLeon_2014_font", 100000],
	["shelbycobra_car_azul", 100000],
	["ivory_supra_topsecret", 100000],
	["vvv_steyrmulti_civ", 25000],
	["Acj_Harley_Davidson_Sons_Of_Anarchy",15000],
	["Acj_HarleyDavidson_Sholvehead",20000],
	["vvv_HarleyDavidson_CustomBobber1",25000],
	["Acj_BMWR_75",35000]
];
if(_owner IN _owedPlayers) then {

	_pia = _owedplayers FIND _owner;

	_amount = (_owedinformation SELECT _pia) SELECT 1;

	_typeofVeh = (_vehicle select 1);
	_licensePlate = (_vehicle select 0);
	_value = 0;

	{
		if((_x select 0) == _typeofVeh) then { _value = (_x select 1) * 0.65; };
	}foreach _civilianVehicle;

	if(_value == 0) exitwith { hint "Wartość pojazdu to 0"; };

	_amount = _amount - _value;
	if(_amount < 0) then { _amount = 0; };

	["set","MafiaMoney",_amount] remoteExec ["client_fnc_sustain",_owner];

	//add funds to mafia bank

	["Add",_value] remoteexec ["server_fnc_updateMafiaBank",2];


	[_licensePlate, _vehicle, nil, nil, nil, nil, nil, nil, nil, "Remove", _owner] remoteExec ["Server_fnc_garageUpdate",2];
	
	deletevehicle _object;
	//delete from database

} else {
	hint "Wlasciciel tego pojazdu nie ma dlugu u mafii.";	
};