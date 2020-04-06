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
class The_Programmer_Iphone_Stuff_Menu {
   idd = 20057;
   name = "The_Programmer_Iphone_Stuff_Menu";
   movingenable = 1;
   enablesimulation = 1;
   onLoad = "[] spawn the_programmer_iphone_fnc_updateinventaire;";
   class controlsBackground
   {
       class Inventaire : Life_RscPicture
       {
           text = "The-Programmer\Iphone_X\textures\inventaire.paa";
           idc = -1;
           x = 0.6379405 * safezoneW + safezoneX;
           y = 0.288744481809243 * safezoneH + safezoneY;
           w = 0.21 * safezoneW;
           h = 0.7 * safezoneH;
       };
   };
   class controls
   {
       class Poids : Life_RscText
       {
           idc = 2009;
           text = "";
           x = 0.668650833333334 * safezoneW + safezoneX;
           y = 0.384562438544739 * safezoneH + safezoneY;
           w = 0.1 * safezoneW;
           h = 0.02 * safezoneH;
       };
       class Utiliser : Life_RscButtonInvisibleIphone
       {
           idc = -1;
           onbuttonclick = "[] call life_fnc_useItem;";
           x = 0.687935 * safezoneW + safezoneX;
           y = 0.699287341199606 * safezoneH + safezoneY;
           w = 0.05 * safezoneW;
           h = 0.03 * safezoneH;
       };
       class Supprimer : Life_RscButtonInvisibleIphone
       {
           idc = -1;
           onbuttonclick = "[] call life_fnc_removeItem;";
           x = 0.7456095 * safezoneW + safezoneX;
           y = 0.699287341199606 * safezoneH + safezoneY;
           w = 0.05 * safezoneW;
           h = 0.03 * safezoneH;
       };
       class Donner : Life_RscButtonInvisibleIphone
       {
           idc = -1;
           onbuttonclick = "[] call life_fnc_giveItem;";
           x = 0.653936333333333 * safezoneW + safezoneX;
           y = 0.808950304818092 * safezoneH + safezoneY;
           w = 0.178 * safezoneW;
           h = 0.03 * safezoneH;
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
       class nearPlayers : Life_RscCombo
       {
           idc = 2023;
           x = 0.687935 * safezoneW + safezoneX;
           y = 0.771585506391347 * safezoneH + safezoneY;
           w = 0.107 * safezoneW;
           h = 0.025 * safezoneH;
       };
       class items : Life_RscListbox
       {
           idc = 2005;
           colorbackground[] = {1,1,1,0};
           sizeex = 0.033;
           x = 0.668650833333334 * safezoneW + safezoneX;
           y = 0.406583956735496 * safezoneH + safezoneY;
           w = 0.146 * safezoneW;
           h = 0.28 * safezoneH;
       };
       class amount : Life_RscEdit
       {
           idc = 2010;
           text = "1";
           sizeex = 0.033;
           colorbackground[] = {1,1,1,0};
           x = 0.687935 * safezoneW + safezoneX;
           y = 0.736187276302853 * safezoneH + safezoneY;
           w = 0.107 * safezoneW;
           h = 0.025 * safezoneH;
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