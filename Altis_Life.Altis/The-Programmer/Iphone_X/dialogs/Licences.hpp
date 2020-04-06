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
class The_Programmer_Iphone_Licenses_Menu {
   idd = 20058;
   name = "The_Programmer_Iphone_Licenses_Menu";
   movingenable = 0;
   enablesimulation = 1;
   class controlsBackground
   {
       class Licences_fond : Life_RscPicture
       {
           text = "The-Programmer\Iphone_X\textures\licences.paa";
           idc = -1;
           x = 0.6379405 * safezoneW + safezoneX;
           y = 0.288744481809243 * safezoneH + safezoneY;
           w = 0.21 * safezoneW;
           h = 0.7 * safezoneH;
       };
   };
   class controls
   {
        class Licenses_Menu : Life_RscControlsGroup {
            idc = -1;
           x = 0.654094166666666 * safezoneW + safezoneX;
           y = 0.62383620058997 * safezoneH + safezoneY;
           w = 0.17 * safezoneW;
           h = 0.27 * safezoneH;

            class Controls {
                class Life_Licenses: Life_RscStructuredText {
                    idc = 1500;
                    sizeEx = 0.020;
                    text = "";
          	 		background[] = {0,0,0,0};
          	 		x = 0;
          	 		y = 0;
          			w = 0.16 * safezoneW;
          			h = 0.54 * safezoneH;
                };
            };
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
