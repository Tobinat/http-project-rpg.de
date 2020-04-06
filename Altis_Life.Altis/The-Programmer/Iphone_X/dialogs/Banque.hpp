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
class The_Programmer_Iphone_Bank_Menu {
   idd = 20055;
   name = "The_Programmer_Iphone_Bank_Menu";
   movingenable = 0;
   enablesimulation = 1;
   class controlsBackground
   {
       class Banque_menu : Life_RscPicture
       {
           idc = 1200;
           text = "The-Programmer\Iphone_X\textures\payeasy.paa";
           x = 0.6379405 * safezoneW + safezoneX;
           y = 0.288744481809243 * safezoneH + safezoneY;
           w = 0.21 * safezoneW;
           h = 0.7 * safezoneH;
       };
   };
   class controls
   {
       class moneyEdit : Life_RscEdit
       {
           idc = 2018;
           text = "1";
           colorbackground[] = {1,1,1,0};
           colorText[] = {0, 0, 0, 1};
           sizeex = 0.033;
           x = 0.716871333333334 * safezoneW + safezoneX;
           y = 0.516429841691249 * safezoneH + safezoneY;
           w = 0.075 * safezoneW;
           h = 0.0219906 * safezoneH;
       };
       class moneyDrop : Life_RscButtonInvisibleIphone
       {
           idc = 2001;
           tooltip = "$STR_Global_Give";
           onbuttonclick = "[] call the_programmer_iphone_fnc_apps_give";
           sizeex = 0.025;
           x = 0.670779833333333 * safezoneW + safezoneX;
           y = 0.526262683382498 * safezoneH + safezoneY;
           w = 0.0362278 * safezoneW;
           h = 0.0219906 * safezoneH;
       };
       class NearPlayers : Life_RscCombo
       {
           idc = 2022;
           x = 0.716871333333334 * safezoneW + safezoneX;
           y = 0.542978514257621 * safezoneH + safezoneY;
            w = 0.075 * safezoneW;
           h = 0.017 * safezoneH;
       };
       class Fermer : Life_RscButtonInvisibleIphone
       {
           idc = -1;
           tooltip = "Home";
           onbuttonclick = "closeDialog 0;";
           x = 0.732093666666666 * safezoneW + safezoneX;
           y = 0.907587959685349 * safezoneH + safezoneY;
           w = 0.025877 * safezoneW;
           h = 0.0439812 * safezoneH;
       };
       class Compte : Life_RscStructuredText
       {
           idc = 1001;
           x = 0.704446 * safezoneW + safezoneX;
           y = 0.430453611602753 * safezoneH + safezoneY;
           w = 0.075 * safezoneW;
           h = 0.03 * safezoneH;
       };
       class Argent : Life_RscStructuredText
       {
           idc = 1002;
           x = 0.704446 * safezoneW + safezoneX;
           y = 0.465851841691249 * safezoneH + safezoneY;
           w = 0.075 * safezoneW;
           h = 0.03 * safezoneH;
       };
       class Reboot : Life_RscButtonInvisibleIphone
       {
           idc = -1;
           tooltip = "Reboot";
           onbuttonclick = "[] call the_programmer_iphone_fnc_phone_reboot;";
           x = 0.807894833333333 * safezoneW + safezoneX;
           y = 0.312326017502458 * safezoneH + safezoneY;
           w = 0.01 * safezoneW;
           h = 0.02 * safezoneH;
       };
   };
};
