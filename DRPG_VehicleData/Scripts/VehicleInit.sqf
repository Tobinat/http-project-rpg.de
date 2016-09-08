_vehicle = _this select 0;
if(isNull _vehicle)exitWith{};
diag_log "Vehicle Inited";
__policeCars = ["DRPG_06Victoria_P_P", "DRPG_10Taurus_P_P","DRPG_10Taurus_P_U","DRPG_08Commodore_P_P",
"DRPG_08Commodore_P_T",
"DRPG_08Commodore_P_T2",
"DRPG_08Commodore_P_U",
"DRPG_08Commodore_P_U_Red",
"DRPG_08Commodore_P_U_Blue",
"DRPG_08Commodore_P_U_White",
"DRPG_12Omega_P_P",
"DRPG_12Omega_P_U",
"DRPG_12Omega_P_U_Red",
"DRPG_12Omega_P_U_Blue",
"DRPG_12Omega_P_U_White",
"DRPG_12Omega_P_P",
"DRPG_12Omega_P_U",
"DRPG_12Omega_P_U_Blue",
"DRPG_12Omega_P_U_Red",
"DRPG_12Omega_P_U_White"
];
_suburbans = ["DRPG_08Suburban_P_U"];
_12Omega= [
"DRPG_12Omega_P_P",
"DRPG_12Omega_P_U",
"DRPG_12Omega_P_U_Blue",
"DRPG_12Omega_P_U_Red",
"DRPG_12Omega_P_U_White"
];

_blockEmissive = _12Omega;

if(typeOf(_vehicle) in __policeCars && !(typeof(_vehicle) in _blockEmissive))then{
	[_vehicle] execVM "\DRPG_VehicleData\scripts\Lights_Emissive.sqf";
};
if(typeOF(_vehicle) in __policeCars)then{
	[_vehicle, 0.5, ["Light_L"], ["Light_R"]] execVM "\DRPG_VehicleData\Scripts\Lights.sqf";
};
if(typeOf(_vehicle) == "DRPG_08Commodore_P_R")then{
	[_vehicle] execVM "\DRPG_VehicleData\scripts\Commy_Lights.sqf";
};
if(typeOf(_vehicle) in _12Omega)then{
	_vehicle setHit["Light_Red_H",1];
	_vehicle setHit["Light_Blue_H",1];
	[_vehicle] execVM "\DRPG_VehicleData\Scripts\Omega_Lights.sqf";
};	
// Wait for Server-Reliant data to be retrieved
waitUntil {!isNil "AM_SirenSystem"};
[_vehicle] spawn AM_SirenSystem;3