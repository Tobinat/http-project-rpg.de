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
class The_Programmer_Iphone_Home_Menu {
   idd = 542647;
   name = "The_Programmer_Iphone_Home_Menu";
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
       class Background_button : Life_RscText
       {
           idc = 1001;
           x = 0.655208333333333 * safezoneW + safezoneX;
           y = 0.394862340216322 * safezoneH + safezoneY;
           h = 0.485 * safezoneH;
           w = 0.175 * safezoneW;
       };
   };
   class controls
   {
       class Fermer : Life_RscButtonInvisibleIphone
       {
           idc = -1;
           onbuttonclick = "closeDialog 0;";
           tooltip = "$STR_Global_Close";
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
           x = 0.807 * safezoneW + safezoneX;
           y = 0.312 * safezoneH + safezoneY;
           w = 0.01 * safezoneW;
           h = 0.02 * safezoneH;
       };
       class Heure : Life_RscStructuredText
       {
           idc = 2101;
           x = 0.690104166666666 * safezoneW + safezoneX;
           y = 0.341484759095379 * safezoneH + safezoneY;
           h = 0.05 * safezoneH;
           w = 0.1 * safezoneW;
       };
       class Date : Life_RscStructuredText
       {
           idc = 2102;
           x = 0.6796875 * safezoneW + safezoneX;
           y = 0.394862340216322 * safezoneH + safezoneY;
           h = 0.035 * safezoneH;
           w = 0.12 * safezoneW;
       };
   };
};