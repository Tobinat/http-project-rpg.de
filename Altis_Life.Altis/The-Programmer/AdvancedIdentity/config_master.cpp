/*
    Author: Jean_Park
    Teamspeak 3: ts.the-programmer.com
    Web site: www.the-programmer.com
    Discord : https://discord.gg/DhFUFsq

    Terms of use:
        - This file is forbidden unless you have permission from the author. If you have this file without permission to use it please do not use it and do not share it.
        - If you have permission to use this file, you can use it on your server however it is strictly forbidden to share it.
        - Out of respect for the author please do not delete this information.

    License number:
    Server's name:
    Owner's name:
*/
#define false 0
#define true 1

class The_Programmer_Settings_Identity {
	default_lang = "fr"; // fr / en / de / es

    textures_base_path = "The-Programmer\AdvancedIdentity\textures";

    server_name = "The-Programmer";

    phone_numbers_script_enable = false;
    companies_script_enable = false;
    enable_companies_card = false;
    license_points_variable = "driver_points"; // Only if you have the point system : Variable which contains the number of points of the selected license

    enable_depanneurs_card = true;
    depanneurs_licence = "license_civ_depanneur";

    allow_players_to_change_player_name = true; // Allows the player to change his name between disconnections !

    allow_custom_name = false; // Put true if you want the person to be able to put a custom name 
    bad_usernames[] = {"Sacha Touille"};

    enable_whitelist = false;
    whitelisted_players_uid[] = {"76561198168200130"}; // IF enable_whitelist = true, PUT THE PLAYERID OF YOUR WHITELISTED PLAYERS LIKE : { "76561198168200130","76561198168200176","76561198168200109"};

    first_connexion_create_identity = true; // true / false

    price_create_identity = 5000; //Cost to create identity cards, only if first_connexion_create_identity = false !

    item_type = "virtual"; // Can be : virtual or physical
    object_given = ""; // Virtuel Object (vitems) given when you create your identity card 
    object_required = ""; //Virtual object (vitems) required to show you his identity card 

    allow_take_identity_card = true; // Put true if you want the police and medic are able to take the identity papers by "force"

    class Configuration_license_card {
        /*You can put 8 licenses
          9 icons are available in the icons folder
        */ 
        class licence_1 {
            license = "license_civ_driver";
            image = "icons\car.paa";
        };
        class licence_2 {
            license = "license_civ_pilot";
            image = "icons\plane.paa";
        };
        class licence_3 {
            license = "license_civ_boat";
            image = "icons\boat.paa";
        };
        class licence_4 {
            license = "license_civ_trucking";
            image = "icons\truck.paa";
        };
    };

	birth_places[] = {"Altis","Stratis","Tanoa","Malden"};
    nationality = "Français";

    copLevelText[] = {
        //{life_coplevel,"TEXT"},
        {1,"Recrue"},
        {2,"Gendarme"},
        {3,"Colonel"}
    };

    medLevelText[] = {
        //{life_medicLevel,"TEXT"},
        {1,"Recrue"},
        {2,"Sapeur Pompier"},
        {3,"Colonel"}
    };
};