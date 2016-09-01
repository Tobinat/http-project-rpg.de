/*
	File: fn_cleanup.sqf
	
	Description:
	Server-side cleanup script on vehicles.
*/

private ["_deleted"];
_deleted = false;

shitlist = (allMissionObjects "WeaponHolder") + 
	(allMissionObjects "GroundWeaponHolder") + 
	(allMissionObjects "WeaponHolderSimulated") + 
	(allMissionObjects "SmokeShell") +
	(allMissionObjects "CraterLong") +
	(allMissionObjects "CraterShort") +
	(allMissionObjects "StaticWeapon") +
	(allMissionObjects "Default");

while {true} do {
	if(isServer && {!isNil "hc_1"} && {!isNil "life_HC_isActive"} && {life_HC_isActive}) exitWith {
		[] remoteExec ["TON_fnc_cleanup",hc_1];
	};

	private["_veh","_units","_fuel"];
	sleep (5 * 60);
	{
		_veh = _x;
		_vehicleClass = getText(configFile >> "CfgVehicles" >> (typeOf _veh) >> "vehicleClass");
		
		if(_vehicleClass in["CG_Spikes","Land_Suitcase_F"]) then {
			_units = {(_x distance _veh > 100)} count allPlayers;
			deletevehicle _x;
			
			diag_log "Spikes und so n müll";
		};

		if(_vehicleClass in ["Car","Air","Ship"]) then {
			_dbInfo = _veh getVariable["dbInfo",[]];
			_units = {(_x distance _veh > 300)} count allPlayers;
			
			diag_log "Jedes Vehicle Distanz unter 300";
			
			if(crew _x isEqualTo [] && _units isEqualTo []) then {
				if(typeOf _vehicle isEqualTo "Jonzie_Raptor") then {
					{
						detach _x;
						deleteVehicle _x;
					} foreach (_vehicle getVariable ["spotlights",[]]);
				};			
				deleteVehicle _x; 
				_deleted = true;
				diag_log "Jedes Auto löschen";
			};
			
			if(_deleted) then {
				waitUntil {isNull _veh};
				_deleted = false;
			};
			
			_fuel = fuel _veh;
			
			if(isNull _veh) then {
				if(count _dbInfo > 0) then {
					_uid = _dbInfo select 0;
					_plate = _dbInfo select 1;

					_query = format["UPDATE vehicles SET active='0', fuel='%3' WHERE pid='%1' AND plate='%2'",_uid,_plate,_fuel];
					
					[_query,1] call DB_fnc_asyncCall;
					
					diag_log "Angeblicher query"; //danny stinkt. mfg variatox
				};
			};
		};
	} foreach vehicles;
	
	sleep (4 * 60);
	{
		if((typeOf _x) in ["cg_money_stack_1","Land_BottlePlastic_V1_F","Land_TacticalBacon_F","Land_Can_V3_F","Land_CanisterFuel_F","Land_Suitcase_F","Land_Sleeping_bag_blue_folded_F","Land_Screwdriver_V1_F","Land_ButaneCanister_F","Land_Antibiotic_F","Land_VitaminBottle_F","Land_DisinfectantSpray_F","Land_MobilePhone_smart_F","Land_Bandage_F","Land_Pillow_grey_F","plp_bo_BottleBitters","plp_bo_BottleBitters","Land_SatellitePhone_F","Land_Battery_F","Land_Defibrillator_F"]) then {
			deleteVehicle _x;
		};
	} foreach (allMissionObjects "Thing");
	
	sleep (4 * 60);
	{
		_units = {(_x distance _veh > 500)} count allPlayers;
		if(_units isEqualTo []) then {
			deleteVehicle _x;
		};
	} foreach shitlist;

};
