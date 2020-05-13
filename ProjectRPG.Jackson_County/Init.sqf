waitUntil {!(isNull (findDisplay 46))};
enableSaving [false, false];
da39a3ee5e6b4b0d3255bfef95601890afd80709 = true;
prpg_client_v = 0.70;

shopNameList = ["Land_fs_roof_F","Land_Shop_DED_Shop_01_F","Land_Shop_DED_Shop_02_F","Land_buildingBar1","Land_Market_DED_Market_01_F","land_cg_dexters","Land_Coffee_DED_Coffee_02_F","Land_Coffee_DED_Coffee_01_F","Land_buildingGunStore1","land_cg_dunkinbronuts"];

//Cmentarz
[] spawn
{
	life_koil_hh = 0;
	for "_i" from 0 to 1 step 0 do
	{
	if (sunOrMoon == 0 && life_koil_hh != 1) then {
		_resourceZones = ["Spooky"];
		_zone = "Spooky";
		_straszymy = true;
		{
			if(player distance (getMarkerPos _x) > 150) then {_zone = "";};
		} foreach _resourceZones;
		if(_zone != "Spooky") then {_straszymy = false;};
		if (_straszymy) then {
		[] spawn client_fnc_cmentarz;
		};
	};
	sleep 30;
	};
};


[] execVM "AdminTool\loop.sqf";