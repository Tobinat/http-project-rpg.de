/*
    Author: Jean_Park
    Teamspeak 3: ts.the-programmer.com
    Web site: www.the-programmer.com
    Discord : https://discord.gg/DhFUFsq

    Terms of use:
        - This file is forbidden unless you have permission from the author. If you have this file without permission to use it please do not use it and do not share it.
        - If you have permission to use this file, you can use it on your server however it is strictly forbidden to share it.
        - Out of respect for the author please do not delete this information.
*/
class The_Programmer_Paste_Me {
   idd = 20075;
   name = "The_Programmer_Paste_Me";
   onload = "[] spawn the_programmer_iphone_fnc_apps_pasteme;";
   movingenable = 0;
   enablesimulation = 1;
   class controlsBackground
   {
       class Licences_fond : Life_RscPicture
       {
           text = "The-Programmer\Iphone_X\textures\paste_me.paa";
           idc = -1;
           x = 0.6379405 * safezoneW + safezoneX;
           y = 0.288744481809243 * safezoneH + safezoneY;
           w = 0.21 * safezoneW;
           h = 0.7 * safezoneH;
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
       class Zone_Texte : Life_RscEdit
       {
           x = 0.653645833333333 * safezoneW + safezoneX;
           y = 0.426548672566372 * safezoneH + safezoneY;
           h = 0.449 * safezoneH;
           w = 0.177 * safezoneW;
           idc = 1000;
           colorbackground[] = {1,1,1,0};
           text = "";
           colorText[] =  {0,0,0,1};
           style = "16 + 512";
           lineSpacing = 1;
           sizeEx = 0.05;
           shadow = 0;
       };
   };
};