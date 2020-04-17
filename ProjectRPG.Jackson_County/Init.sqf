waitUntil {!(isNull (findDisplay 46))};
enableSaving [false, false];
//a9ec2a59c630de5b27603e8ecd9fb153 = true;
//prpg_client_v = 0.60;

//Radia
tf_west_radio_code = "";
tf_east_radio_code = tf_west_radio_code;
tf_guer_radio_code = tf_west_radio_code;
tf_civ_radio_code = tf_west_radio_code;

0 enableChannel false;
1 enableChannel false;
2 enableChannel false;
3 enableChannel false;
4 enableChannel false;
0 enableChannel [true, false];
6 enableChannel false;

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