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
class The_Programmer_Iphone_Cell_TONIC_Menu {
   idd = 3000;
   name = "The_Programmer_Iphone_Cell_TONIC_Menu";
   movingenable = 0;
   enablesimulation = 1;
   onload = "[] spawn the_programmer_iphone_fnc_apps_message;";
   class controlsBackground
   {
       class Message : Life_RscPicture
       {
           text = "The-Programmer\Iphone_X\textures\message_tonic.paa";
           idc = 1200;
           x = 0.6379405 * safezoneW + safezoneX;
           y = 0.288744481809243 * safezoneH + safezoneY;
           w = 0.21 * safezoneW;
           h = 0.7 * safezoneH;
       };
   };
   class controls
   {
       class textEdit : Life_RscEdit
       {
           idc = 3003;
           text = "";
           sizeex = 0.040;
           colorbackground[] = {1,1,1,0};
           x = 0.689997333333333 * safezoneW + safezoneX;
           y = 0.587632560471976 * safezoneH + safezoneY;
           w = 0.126 * safezoneW;
           h = 0.208 * safezoneH;
       };
       class Envoyer : Life_RscButtonInvisibleIphone
       {
           idc = 3015;
           onbuttonclick = "[] call TON_fnc_cell_textmsg;";
           x = 0.781664 * safezoneW + safezoneX;
           y = 0.801601452310718 * safezoneH + safezoneY;
           w = 0.035 * safezoneW;
           h = 0.02 * safezoneH;
       };
       class PlayerList : Life_RscCombo
       {
           idc = 3004;
           x = 0.689997333333333 * safezoneW + safezoneX;
           y = 0.517916392330383 * safezoneH + safezoneY;
           w = 0.124 * safezoneW;
           h = 0.0219906 * safezoneH;
       };
       class Police : Life_RscButtonInvisibleIphone
       {
           idc = 3016;
           onbuttonclick = "[] call TON_fnc_cell_textcop;";
           x = 0.696577833333334 * safezoneW + safezoneX;
           y = 0.801601452310718 * safezoneH + safezoneY;
           w = 0.035 * safezoneW;
           h = 0.02 * safezoneH;
       };
       class AdminMsgAllBouton : Life_RscPicture
       {
           idc = 3021;
           text = "The-Programmer\Iphone_X\textures\icons\admin_message.paa";
           x = 0.711458333333333 * safezoneW + safezoneX;
           y = 0.797804578550637 * safezoneH + safezoneY;
           w = 0.043125 * safezoneW;
           h = 0.0842013211543774 * safezoneH;
       };
       class AdminMsgAllButton : Life_RscButtonInvisibleIphone
       {
           idc = 3020;
           onbuttonclick = "[] call TON_fnc_cell_adminmsgall;";
           x = 0.711458333333333 * safezoneW + safezoneX;
           y = 0.826382371026513 * safezoneH + safezoneY;
           w = 0.043125 * safezoneW;
           h = 0.0231751510973807 * safezoneH;
       };
       class Pompier : Life_RscButtonInvisibleIphone
       {
           idc = 3022;
           onbuttonclick = "[] call TON_fnc_cell_emsrequest;";
           x = 0.738040833333333 * safezoneW + safezoneX;
           y = 0.801601452310718 * safezoneH + safezoneY;
           w = 0.035 * safezoneW;
           h = 0.02 * safezoneH;
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