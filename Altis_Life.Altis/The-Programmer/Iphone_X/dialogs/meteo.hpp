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
class The_Programmer_Iphone_Weather_Menu {
   idd = 25800;
   name = "The_Programmer_Iphone_Weather_Menu";
   movingenable = 0;
   enablesimulation = 1;
   onload = "";
   class controlsBackground
   {
       class Fond : Life_RscPicture
       {
           text = "The-Programmer\Iphone_X\textures\meteo.paa";
           idc = -1;
           x = 0.6379405 * safezoneW + safezoneX;
           y = 0.288744481809243 * safezoneH + safezoneY;
           w = 0.21 * safezoneW;
           h = 0.7 * safezoneH;
       };
   };
   class controls
   {
       class curImg : Life_RscPicture
       {
           idc = 25801;
           x = 0.69375 * safezoneW + safezoneX;
           y = 0.385447394296952 * safezoneH + safezoneY;
           h = 0.15929203539823 * safezoneH;
           w = 0.0984375 * safezoneW;
           text = "";
       };
       class curTxt : Life_RscStructuredText
       {
           idc = 25802;
           x = 0.660416666666667 * safezoneW + safezoneX;
           y = 0.56243854473943 * safezoneH + safezoneY;
           h = 0.04031465093412 * safezoneH;
           w = 0.166666666666666 * safezoneW;
           text = "";
       };
       class nextImg : Life_RscPicture
       {
           idc = 25803;
           x = 0.7203125 * safezoneW + safezoneX;
           y = 0.672566371681416 * safezoneH + safezoneY;
           h = 0.0766961651917404 * safezoneH;
           w = 0.053125 * safezoneW;
           text = "";
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
       class Fermer : Life_RscButtonInvisibleIphone
       {
           idc = -1;
           tooltip = "Home";
           onbuttonclick = "closeDialog 0; [] spawn the_programmer_iphone_fnc_phone_init;";
           x = 0.732093666666666 * safezoneW + safezoneX;
           y = 0.907587959685349 * safezoneH + safezoneY;
           w = 0.025877 * safezoneW;
           h = 0.0439812 * safezoneH;
       };
   };
};