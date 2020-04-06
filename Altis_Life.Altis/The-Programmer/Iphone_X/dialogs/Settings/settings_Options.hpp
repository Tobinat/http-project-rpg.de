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
class The_Programmer_Iphone_Settings_Options {
   idd = 3500;
   name = "The_Programmer_Iphone_Settings_Options";
   movingenable = 1;
   enablesimulation = 1;
   onload = "";
   class controlsBackground
   {
       class Fond : Life_RscPicture
       {
           text = "";
           idc = 3501;
           x = 0.6379405 * safezoneW + safezoneX;
           y = 0.289727765978368 * safezoneH + safezoneY;
           w = 0.21 * safezoneW;
           h = 0.7 * safezoneH;
       };
       class group : Life_TPRscControlsGroupNoScrollbars  {
          idc = 3505;
           x = 0.655208333333333 * safezoneW + safezoneX;
           y = 0.394862340216322 * safezoneH + safezoneY;
           h = 0.455 * safezoneH;
           w = 0.175 * safezoneW;
       };
   };
   class controls
   {  
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
       class Liste : Life_RscListBox
       {
           idc = 3502;
           w = 0.175 * safezoneW;
           h = 0.525 * safezoneH;
           x = 0.6546875 * safezoneW + safezoneX;
           y = 0.3792133726647 * safezoneH + safezoneY;
           colorbackground[] = {1,1,1,0};
           colortext[] = {0, 0, 0, 1};
           sizeex = 0.045;
           colorselect[] = {0,0,0,1};
           colorselect2[] = {0,0,0,1};
       };  
   };
};