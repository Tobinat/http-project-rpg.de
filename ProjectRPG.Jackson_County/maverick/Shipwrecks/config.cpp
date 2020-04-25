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
        {"prpg_item_kupfer_bar","prpg_item_kupfer_bar","prpg_item_eisen_bar","prpg_item_eisen_bar","prpg_item_eisen_bar"},
        {"prpg_item_eisen_ore","prpg_item_eisen_ore","prpg_item_eisen_ore","prpg_item_silber_ore","prpg_item_silber_ore"},
        {"legendary_fishing_rod"},
        {"TRYK_US_ESS_Glasses_NV"},
        {"CG_OilBarrel"},
        {"CG_OilCanister","CG_OilCanister"},
        {"CG_MetalWire","CG_Lockpick"},
        {"CG_Acetone","CG_Heroin"},
        {"kif_fish_oil","kif_fish_oil"},
        {"TRYK_Shemagh_TAN_NV"},
        {"TRYK_V_ArmorVest_CBR"},
        {"Rangefinder"},
        {"Binocular","ItemGPS"},
        {"H_BatmanMask"},
        {"U_O_Wetsuit"},
        {"H_Bandanna_khk_hs","H_Bandanna_gry","H_Bandanna_camo"},
        {"optic_Aco"},
        {"prpg_item_glas","prpg_item_glas"},
        {"NP_Wood","NP_Wood","NP_Wood","NP_Wood"}
	};

	//What shall be displayed as text to gather the items from the ship? (The text of the addAction ingame)
	ShipLootText = "Schiff nach Beute durchsuchen";

    //The message when the user has got all the loot successfully.
    ShipLootSuccess = "Du hast die gesamte Beute gefunden!";

    //The message in case something fails, or the user can not carry all the items.
    ShipLootFail = "Du kannst nicht die gesammte Beute tragen. Mach platz in deinem Inventar!";

	//Define the message, that should appear when a shipwreck spawns (broadcasted to all clients).
	SpawnMSG = "Schiffswrack\n\nEin Frachter ist Gesunken, er wurde auf der Karte Markiert!";

    //Define the message, that should appear when a shipwreck disappears after a user looted it (broadcasted to all clients).
	DeleteMSG = "Schiffswrack\n\Das Wrack wurde von Unbekannten gepluendert!";
};
