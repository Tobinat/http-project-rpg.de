/*
	Author: Maverick Applications
	Desc: Altis Life Shipwreck
*/

//Customize your settings to fit your server setup!
class Maverick_Shipwrecks {

    //How often (in seconds) should a shipwreck spawn, if no wreck is on the map?
    ShipwreckInterval = 1800; //1800 = 30min

    //Define the possible locations for your shipwrecks.
    //getPosATL format -> Get the position via: diag_log(getPosATL player) -> replace the [] with {}
	Positions[] = {
        {5199.27,70.8686,17.4996},
        {6159,8124.24,19.0541},
        {7815.14,8709.1,23.3698},
        {9462.7,1831.04,25.9156},
        {3416.83,9617.65,0}
	};

    //Define the radius, in which the wreck randomly spawns around the given center position
    Radius = 200;

    //Define the possible sets of virtual items the user can loot from the wreck.
	ShipLoot[] = {
        {"NP_kPelt","NP_Pelt"},
        {"np_copperbar1","np_copperbar1","np_ironbar1","np_ironbar1","np_ironbar1"},
        {"np_ironOre1","np_ironOre1","np_ironOre1","np_silverOre1","np_silverOre1"},
        {"kif_5k"},
        {"kif_10k"},
        {"CUP_30Rnd_545x39_AK_M","CUP_20Rnd_762x51_FNFAL_M"},
        {"CUP_srifle_LeeEnfield"},
        {"legendary_fishing_rod"},
        {"TRYK_US_ESS_Glasses_NV"},
        {"CG_OilBarrel"},
        {"CG_OilCanister","CG_OilCanister"},
        {"CG_MetalWire","CG_Lockpick"},
        {"CG_Acetone","CG_Heroin"},
        {"kif_fish_oil","kif_fish_oil"},
        {"CUP_PipeBomb_M"},
        {"TRYK_Shemagh_TAN_NV"},
        {"TRYK_V_ArmorVest_CBR"},
        {"Rangefinder"},
        {"Binocular","ItemGPS"},
        {"H_BatmanMask"},
        {"U_O_Wetsuit"},
        {"H_Bandanna_khk_hs","H_Bandanna_gry","H_Bandanna_camo"},
        {"optic_Aco"},
        {"V_mas_ww2_vest_USB","U_mas_ww2_B_CombatUniform_uks"},
        {"CG_Dynamite","CG_Dynamite","CG_Dynamite"},
        {"CG_Glass","CG_Glass"},
        {"NP_Wood","NP_Wood","NP_Wood","NP_Wood"}
	};

	//What shall be displayed as text to gather the items from the ship? (The text of the addAction ingame)
	ShipLootText = "Szukaj łupu";

    //The message when the user has got all the loot successfully.
    ShipLootSuccess = "Pomyślnie zgarnąłeś cały łup dla Ciebie!";

    //The message in case something fails, or the user can not carry all the items.
    ShipLootFail = "Nie możesz zmieścić całego łupu. Zrób miejsce w ekwipunku!";

	//Define the message, that should appear when a shipwreck spawns (broadcasted to all clients).
	SpawnMSG = "WRAK STATKU\n\nZatopiony statek został odnaleziony i zaznaczony na mapie! Może posiadać cenne przedmioty!";

    //Define the message, that should appear when a shipwreck disappears after a user looted it (broadcasted to all clients).
	DeleteMSG = "WRAK STATKU\n\nStatek został ograbiony z łupu!";
};