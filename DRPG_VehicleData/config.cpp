////////////////////////////////////////////////////////////////////
//DeRap: Produced from mikero's Dos Tools Dll version 5.24
//Produced on Tue Apr 26 09:53:33 2016 : Created on Tue Apr 26 09:53:33 2016
//http://dev-heaven.net/projects/list_files/mikero-pbodll
////////////////////////////////////////////////////////////////////

#define _ARMA_

//Class DRPG_VehicleData : config.bin{
class BIS_AddonInfo
{
	author = 76561198136937113;
	timepacked = 1437535785;
};
class cfgPatches
{
	class DRPG_VehicleData
	{
		units[] = {};
		weapons[] = {};
		requiredVersion = 0.1;
		requiredAddons[] = {"A3_data_f"};
		version = 1;
	};
};
class cfgsounds
{
	class copwail
	{
		sound[] = {"\DRPG_VehicleData\sounds\copwail.wav",0.6,1};
		name = "Whelen Siren";
		titles[] = {};
	};
	class emswail
	{
		sound[] = {"\DRPG_VehicleData\sounds\emswail.wav",1,1};
		name = "Whelen Siren 2";
		titles[] = {};
	};
};
class cfgMods
{
	author = 76561198141517593;
	timepacked = 1460029425;
};
//};
