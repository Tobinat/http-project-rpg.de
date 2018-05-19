////////////////////////////////////////////////////////////////////
//DeRap: mpx_buildings\mpx_bikerbar\config.bin
//Produced from mikero's Dos Tools Dll version 6.44
//'now' is Sun May 13 16:33:55 2018 : 'file' last modified on Sat May 06 06:33:14 2017
//http://dev-heaven.net/projects/list_files/mikero-pbodll
////////////////////////////////////////////////////////////////////

#define _ARMA_

class CfgPatches
{
	class mpx_bikerbar
	{
		units[] = {"Land_mpx_bikerbar","mpx_mcwinter_chair2","mpx_mcwinter_chair3"};
		weapons[] = {};
		requiredVersion = 0.1;
		
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
	class Land_mpx_bikerbar: House_F
	{
		scope = 2;
		model = "\mpx_buildings\mpx_bikerbar\mpx_bikerbar.p3d";
		picture = "";
		icon = "";
		displayName = "Biker Bar";
		mapSize = 1;
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
			libTextDesc = "Biker Bar";
		};
		class MarkerLights{};
		class UserActions
		{
			class OpenCounterDoor
			{
				displayName = "Flip door";
				position = "CounterDoor_trigger";
				onlyforplayer = 0;
				radius = 3;
				condition = "((this animationPhase 'animateCounterDoor') < 0.5)";
				statement = "this animate [""animateCounterDoor"", 1]";
			};
			class CloseCounterDoor
			{
				displayName = "Drop door";
				position = "CounterDoor_trigger";
				onlyforplayer = 0;
				radius = 3;
				condition = "((this animationPhase 'animateCounterDoor') >= 0.5)";
				statement = "this animate [""animateCounterDoor"", 0]";
			};
			class OpenStaffDoor
			{
				displayName = "Open door";
				position = "StaffDoor_trigger";
				onlyforplayer = 0;
				radius = 3;
				condition = "((this animationPhase 'animateStaffDoor') < 0.5)";
				statement = "this animate [""animateStaffDoor"", 1]";
			};
			class CloseStaffDoor
			{
				displayName = "Close door";
				position = "StaffDoor_trigger";
				onlyforplayer = 0;
				radius = 3;
				condition = "((this animationPhase 'animateStaffDoor') >= 0.5)";
				statement = "this animate [""animateStaffDoor"", 0]";
			};
			class OpenLobbyDoorL
			{
				displayName = "Open door";
				position = "LobbyDoorL_trigger";
				onlyforplayer = 0;
				radius = 3;
				condition = "((this animationPhase 'animateLobbyDoorL') < 0.5)";
				statement = "this animate [""animateLobbyDoorL"", 1]";
			};
			class CloseLobbyDoorL
			{
				displayName = "Close door";
				position = "LobbyDoorL_trigger";
				onlyforplayer = 0;
				radius = 3;
				condition = "((this animationPhase 'animateLobbyDoorL') >= 0.5)";
				statement = "this animate [""animateLobbyDoorL"", 0]";
			};
			class OpenLobbyDoorR
			{
				displayName = "Open door";
				position = "LobbyDoorR_trigger";
				onlyforplayer = 0;
				radius = 3;
				condition = "((this animationPhase 'animateLobbyDoorR') < 0.5)";
				statement = "this animate [""animateLobbyDoorR"", 1]";
			};
			class CloseLobbyDoorR
			{
				displayName = "Close door";
				position = "LobbyDoorR_trigger";
				onlyforplayer = 0;
				radius = 3;
				condition = "((this animationPhase 'animateLobbyDoorR') >= 0.5)";
				statement = "this animate [""animateLobbyDoorR"", 0]";
			};
		};
		class EventHandlers{};
	};
	class mpx_mcwinter_chair2: House_F
	{
		scope = 2;
		model = "mpx_buildings\mpx_bikerbar\mpx_mcwinters_chair2.p3d";
		picture = "";
		icon = "";
		displayName = "Bikerbar Stool";
		class AnimationSources{};
	};
	class mpx_mcwinter_chair3: House_F
	{
		scope = 2;
		model = "mpx_buildings\mpx_bikerbar\mpx_mcwinters_chair3.p3d";
		picture = "";
		icon = "";
		displayName = "bikerbar chair";
		class AnimationSources{};
	};
};
