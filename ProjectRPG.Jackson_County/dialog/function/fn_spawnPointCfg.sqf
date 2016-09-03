/*
	File: fn_spawnPointCfg.sqf
	
	
	Description:
	Master configuration for available spawn points depending on the units side.
	
	Return:
	[Spawn Marker,Spawn Name,Image Path]
*/
private["_side","_return"];
_side = param [0,civilian,[civilian]];

//Spawn Marker, Spawn Name, PathToImage
switch (_side) do
{
	case west:
	{
		_return = [
			["cop_spawn_1","HQ Lakeside","\a3\ui_f\data\map\MapControl\watertower_ca.paa"],
			["cop_spawn_2","HQ Morrison","\a3\ui_f\data\map\MapControl\fuelstation_ca.paa"],
			["cop_spawn_3","HQ Los Diablos","\a3\ui_f\data\map\MapControl\fuelstation_ca.paa"],
			["cop_spawn_4","Airbase HQ","\a3\ui_f\data\map\Markers\NATO\b_air.paa"],
			["cop_spawn_5","LS County Jail","\a3\ui_f\data\map\GroupIcons\badge_rotate_0_gs.paa"]
		];
	};

	case east:
	{

		if(!license_civ_rebel) then {
			_return = [
				["civ_spawn_1","LS OldTown","\a3\ui_f\data\map\MapControl\watertower_ca.paa"],
				["lakeside_spawn_2","LS McDonalds","\a3\ui_f\data\map\MapControl\watertower_ca.paa"],
				//["lakeside_spawn_3","LS Race","\a3\ui_f\data\map\MapControl\watertower_ca.paa"],
				["civ_spawn_6","Knoxville","\a3\ui_f\data\map\MapControl\watertower_ca.paa"],
				["civ_spawn_5","Bedford","\a3\ui_f\data\map\MapControl\watertower_ca.paa"],
				["civ_spawn_4","Los Diablos","\a3\ui_f\data\map\MapControl\watertower_ca.paa"],
				["civ_spawn_2","Morrison","\a3\ui_f\data\map\MapControl\watertower_ca.paa"],
				["civ_spawn_3","San Cristobal","\a3\ui_f\data\map\MapControl\watertower_ca.paa"]
			];
			
			if(count life_houses > 0) then {
				{
					_pos = call compile format["%1",_x select 0];
					_house = nearestBuilding _pos;
					_houseName = getText(configFile >> "CfgVehicles" >> (typeOf _house) >> "displayName");
					
					_return pushBack [format["house_%1",_house getVariable "uid"],_houseName,"\a3\ui_f\data\map\MapControl\lighthouse_ca.paa"];
				} foreach life_houses;
			};	
		};

		if(license_civ_rebel && !(rebelshipment getVariable["progress",FALSE]) && !(rebelshipment getVariable["notCaptured",FALSE]) ) then {

			_return = [
				["reb_spawn_1","Rebel 1","\a3\ui_f\data\map\MapControl\watertower_ca.paa"],
				["reb_spawn_2","Rebel 2","\a3\ui_f\data\map\MapControl\watertower_ca.paa"],
				["civ_spawn_4","Los Diablos","\a3\ui_f\data\map\MapControl\watertower_ca.paa"],
				["ld_spawn_1","LD Flughafen","\a3\ui_f\data\map\MapControl\watertower_ca.paa"],
				["ld_spawn_2","LD Hospital","\a3\ui_f\data\map\MapControl\watertower_ca.paa"],
				["civ_spawn_6","Knoxville","\a3\ui_f\data\map\MapControl\watertower_ca.paa"],
				["civ_spawn_5","Bedford","\a3\ui_f\data\map\MapControl\watertower_ca.paa"],
				["civ_spawn_2","Morrison","\a3\ui_f\data\map\MapControl\watertower_ca.paa"],
				["civ_spawn_3","San Cristobal","\a3\ui_f\data\map\MapControl\watertower_ca.paa"]
			];


			
			if(count life_houses > 0) then {
				{
					_pos = call compile format["%1",_x select 0];
					_house = nearestBuilding _pos;
					_houseName = getText(configFile >> "CfgVehicles" >> (typeOf _house) >> "displayName");
					
					_return pushBack [format["house_%1",_house getVariable "uid"],_houseName,"\a3\ui_f\data\map\MapControl\lighthouse_ca.paa"];
				} foreach life_houses;
			};	
		};
		if(license_civ_rebel && (rebelshipment getVariable["progress",FALSE]) || license_civ_rebel && (rebelshipment getVariable["notCaptured",FALSE])) then {

			_return = [
				["civ_spawn_4","Los Diablos","\a3\ui_f\data\map\MapControl\watertower_ca.paa"],
				["ld_spawn_1","LD Flughafen","\a3\ui_f\data\map\MapControl\watertower_ca.paa"],
				["ld_spawn_2","LD Hospital","\a3\ui_f\data\map\MapControl\watertower_ca.paa"],
				["civ_spawn_6","Knoxville","\a3\ui_f\data\map\MapControl\watertower_ca.paa"],
				["civ_spawn_5","Bedford","\a3\ui_f\data\map\MapControl\watertower_ca.paa"],
				["civ_spawn_2","Morrison","\a3\ui_f\data\map\MapControl\watertower_ca.paa"],
				["civ_spawn_3","San Cristobal","\a3\ui_f\data\map\MapControl\watertower_ca.paa"]
			];


			
			if(count life_houses > 0) then {
				{
					_pos = call compile format["%1",_x select 0];
					_house = nearestBuilding _pos;
					_houseName = getText(configFile >> "CfgVehicles" >> (typeOf _house) >> "displayName");
					
					_return pushBack [format["house_%1",_house getVariable "uid"],_houseName,"\a3\ui_f\data\map\MapControl\lighthouse_ca.paa"];
				} foreach life_houses;
			};	
		};
	};
	

	
	case civilian:
	{
	
		if(license_civ_udc) then {
			_return = [
				
				
				
				["fbi_lvsf_spawn","Silver Lake Hauptquartier","\a3\ui_f\data\map\MapControl\watertower_ca.paa"],
				["cop_spawn_2","Morrison Outpost","\a3\ui_f\data\map\MapControl\watertower_ca.paa"],
				["cop_spawn_3","LD Outpost","\a3\ui_f\data\map\MapControl\watertower_ca.paa"],
				["state_spawn1","State Police Grouse Creek","\a3\ui_f\data\map\MapControl\watertower_ca.paa"],
				["state_spawn2","State Police HQ","\a3\ui_f\data\map\MapControl\watertower_ca.paa"],
				["civ_spawn_6","Knoxville","\a3\ui_f\data\map\MapControl\watertower_ca.paa"],
				["civ_spawn_5","Bedford","\a3\ui_f\data\map\MapControl\watertower_ca.paa"],
				["civ_spawn_4","Los Diablos","\a3\ui_f\data\map\MapControl\watertower_ca.paa"],
				["civ_spawn_2","Morrison","\a3\ui_f\data\map\MapControl\watertower_ca.paa"],
				["civ_spawn_3","San Cristobal","\a3\ui_f\data\map\MapControl\watertower_ca.paa"],
				["lakeside_spawn_2","LS McDonalds","\a3\ui_f\data\map\MapControl\watertower_ca.paa"],
				["civ_spawn_1","LS OldTown","\a3\ui_f\data\map\MapControl\watertower_ca.paa"]			
			];
			
			if(count life_houses > 0) then {
				{
					_pos = call compile format["%1",_x select 0];
					_house = nearestBuilding _pos;
					_houseName = getText(configFile >> "CfgVehicles" >> (typeOf _house) >> "displayName");
					
					_return pushBack [format["house_%1",_house getVariable "uid"],_houseName,"\a3\ui_f\data\map\MapControl\lighthouse_ca.paa"];
				} foreach life_houses;
			};	
		};
		
		if(license_civ_doj) then {
			_return = [
				["civ_spawn_1","LS OldTown","\a3\ui_f\data\map\MapControl\watertower_ca.paa"],
				["lakeside_spawn_2","LS McDonalds","\a3\ui_f\data\map\MapControl\watertower_ca.paa"],
				["civ_spawn_6","Knoxville","\a3\ui_f\data\map\MapControl\watertower_ca.paa"],
				["civ_spawn_5","Bedford","\a3\ui_f\data\map\MapControl\watertower_ca.paa"],
				["civ_spawn_4","Los Diablos","\a3\ui_f\data\map\MapControl\watertower_ca.paa"],
				["civ_spawn_2","Morrison","\a3\ui_f\data\map\MapControl\watertower_ca.paa"],
				["civ_spawn_3","San Cristobal","\a3\ui_f\data\map\MapControl\watertower_ca.paa"],
				["doj_spawn_1","Dept. of Justice","\a3\ui_f\data\map\MapControl\watertower_ca.paa"]
			];
			
			if(count life_houses > 0) then {
				{
					_pos = call compile format["%1",_x select 0];
					_house = nearestBuilding _pos;
					_houseName = getText(configFile >> "CfgVehicles" >> (typeOf _house) >> "displayName");
					
					_return pushBack [format["house_%1",_house getVariable "uid"],_houseName,"\a3\ui_f\data\map\MapControl\lighthouse_ca.paa"];
				} foreach life_houses;
			};	
		};

		if((!license_civ_rebel) && (!license_civ_udc) && (!license_civ_doj) && (!license_civ_lcn)) then {
			_return = [
				["civ_spawn_1","LS OldTown","\a3\ui_f\data\map\MapControl\watertower_ca.paa"],
				["lakeside_spawn_2","LS McDonalds","\a3\ui_f\data\map\MapControl\watertower_ca.paa"],
				//["lakeside_spawn_3","LS Race","\a3\ui_f\data\map\MapControl\watertower_ca.paa"],
				["civ_spawn_6","Knoxville","\a3\ui_f\data\map\MapControl\watertower_ca.paa"],
				["civ_spawn_5","Bedford","\a3\ui_f\data\map\MapControl\watertower_ca.paa"],
				["civ_spawn_4","Los Diablos","\a3\ui_f\data\map\MapControl\watertower_ca.paa"],
				["civ_spawn_2","Morrison","\a3\ui_f\data\map\MapControl\watertower_ca.paa"],
				["civ_spawn_3","San Cristobal","\a3\ui_f\data\map\MapControl\watertower_ca.paa"]
			];
			
			if(count life_houses > 0) then {
				{
					_pos = call compile format["%1",_x select 0];
					_house = nearestBuilding _pos;
					_houseName = getText(configFile >> "CfgVehicles" >> (typeOf _house) >> "displayName");
					
					_return pushBack [format["house_%1",_house getVariable "uid"],_houseName,"\a3\ui_f\data\map\MapControl\lighthouse_ca.paa"];
				} foreach life_houses;
			};	
		};
		
		if(license_civ_rebel && !(rebelshipment getVariable["progress",FALSE]) && !(rebelshipment getVariable["notCaptured",FALSE]) ) then {

			_return = [
				["reb_spawn_1","Rebel 1","\a3\ui_f\data\map\MapControl\watertower_ca.paa"],
				["reb_spawn_2","Rebel 2","\a3\ui_f\data\map\MapControl\watertower_ca.paa"],
				["civ_spawn_4","Los Diablos","\a3\ui_f\data\map\MapControl\watertower_ca.paa"],
				["ld_spawn_1","LD Flughafen","\a3\ui_f\data\map\MapControl\watertower_ca.paa"],
				["ld_spawn_2","LD Hospital","\a3\ui_f\data\map\MapControl\watertower_ca.paa"],
				["civ_spawn_6","Knoxville","\a3\ui_f\data\map\MapControl\watertower_ca.paa"],
				["civ_spawn_5","Bedford","\a3\ui_f\data\map\MapControl\watertower_ca.paa"],
				["civ_spawn_2","Morrison","\a3\ui_f\data\map\MapControl\watertower_ca.paa"],
				["civ_spawn_3","San Cristobal","\a3\ui_f\data\map\MapControl\watertower_ca.paa"]
			];


			
			if(count life_houses > 0) then {
				{
					_pos = call compile format["%1",_x select 0];
					_house = nearestBuilding _pos;
					_houseName = getText(configFile >> "CfgVehicles" >> (typeOf _house) >> "displayName");
					
					_return pushBack [format["house_%1",_house getVariable "uid"],_houseName,"\a3\ui_f\data\map\MapControl\lighthouse_ca.paa"];
				} foreach life_houses;
			};	
		};
		if(license_civ_rebel && (rebelshipment getVariable["progress",FALSE]) || license_civ_rebel && (rebelshipment getVariable["notCaptured",FALSE])) then {

			_return = [
				["civ_spawn_4","Los Diablos","\a3\ui_f\data\map\MapControl\watertower_ca.paa"],
				["ld_spawn_1","LD Flughafen","\a3\ui_f\data\map\MapControl\watertower_ca.paa"],
				["ld_spawn_2","LD Hospital","\a3\ui_f\data\map\MapControl\watertower_ca.paa"],
				["civ_spawn_6","Knoxville","\a3\ui_f\data\map\MapControl\watertower_ca.paa"],
				["civ_spawn_5","Bedford","\a3\ui_f\data\map\MapControl\watertower_ca.paa"],
				["civ_spawn_2","Morrison","\a3\ui_f\data\map\MapControl\watertower_ca.paa"],
				["civ_spawn_3","San Cristobal","\a3\ui_f\data\map\MapControl\watertower_ca.paa"]
			];


			
			if(count life_houses > 0) then {
				{
					_pos = call compile format["%1",_x select 0];
					_house = nearestBuilding _pos;
					_houseName = getText(configFile >> "CfgVehicles" >> (typeOf _house) >> "displayName");
					
					_return pushBack [format["house_%1",_house getVariable "uid"],_houseName,"\a3\ui_f\data\map\MapControl\lighthouse_ca.paa"];
				} foreach life_houses;
			};	
		};
		
		if(license_civ_rebel && license_civ_lcn && !(rebelshipment getVariable["progress",FALSE]) && !(rebelshipment getVariable["notCaptured",FALSE]) ) then {

			_return = [
			    ["lcn_spawn_1","LCN","\a3\ui_f\data\map\MapControl\watertower_ca.paa"],
				["reb_spawn_1","Rebel 1","\a3\ui_f\data\map\MapControl\watertower_ca.paa"],
				["reb_spawn_2","Rebel 2","\a3\ui_f\data\map\MapControl\watertower_ca.paa"],
				["civ_spawn_4","Los Diablos","\a3\ui_f\data\map\MapControl\watertower_ca.paa"],
				["ld_spawn_1","LD Flughafen","\a3\ui_f\data\map\MapControl\watertower_ca.paa"],
				["ld_spawn_2","LD Hospital","\a3\ui_f\data\map\MapControl\watertower_ca.paa"],
				["civ_spawn_6","Knoxville","\a3\ui_f\data\map\MapControl\watertower_ca.paa"],
				["civ_spawn_5","Bedford","\a3\ui_f\data\map\MapControl\watertower_ca.paa"],
				["civ_spawn_2","Morrison","\a3\ui_f\data\map\MapControl\watertower_ca.paa"],
				["civ_spawn_3","San Cristobal","\a3\ui_f\data\map\MapControl\watertower_ca.paa"]
			];


			
			if(count life_houses > 0) then {
				{
					_pos = call compile format["%1",_x select 0];
					_house = nearestBuilding _pos;
					_houseName = getText(configFile >> "CfgVehicles" >> (typeOf _house) >> "displayName");
					
					_return pushBack [format["house_%1",_house getVariable "uid"],_houseName,"\a3\ui_f\data\map\MapControl\lighthouse_ca.paa"];
				} foreach life_houses;
			};	
		};
		if(license_civ_rebel && license_civ_lcn && (rebelshipment getVariable["progress",FALSE]) || license_civ_rebel && license_civ_lcn && (rebelshipment getVariable["notCaptured",FALSE])) then {

			_return = [
			    ["lcn_spawn_1","LCN","\a3\ui_f\data\map\MapControl\watertower_ca.paa"],
				["civ_spawn_4","Los Diablos","\a3\ui_f\data\map\MapControl\watertower_ca.paa"],
				["ld_spawn_1","LD Flughafen","\a3\ui_f\data\map\MapControl\watertower_ca.paa"],
				["ld_spawn_2","LD Hospital","\a3\ui_f\data\map\MapControl\watertower_ca.paa"],
				["civ_spawn_6","Knoxville","\a3\ui_f\data\map\MapControl\watertower_ca.paa"],
				["civ_spawn_5","Bedford","\a3\ui_f\data\map\MapControl\watertower_ca.paa"],
				["civ_spawn_2","Morrison","\a3\ui_f\data\map\MapControl\watertower_ca.paa"],
				["civ_spawn_3","San Cristobal","\a3\ui_f\data\map\MapControl\watertower_ca.paa"]
			];


			
			if(count life_houses > 0) then {
				{
					_pos = call compile format["%1",_x select 0];
					_house = nearestBuilding _pos;
					_houseName = getText(configFile >> "CfgVehicles" >> (typeOf _house) >> "displayName");
					
					_return pushBack [format["house_%1",_house getVariable "uid"],_houseName,"\a3\ui_f\data\map\MapControl\lighthouse_ca.paa"];
				} foreach life_houses;
			};	
		};
	};
	
	case independent: {
		_return = [
			["medic_spawn_2","LS Hospital","\a3\ui_f\data\map\MapControl\hospital_ca.paa"],
			//["medic_spawn_4","R.F.A Baustelle","\a3\ui_f\data\map\MapControl\hospital_ca.paa"],			
			["medic_spawn_3","Los Diablos","\a3\ui_f\data\map\MapControl\hospital_ca.paa"],
			["medic_spawn_1","Morrison","\a3\ui_f\data\map\MapControl\hospital_ca.paa"],
			["RFA_car_1","R.F.A","\a3\ui_f\data\map\MapControl\hospital_ca.paa"]
		
		
		
		];
	};
};

_return;
