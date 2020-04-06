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
class The_Programmer_Iphone_Loading_Menu {
   idd = 542367;
   name = "The_Programmer_Iphone_Loading_Menu";
   movingenable = 1;
   enablesimulation = 1;
   class controlsBackground
   {
       class FondPrincipale : Life_RscPicture
       {
           text = "";
           idc = 1000;
           x = 0.6379405 * safezoneW + safezoneX;
           y = 0.288744481809243 * safezoneH + safezoneY;
           w = 0.21 * safezoneW;
           h = 0.7 * safezoneH;
       };
   };
   class controls
   {
       class Heure : Life_RscStructuredText
       {
           idc = 2101;
           text = "";
           x = 0.689583333333333 * safezoneW + safezoneX;
           y = 0.337551622418879 * safezoneH + safezoneY;
           h = 0.05 * safezoneH;
           w = 0.1 * safezoneW;
       };
       class deverouiller : Life_RscStructuredText
       {
           idc = 2102;
           text = "";
           x = 0.660863833333334 * safezoneW + safezoneX;
           y = 0.827665683382498 * safezoneH + safezoneY;
           w = 0.165 * safezoneW;
           h = 0.022 * safezoneH;
       };
       class phone : Life_RscButtonInvisibleIphone
       {
           idc = -1;
           text = "";
           onbuttonclick = "closeDialog 0; player setVariable [""iphone_chargement_done"",false]; [1] spawn the_programmer_iphone_fnc_phone_init;";
           x = 0.644072833333332 * safezoneW + safezoneX;
           y = 0.408517994100295 * safezoneH + safezoneY;
           w = 0.2 * safezoneW;
           h = 0.4 * safezoneH;
       };
       class Image : Life_RscPicture
       {
           text = "The-Programmer\Iphone_X\textures\lock.paa";
           x = 0.719072833333332 * safezoneW + safezoneX;
           y = 0.73398505408063 * safezoneH + safezoneY;
           w = 0.0420000000000001 * safezoneW;
           h = 0.07 * safezoneH;
           idc = -1;
       };
       class Reboot : Life_RscButtonInvisibleIphone
       {
           idc = -1;
           tooltip = "Reboot";
           onbuttonclick = "[1] call the_programmer_iphone_fnc_phone_reboot;";
           x = 0.807894833333333 * safezoneW + safezoneX;
           y = 0.312326017502458 * safezoneH + safezoneY;
           w = 0.01 * safezoneW;
           h = 0.02 * safezoneH;
       };
   };
};
