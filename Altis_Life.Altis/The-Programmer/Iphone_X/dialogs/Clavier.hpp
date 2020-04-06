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
class The_Programmer_Iphone_Clavier_Menu {
   idd = 21000;
   name = "The_Programmer_Iphone_Clavier_Menu";
   movingenable = 0;
   enablesimulation = 1;
   onload = "[] spawn the_programmer_iphone_fnc_keyboard;";
   class controlsBackground
   {
       class Fond : Life_RscPicture
       {
           text = "The-Programmer\Iphone_X\Textures\Clavier.paa";
           idc = -1;
           x = 0.6379405 * safezoneW + safezoneX;
           y = 0.288744481809243 * safezoneH + safezoneY;
           w = 0.21 * safezoneW;
           h = 0.7 * safezoneH;
       };
   };
   class controls
   {
       class ecran : Life_RscEditWithNoBorder
       {
           x = 0.655729166666666 * safezoneW + safezoneX;
           y = 0.394479351032449 * safezoneH + safezoneY;
           h = 0.05 * safezoneH;
           w = 0.173 * safezoneW;
           idc = 21001;
           text = "";
           colortext[] = {0,0,0,1};
           sizeEx = 0.05;
           onkeyup = "uiNamespace setVariable [""compose_number"",(ctrlText 21001)];";
       };
       class btn_0 : Life_RscButtonInvisibleIphone
       {
           x = 0.715208333333333 * safezoneW + safezoneX;
           y = 0.734528515240905 * safezoneH + safezoneY;
           w = 0.055 * safezoneW;
           h = 0.075 * safezoneH;
           idc = -1;
           text = "";
           onbuttonclick = "[""0""] spawn the_programmer_iphone_fnc_composeNumber;";
       };
       class btn_1 : Life_RscButtonInvisibleIphone
       {
           x = 0.661458333333333 * safezoneW + safezoneX;
           y = 0.459251390363815 * safezoneH + safezoneY;
           w = 0.05 * safezoneW;
           h = 0.075 * safezoneH;
           idc = -1;
           text = "";
           onbuttonclick = "[""1""] spawn the_programmer_iphone_fnc_composeNumber;";
       };
       class btn_2 : Life_RscButtonInvisibleIphone
       {
           x = 0.715208333333333 * safezoneW + safezoneX;
           y = 0.459251390363815 * safezoneH + safezoneY;
           w = 0.05 * safezoneW;
           h = 0.075 * safezoneH;
           idc = -1;
           text = "";
           onbuttonclick = "[""2""] spawn the_programmer_iphone_fnc_composeNumber;";
       };
       class btn_3 : Life_RscButtonInvisibleIphone
       {
           x = 0.76625 * safezoneW + safezoneX;
           y = 0.459251390363815 * safezoneH + safezoneY;
           w = 0.055 * safezoneW;
           h = 0.075 * safezoneH;
           idc = -1;
           text = "";
           onbuttonclick = "[""3""] spawn the_programmer_iphone_fnc_composeNumber;";
       };
       class btn_4 : Life_RscButtonInvisibleIphone
       {
           x = 0.661458333333333 * safezoneW + safezoneX;
           y = 0.552620943952803 * safezoneH + safezoneY;
           w = 0.05 * safezoneW;
           h = 0.075 * safezoneH;
           idc = -1;
           text = "";
           onbuttonclick = "[""4""] spawn the_programmer_iphone_fnc_composeNumber;";
       };
       class btn_5 : Life_RscButtonInvisibleIphone
       {
           x = 0.715208333333333 * safezoneW + safezoneX;
           y = 0.552620943952803 * safezoneH + safezoneY;
           w = 0.05 * safezoneW;
           h = 0.075 * safezoneH;
           idc = -1;
           text = "";
           onbuttonclick = "[""5""] spawn the_programmer_iphone_fnc_composeNumber;";
       };
       class btn_6 : Life_RscButtonInvisibleIphone
       {
           x = 0.76625 * safezoneW + safezoneX;
           y = 0.552620943952803 * safezoneH + safezoneY;
           w = 0.055 * safezoneW;
           h = 0.075 * safezoneH;
           idc = -1;
           text = "";
           onbuttonclick = "[""6""] spawn the_programmer_iphone_fnc_composeNumber;";
       };
       class btn_7 : Life_RscButtonInvisibleIphone
       {
           x = 0.661458333333333 * safezoneW + safezoneX;
           y = 0.644066371681416 * safezoneH + safezoneY;
           w = 0.05 * safezoneW;
           h = 0.075 * safezoneH;
           idc = -1;
           text = "";
           onbuttonclick = "[""7""] spawn the_programmer_iphone_fnc_composeNumber;";
       };
       class btn_8 : Life_RscButtonInvisibleIphone
       {
           x = 0.715208333333333 * safezoneW + safezoneX;
           y = 0.644066371681416 * safezoneH + safezoneY;
           w = 0.055 * safezoneW;
           h = 0.075 * safezoneH;
           idc = -1;
           text = "";
           onbuttonclick = "[""8""] spawn the_programmer_iphone_fnc_composeNumber;";
       };
       class btn_9 : Life_RscButtonInvisibleIphone
       {
           x = 0.7709375 * safezoneW + safezoneX;
           y = 0.644066371681416 * safezoneH + safezoneY;
           w = 0.055 * safezoneW;
           h = 0.075 * safezoneH;
           idc = -1;
           text = "";
           onbuttonclick = "[""9""] spawn the_programmer_iphone_fnc_composeNumber;";
       };
       class btn_diez : Life_RscButtonInvisibleIphone
       {
           x = 0.7709375 * safezoneW + safezoneX;
           y = 0.734528515240905 * safezoneH + safezoneY;
           w = 0.055 * safezoneW;
           h = 0.075 * safezoneH;
           idc = -1;
           text = "";
           onbuttonclick = "[""#""] spawn the_programmer_iphone_fnc_composeNumber;";
       };
       class contact : Life_RscButtonInvisibleIphone
       {
           x = 0.661458333333333 * safezoneW + safezoneX;
           y = 0.825973942969518 * safezoneH + safezoneY;
           w = 0.05 * safezoneW;
           h = 0.065 * safezoneH;
           idc = -1;
           text = "";
           onbuttonclick = "[1] spawn the_programmer_iphone_fnc_contact_menu_call;";
       };
       class call : Life_RscButtonInvisibleIphone
       {
           x = 0.719895833333333 * safezoneW + safezoneX;
           y = 0.825973942969518 * safezoneH + safezoneY;
           w = 0.05 * safezoneW;
           h = 0.0679999999999999 * safezoneH;
           idc = -1;
           text = "";
           onbuttonclick = "[(uiNamespace getVariable [""compose_number"",""""])] spawn max_phone_fnc_sendCall; closeDialog 0;";
       };
       class supprimer : Life_RscButtonInvisibleIphone
       {
           x = 0.7709375 * safezoneW + safezoneX;
           y = 0.839739921337266 * safezoneH + safezoneY;
           w = 0.055 * safezoneW;
           h = 0.0570000000000001 * safezoneH;
           idc = -1;
           text = "";
           onbuttonclick = "[] spawn the_programmer_iphone_fnc_composeNumber;";
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
       class appelrestant : Life_RscStructuredText
       {
           idc = 1003;
           colorbackground[] = {1,1,1,0};
           x = 0.655729166666666 * safezoneW + safezoneX;
           y = 0.349248279252705 * safezoneH + safezoneY;
           h = 0.03 * safezoneH;
           w = 0.15 * safezoneW;
       };
   };
};
