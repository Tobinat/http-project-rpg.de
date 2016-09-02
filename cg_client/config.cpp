#include "BIS_AddonInfo.hpp"
//fuck you, thats why.

class CfgPatches {
	class cg_Client {
		units[] = {};
		weapons[] = {};
		requiredVersion = 1;
		requiredAddons[] = {};
	};
};

class CfgMusic {
	class deathmusic {
		name = "Death Music";
		sound[] = {"\cg_client\music\deathmusic.ogg", 5, 1};
		duration = 221;
		theme = "safe";
		musicClass = "Lead";
	};
};