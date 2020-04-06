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
class The_Programmer_Iphone_Key_Menu {
   idd = 2700;
   name = "The_Programmer_Iphone_Key_Menu";
   movingenable = 0;
   enablesimulation = 1;
   onload = "[] spawn the_programmer_iphone_fnc_apps_keyMenu;";
   class controlsBackground
   {
       class Menu_Key : Life_RscPicture
       {
           idc = -1;
           text = "The-Programmer\Iphone_X\textures\clefmenu.paa";
           x = 0.6379405 * safezoneW + safezoneX;
           y = 0.288744481809243 * safezoneH + safezoneY;
           w = 0.21 * safezoneW;
           h = 0.7 * safezoneH;
       };
   };
   class controls
   {
       class KeyChainList : Life_RscListBox
       {
           idc = 2701;
           text = "";
           sizeex = 0.035;
           x = 0.6561375 * safezoneW + safezoneX;
           y = 0.463126843657817 * safezoneH + safezoneY;
           w = 0.175 * safezoneW;
           h = 0.24 * safezoneH;
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
       class NearPlayers : Life_RscCombo
       {
           idc = 2702;
           x = 0.682667666666667 * safezoneW + safezoneX;
           y = 0.706921182890855 * safezoneH + safezoneY;
           w = 0.119034 * safezoneW;
           h = 0.0219906 * safezoneH;
       };
       class DropKey : Life_RscButtonInvisibleIphone
       {
           idc = -1;
           onbuttonclick = "[] call life_fnc_keyDrop";
           x = 0.743407166666666 * safezoneW + safezoneX;
           y = 0.741549358898722 * safezoneH + safezoneY;
           w = 0.085 * safezoneW;
           h = 0.03 * safezoneH;
       };
       class GiveKey : Life_RscButtonInvisibleIphone
       {
           idc = 2703;
           onbuttonclick = "[] call life_fnc_keyGive";
           x = 0.6561375 * safezoneW + safezoneX;
           y = 0.741549358898722 * safezoneH + safezoneY;
           w = 0.085 * safezoneW;
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
