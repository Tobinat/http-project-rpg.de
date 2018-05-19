////////////////////////////////////////////////////////////////////
//DeRap: mpx_buildings\mpx_courthouse\config.bin
//Produced from mikero's Dos Tools Dll version 6.44
//'now' is Sun May 13 17:17:37 2018 : 'file' last modified on Sat May 06 06:33:22 2017
//http://dev-heaven.net/projects/list_files/mikero-pbodll
////////////////////////////////////////////////////////////////////

#define _ARMA_

class CfgPatches
{
	class mpx_courthouse
	{
		units[] = {"Land_prpg_courthouse"};
		weapons[] = {};
		requiredVersion = 0.1;
		requiredAddons[] = {};
	};
};
class CfgSounds{};
class CfgVehicleClasses
{
	class prpg_buildings
	{
		displayName = "PRPG Buildings";
	};
};
class CfgVehicles
{
	class House;
	class House_F: House{};
	class Land_prpg_courthouse: House_F
	{
		scope = 2;
		model = "\mpx_buildings\mpx_courthouse\mpx_courthouse.p3d";
		displayName = "PRPG courthouse";
		vehicleClass = "prpg_buildings";
		ladders[] = {};
		cost = 100000;
		class AnimationSources
		{
			class door_func
			{
				source = "user";
				animPeriod = 1;
				initPhase = 0;
				sound = "GenericDoorsSound";
			};
		};
		class UserActions
		{
			class OpenFDoorL
			{
				displayName = "Open door";
				position = "ACTION_FDoorL";
				onlyforplayer = 0;
				radius = 3;
				condition = "((this animationPhase 'animateFDoorL') < 0.5)";
				statement = "this animate [""animateFDoorL"", 1]";
			};
			class CloseFDoorL
			{
				displayName = "Close door";
				position = "ACTION_FDoorL";
				onlyforplayer = 0;
				radius = 3;
				condition = "((this animationPhase 'animateFDoorL') >= 0.5)";
				statement = "this animate [""animateFDoorL"", 0]";
			};
			class OpenFDoorR
			{
				displayName = "Open door";
				position = "ACTION_FDoorR";
				onlyforplayer = 0;
				radius = 3;
				condition = "((this animationPhase 'animateFDoorR') < 0.5)";
				statement = "this animate [""animateFDoorR"", 1]";
			};
			class CloseFDoorR
			{
				displayName = "Close door";
				position = "ACTION_FDoorR";
				onlyforplayer = 0;
				radius = 3;
				condition = "((this animationPhase 'animateFDoorR') >= 0.5)";
				statement = "this animate [""animateFDoorR"", 0]";
			};
			class OpenCourtDoorL
			{
				displayName = "Open door";
				position = "ACTION_CourtDoorL";
				onlyforplayer = 0;
				radius = 3;
				condition = "((this animationPhase 'animateCourtDoorL') < 0.5)";
				statement = "this animate [""animateCourtDoorL"", 1]";
			};
			class CloseCourtDoorL
			{
				displayName = "Close door";
				position = "ACTION_CourtDoorL";
				onlyforplayer = 0;
				radius = 3;
				condition = "((this animationPhase 'animateCourtDoorL') >= 0.5)";
				statement = "this animate [""animateCourtDoorL"", 0]";
			};
			class OpenCourtDoorR
			{
				displayName = "Open door";
				position = "ACTION_CourtDoorR";
				onlyforplayer = 0;
				radius = 3;
				condition = "((this animationPhase 'animateCourtDoorR') < 0.5)";
				statement = "this animate [""animateCourtDoorR"", 1]";
			};
			class CloseCourtDoorR
			{
				displayName = "Close door";
				position = "ACTION_CourtDoorR";
				onlyforplayer = 0;
				radius = 3;
				condition = "((this animationPhase 'animateCourtDoorR') >= 0.5)";
				statement = "this animate [""animateCourtDoorR"", 0]";
			};
			class OpenSenatorDoor
			{
				displayName = "Open door";
				position = "ACTION_SenatorDoor";
				onlyforplayer = 0;
				radius = 3;
				condition = "((this animationPhase 'animateSenatorDoorL') < 0.5)";
				statement = "this animate [""animateSenatorDoorL"", 1]";
			};
			class CloseSenatorDoor
			{
				displayName = "Close door";
				position = "ACTION_SenatorDoor";
				onlyforplayer = 0;
				radius = 3;
				condition = "((this animationPhase 'animateSenatorDoorL') >= 0.5)";
				statement = "this animate [""animateSenatorDoorL"", 0]";
			};
			class OpenSenatorDoor2
			{
				displayNameDefault = "<img image='\A3\Ui_f\data\IGUI\Cfg\Actions\open_door_ca.paa' size='2.5' />";
				priority = 0.4;
				displayName = "Open door";
				position = "ACTION_SenatorDoor2";
				onlyforplayer = 0;
				radius = 2;
				condition = "((this animationPhase 'animateSenatorDoor2') < 0.5)";
				statement = "this animate [""animateSenatorDoor2"", 1]";
			};
			class CloseSenatorDoor2
			{
				displayNameDefault = "<img image='\A3\Ui_f\data\IGUI\Cfg\Actions\open_door_ca.paa' size='2.5' />";
				priority = 0.4;
				displayName = "Close door";
				position = "ACTION_SenatorDoor2";
				onlyforplayer = 0;
				radius = 2;
				condition = "((this animationPhase 'animateSenatorDoor2') >= 0.5)";
				statement = "this animate [""animateSenatorDoor2"", 0]";
			};
			class OpenJudgeDoor
			{
				displayNameDefault = "<img image='\A3\Ui_f\data\IGUI\Cfg\Actions\open_door_ca.paa' size='2.5' />";
				priority = 0.4;
				displayName = "Open door";
				position = "ACTION_JudgeDoor";
				onlyforplayer = 0;
				radius = 2;
				condition = "((this animationPhase 'animateJudgeDoor') < 0.5)";
				statement = "this animate [""animateJudgeDoor"", 1]";
			};
			class CloseJudgeDoor
			{
				displayNameDefault = "<img image='\A3\Ui_f\data\IGUI\Cfg\Actions\open_door_ca.paa' size='2.5' />";
				priority = 0.4;
				displayName = "Close door";
				position = "ACTION_SenatorDoor2";
				onlyforplayer = 0;
				radius = 2;
				condition = "((this animationPhase 'animateJudgeDoor') >= 0.5)";
				statement = "this animate [""animateJudgeDoor"", 0]";
			};
			class OpenDefendantDoor
			{
				displayNameDefault = "<img image='\A3\Ui_f\data\IGUI\Cfg\Actions\open_door_ca.paa' size='2.5' />";
				priority = 0.4;
				displayName = "Open door";
				position = "ACTION_DefendantDoor";
				onlyforplayer = 0;
				radius = 2;
				condition = "((this animationPhase 'animateDefendantDoor') < 0.5)";
				statement = "this animate [""animateDefendantDoor"", 1]";
			};
			class CloseDefendantDoor
			{
				displayNameDefault = "<img image='\A3\Ui_f\data\IGUI\Cfg\Actions\open_door_ca.paa' size='2.5' />";
				priority = 0.4;
				displayName = "Close door";
				position = "ACTION_DefendantDoor";
				onlyforplayer = 0;
				radius = 2;
				condition = "((this animationPhase 'animateDefendantDoor') >= 0.5)";
				statement = "this animate [""animateDefendantDoor"", 0]";
			};
			class OpenStaffDoor1
			{
				displayNameDefault = "<img image='\A3\Ui_f\data\IGUI\Cfg\Actions\open_door_ca.paa' size='2.5' />";
				priority = 0.4;
				displayName = "Open door";
				position = "ACTION_StaffDoor1";
				onlyforplayer = 0;
				radius = 2;
				condition = "((this animationPhase 'animateStaffDoor1') < 0.5)";
				statement = "this animate [""animateStaffDoor1"", 1]";
			};
			class CloseStaffDoor1
			{
				displayNameDefault = "<img image='\A3\Ui_f\data\IGUI\Cfg\Actions\open_door_ca.paa' size='2.5' />";
				priority = 0.4;
				displayName = "Close door";
				position = "ACTION_StaffDoor1";
				onlyforplayer = 0;
				radius = 2;
				condition = "((this animationPhase 'animateStaffDoor1') >= 0.5)";
				statement = "this animate [""animateStaffDoor1"", 0]";
			};
			class OpenStaffDoor2
			{
				displayNameDefault = "<img image='\A3\Ui_f\data\IGUI\Cfg\Actions\open_door_ca.paa' size='2.5' />";
				priority = 0.4;
				displayName = "Open door";
				position = "ACTION_StaffDoor2";
				onlyforplayer = 0;
				radius = 2;
				condition = "((this animationPhase 'animateStaffDoor2') < 0.5)";
				statement = "this animate [""animateStaffDoor2"", 1]";
			};
			class CloseStaffDoor2
			{
				displayNameDefault = "<img image='\A3\Ui_f\data\IGUI\Cfg\Actions\open_door_ca.paa' size='2.5' />";
				priority = 0.4;
				displayName = "Close door";
				position = "ACTION_StaffDoor2";
				onlyforplayer = 0;
				radius = 2;
				condition = "((this animationPhase 'animateStaffDoor2') >= 0.5)";
				statement = "this animate [""animateStaffDoor2"", 0]";
			};
			class OpenJailDoor
			{
				displayNameDefault = "<img image='\A3\Ui_f\data\IGUI\Cfg\Actions\open_door_ca.paa' size='2.5' />";
				priority = 0.4;
				displayName = "Open cell";
				position = "ACTION_JailDoor";
				onlyforplayer = 0;
				radius = 2;
				condition = "((player getVariable ['copLevel',0]) > 0); this animationPhase ""animateJailDoor""<0.5";
				statement = "this animate [""animateJailDoor"", 1]";
			};
			class CloseJailDoor
			{
				displayNameDefault = "<img image='\A3\Ui_f\data\IGUI\Cfg\Actions\open_door_ca.paa' size='2.5' />";
				priority = 0.4;
				displayName = "Close cell";
				position = "ACTION_JailDoor";
				onlyforplayer = 0;
				radius = 2;
				condition = "((this animationPhase 'animateJailDoor') >= 0.5)";
				statement = "this animate [""animateJailDoor"", 0]";
			};
			class OpenJailDoor2
			{
				displayNameDefault = "<img image='\A3\Ui_f\data\IGUI\Cfg\Actions\open_door_ca.paa' size='2.5' />";
				priority = 0.4;
				displayName = "Open door";
				position = "ACTION_JailDoor2";
				onlyforplayer = 0;
				radius = 2;
				condition = "((player getVariable ['copLevel',0]) > 0); this animationPhase ""animateJailDoor2""<0.5";
				statement = "this animate [""animateJailDoor2"", 1]";
			};
			class CloseJailDoor2
			{
				displayNameDefault = "<img image='\A3\Ui_f\data\IGUI\Cfg\Actions\open_door_ca.paa' size='2.5' />";
				priority = 0.4;
				displayName = "Close door";
				position = "ACTION_JailDoor2";
				onlyforplayer = 0;
				radius = 2;
				condition = "((this animationPhase 'animateJailDoor2') >= 0.5)";
				statement = "this animate [""animateJailDoor2"", 0]";
			};
			class CloseGarage
			{
				displayNameDefault = "<img image='\A3\Ui_f\data\IGUI\Cfg\Actions\open_door_ca.paa' size='2.5' />";
				priority = 0.4;
				displayName = "Close garage";
				position = "ACTION_Garage";
				onlyforplayer = 0;
				radius = 2;
				condition = "((this animationPhase 'animateGarage') >= 0.5)";
				statement = "this animate [""animateGarage"", 0]";
			};
			class OpenGarage
			{
				displayNameDefault = "<img image='\A3\Ui_f\data\IGUI\Cfg\Actions\open_door_ca.paa' size='2.5' />";
				priority = 0.4;
				displayName = "Open Garage";
				position = "ACTION_Garage";
				onlyforplayer = 0;
				radius = 2;
				condition = "((player getVariable ['copLevel',0]) > 0); this animationPhase ""animateGarage""<0.5";
				statement = "this animate [""animateGarage"", 1]";
			};
			class CloseCell
			{
				displayNameDefault = "<img image='\A3\Ui_f\data\IGUI\Cfg\Actions\open_door_ca.paa' size='2.5' />";
				priority = 0.4;
				displayName = "Close Cell Door";
				position = "ACTION_DoorCell1";
				onlyforplayer = 0;
				radius = 2;
				condition = "((this animationPhase 'animateDoorCell1') >= 0.5)";
				statement = "this animate [""animateDoorCell1"", 0]";
			};
			class OpenCell
			{
				displayNameDefault = "<img image='\A3\Ui_f\data\IGUI\Cfg\Actions\open_door_ca.paa' size='2.5' />";
				priority = 0.4;
				displayName = "Open Cell Door";
				position = "ACTION_DoorCell1";
				onlyforplayer = 0;
				radius = 2;
				condition = "((player getVariable ['copLevel',0]) > 0); this animationPhase ""animateDoorCell1""<0.5";
				statement = "this animate [""animateDoorCell1"", 1]";
			};
		};
		class EventHandlers{};
	};
};
