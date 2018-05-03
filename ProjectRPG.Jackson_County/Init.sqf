enableSaving [false, false];
//a9ec2a59c630de5b27603e8ecd9fb153 = true;
//kif_client_v = 0.39;

//Radia
tf_west_radio_code = "";
tf_east_radio_code = tf_west_radio_code;
tf_guer_radio_code = tf_west_radio_code;
tf_civ_radio_code = tf_west_radio_code;

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

//----------------- ADV ACE CPR ----------------//
/* Konfiguration der Mod "ACE ADV CPR" */
// Jeder kann wiederbeleben
adv_aceCPR_onlyDoctors = 0;
// Wiederbelebungschance [Doktor, Sanitäter, Normalsterblicher, Defi]
adv_aceCPR_probabilities = [ 20, 10, 5, 50];
//----------------- Vcom AI ----------------//
