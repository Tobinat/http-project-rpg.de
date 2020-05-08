#define _ARMA_

class cfgPatches
{
	class PRPG_Cars
	{
		units[] = {};
		weapons[] = {};
		requiredVersion = 0.1;
		requiredAddons[] = {"PRPG_Data"};
		version = 1;
	};
};



class CfgVehicles {
	class Jonzie_XB;
	class Jonzie_Mini_Cooper;
	class Jonzie_Mini_Cooper_R_spec;
	class Jonzie_Ceed;
	class Jonzie_30CSL;
	class Jonzie_Transit;
	class Jonzie_Raptor;
	class Jonzie_Escalade;
	class Jonzie_Viper;
	class Jonzie_Ambulance;
	#include "\PRPG_Cars\CfgVehiclesJonzie.hpp"
};
