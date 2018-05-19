////////////////////////////////////////////////////////////////////
//DeRap: mpx_buildings\mpx_gatehouse\config.bin
//Produced from mikero's Dos Tools Dll version 6.44
//'now' is Sun May 13 17:17:38 2018 : 'file' last modified on Sat May 06 06:33:31 2017
//http://dev-heaven.net/projects/list_files/mikero-pbodll
////////////////////////////////////////////////////////////////////

#define _ARMA_

class CfgPatches
{
	class mpx_gatehouse
	{
		units[] = {"Land_mpx_gatehouse"};
		weapons[] = {};
		requiredVersion = 0.1;
		requiredAddons[] = {};
	};
};
class CfgSounds{};
class CfgVehicleClasses
{
	class mpx_buildings
	{
		displayName = "PRPG Buildings";
	};
};
class CfgVehicles
{
	class House;
	class House_F: House{};
	class Land_mpx_gatehouse: House_F
	{
		scope = 2;
		model = "\mpx_buildings\mpx_gatehouse\mpx_gatehouse.p3d";
		picture = "\mpx_buildings\data\HitmanIcon_co.paa";
		icon = "\mpx_buildings\data\MPXIcon_ca.paa";
		displayName = "MPX Gatehouse";
		vehicleClass = "mpx_buildings";
		destrType = "DestructNo";
		nameSound = "";
		accuracy = 1000;
		camouflage = 0.6;
		threat[] = {0,0,0};
		ladders[] = {};
		animated = 1;
		cost = 0;
		armor = 999999;
		class AnimationSources
		{
			class door_func
			{
				source = "user";
				animPeriod = 1;
				initPhase = 0;
			};
		};
		class Library
		{
			libTextDesc = "Garage Door";
		};
		class MarkerLights{};
		class UserActions
		{
			class OpenFDoorL
			{
				displayName = "Open door";
				position = "ACTION_FDoorL";
				onlyforplayer = 0;
				radius = 3;
				condition = "this animationPhase ""animateFDoorL""<0.5";
				statement = "this animate [""animateFDoorL"", 1]";
			};
			class CloseFDoorL
			{
				displayName = "Close door";
				position = "ACTION_FDoorL";
				onlyforplayer = 0;
				radius = 3;
				condition = "this animationPhase ""animateFDoorL""==1";
				statement = "this animate [""animateFDoorL"", 0]";
			};
		};
		class EventHandlers{};
	};
};
