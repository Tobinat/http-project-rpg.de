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
class the_programmer_admin_menu {
   idd = 2900;
   name = "the_programmer_admin_menu";
   movingenable = 0;
   enablesimulation = 1;
   onload = "[] spawn life_fnc_adminMenu;";
   class controlsBackground
   {
       class Fond : Life_RscPicture
       {
           idc = 1000;
           text = "The-Programmer\Iphone_X\textures\menu_admin.paa";
           x = 0.24375 * safezoneW + safezoneX;
           y = 0.0272615535889872 * safezoneH + safezoneY;
           w = 0.55 * safezoneW;
           h = 0.94 * safezoneH;
       };
   };
   class controls
   {
       class RscButtonMenu_2400 : Life_RscButtonInvisibleIphone
       {
           idc = -1;
           text = "";
           onbuttonclick = "closeDialog 0;";
           x = 0.283020333333333 * safezoneW + safezoneX;
           y = 0.472891838741396 * safezoneH + safezoneY;
           w = 0.03 * safezoneW;
           h = 0.04 * safezoneH;
       };
       class RscButtonMenu_2402 : Life_RscButtonInvisibleIphone
       {
           idc = -1;
           text = "";
           onbuttonclick = "[] call life_fnc_adminGetID;";
           x = 0.342916166666667 * safezoneW + safezoneX;
           y = 0.671515240904621 * safezoneH + safezoneY;
           w = 0.061875 * safezoneW;
           h = 0.022 * safezoneH;
       };
       class RscButtonMenu_2403 : Life_RscButtonInvisibleIphone
       {
           idc = 2904;
           text = "";
           onbuttonclick = "createDialog ""Life_Admin_Compensate"";";
           x = 0.413020833333333 * safezoneW + safezoneX;
           y = 0.671515240904621 * safezoneH + safezoneY;
           w = 0.061875 * safezoneW;
           h = 0.022 * safezoneH;
       };
       class RscButtonMenu_2404 : Life_RscButtonInvisibleIphone
       {
           idc = 2905;
           text = "";
           onbuttonclick = "[] call life_fnc_adminSpectate;";
           x = 0.488228666666667 * safezoneW + safezoneX;
           y = 0.671515240904621 * safezoneH + safezoneY;
           w = 0.061875 * safezoneW;
           h = 0.022 * safezoneH;
       };
       class RscButtonMenu_2405 : Life_RscButtonInvisibleIphone
       {
           idc = 2906;
           text = "";
           onbuttonclick = "[] call life_fnc_adminTpHere;";
           x = 0.342916166666667 * safezoneW + safezoneX;
           y = 0.701565388397247 * safezoneH + safezoneY;
           w = 0.061875 * safezoneW;
           h = 0.022 * safezoneH;
       };
       class RscButtonMenu_2401 : Life_RscButtonInvisibleIphone
       {
           idc = 2907;
           text = "";
           onbuttonclick = "closeDialog 0;[] call life_fnc_adminTeleport; hint 'Select where you would like to teleport';";
           x = 0.566457833333333 * safezoneW + safezoneX;
           y = 0.671515240904621 * safezoneH + safezoneY;
           w = 0.061875 * safezoneW;
           h = 0.022 * safezoneH;
       };
       class RscButtonMenu_2406 : Life_RscButtonInvisibleIphone
       {
           idc = 2908;
           text = "";
           onbuttonclick = "[] call life_fnc_adminGodMode;";
           x = 0.413020833333333 * safezoneW + safezoneX;
           y = 0.701565388397247 * safezoneH + safezoneY;
           w = 0.061875 * safezoneW;
           h = 0.022 * safezoneH;
       };
       class RscButtonMenu_2407 : Life_RscButtonInvisibleIphone
       {
           idc = 2909;
           text = "";
           onbuttonclick = "[] call life_fnc_adminFreeze;";
           x = 0.488228666666667 * safezoneW + safezoneX;
           y = 0.701565388397247 * safezoneH + safezoneY;
           w = 0.061875 * safezoneW;
           h = 0.022 * safezoneH;
       };
       class RscButtonMenu_2408 : Life_RscButtonInvisibleIphone
       {
           idc = 2910;
           text = "";
           onbuttonclick = "[] spawn life_fnc_adminMarkers;closeDialog 0;";
           x = 0.566457833333333 * safezoneW + safezoneX;
           y = 0.701565388397247 * safezoneH + safezoneY;
           w = 0.061875 * safezoneW;
           h = 0.022 * safezoneH;
       };
       class RscButtonMenu_2409 : Life_RscButtonInvisibleIphone
       {
           idc = 2911;
           text = "";
           onbuttonclick = "[] call life_fnc_adminDebugCon;";
           x = 0.643645333333333 * safezoneW + safezoneX;
           y = 0.701565388397247 * safezoneH + safezoneY;
           w = 0.061875 * safezoneW;
           h = 0.022 * safezoneH;
       };
       class PlayerList_Admin : Life_RscListBox
       {
           idc = 2902;
           text = "";
           sizeex = 0.035;
           onlbselchanged = "[_this] spawn life_fnc_adminQuery";
           x = 0.338228666666667 * safezoneW + safezoneX;
           y = 0.323200589970502 * safezoneH + safezoneY;
           w = 0.173 * safezoneW;
           h = 0.33 * safezoneH;
       };
       class PlayerBInfo : Life_RscStructuredText
       {
           idc = 2903;
           text = "";
           x = 0.527187 * safezoneW + safezoneX;
           y = 0.323200589970502 * safezoneH + safezoneY;
           w = 0.176 * safezoneW;
           h = 0.33 * safezoneH;
       };
   };
};
