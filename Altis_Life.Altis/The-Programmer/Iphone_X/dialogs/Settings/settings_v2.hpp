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
class The_Programmer_Iphone_Settings_Menu_2 {
   idd = 5001;
   name = "The_Programmer_Iphone_Settings_Menu_2";
   movingenable = 1;
   enablesimulation = 1;
   onload = "[_this select 0] spawn The_programmer_iphone_fnc_settings_menu";
   onunload = "closeDialog 0; [] spawn the_programmer_iphone_fnc_phone_init;";
   class controlsBackground
   {
       class Life_RscTitleBackground : Life_RscPicture
       {
           text = "The-Programmer\Iphone_X\textures\settings\parametre_v2.paa";
           idc = 2000;
           x = 0.6379405 * safezoneW + safezoneX;
           y = 0.289727765978368 * safezoneH + safezoneY;
           w = 0.21 * safezoneW;
           h = 0.7 * safezoneH;
       };
   };
   class controls
   {
       class VD_onfoot_value : Life_RscEditWithNoBorder
       {
           idc = 2902;
           text = "";
           onkeyup = "[_this select 0, 'ground'] call the_programmer_iphone_fnc_settings_onCharSetting;";
           x = 0.747083333333333 * safezoneW + safezoneX;
           y = 0.521406096361849 * safezoneH + safezoneY;
           w = 0.07 * safezoneW;
           h = 0.03 * safezoneH;
           colortext[] = {0, 0, 0, 1};
       };
       class VD_car_value : Life_RscEditWithNoBorder
       {
           idc = 2912;
           text = "";
           onkeyup = "[_this select 0, 'vehicle'] call the_programmer_iphone_fnc_settings_onCharSetting;";
           x = 0.747083333333333 * safezoneW + safezoneX;
           y = 0.562556538839726 * safezoneH + safezoneY;
           w = 0.07 * safezoneW;
           h = 0.03 * safezoneH;
           colortext[] = {0, 0, 0, 1};
       };
       class VD_air_value : Life_RscEditWithNoBorder
       {
           idc = 2922;
           text = "";
           onkeyup = "[_this select 0, 'air'] call the_programmer_iphone_fnc_settings_onCharSetting;";
           x = 0.747083333333333 * safezoneW + safezoneX;
           y = 0.602035398230087 * safezoneH + safezoneY;
           w = 0.07 * safezoneW;
           h = 0.03 * safezoneH;
           colortext[] = {0, 0, 0, 1};
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
       class Son_Sms : Life_RscButtonInvisibleIphone
       {
           x = 0.654288833333333 * safezoneW + safezoneX;
           y = 0.408120613569322 * safezoneH + safezoneY;
           w = 0.175 * safezoneW;
           h = 0.039216 * safezoneH;
           idc = -1;
           onbuttonclick = "[1] call the_programmer_iphone_fnc_Settings_General";
       };
       class Desactivee : Life_RscButtonInvisibleIphone
       {
           x = 0.654288833333333 * safezoneW + safezoneX;
           y = 0.666724350049164 * safezoneH + safezoneY;
           w = 0.175 * safezoneW;
           h = 0.039216 * safezoneH;
           idc = -1;
           onbuttonclick = "setTerrainGrid 50; hint ([""STR_CHANGE_GRASS_NO"",""The_Programmer_Settings_Iphone"",""Iphone_Localization""] call theprogrammer_core_fnc_localize);";
       };
       class Faible : Life_RscButtonInvisibleIphone
       {
           x = 0.654288833333333 * safezoneW + safezoneX;
           y = 0.706055716814159 * safezoneH + safezoneY;
           w = 0.175 * safezoneW;
           h = 0.039216 * safezoneH;
           idc = -1;
           onbuttonclick = "setTerrainGrid 30; hint ([""STR_CHANGE_GRASS_LOW"",""The_Programmer_Settings_Iphone"",""Iphone_Localization""] call theprogrammer_core_fnc_localize);";
       };
       class Normal : Life_RscButtonInvisibleIphone
       {
           x = 0.654288833333333 * safezoneW + safezoneX;
           y = 0.748336936086529 * safezoneH + safezoneY;
           w = 0.175 * safezoneW;
           h = 0.039216 * safezoneH;
           idc = -1;
           onbuttonclick = "setTerrainGrid 12.5; hint ([""STR_CHANGE_GRASS_NORMAL"",""The_Programmer_Settings_Iphone"",""Iphone_Localization""] call theprogrammer_core_fnc_localize);";
       };
       class Eleve : Life_RscButtonInvisibleIphone
       {
           x = 0.654288833333333 * safezoneW + safezoneX;
           y = 0.786685018682399 * safezoneH + safezoneY;
           w = 0.175 * safezoneW;
           h = 0.039216 * safezoneH;
           idc = -1;
           onbuttonclick = "setTerrainGrid 3.125; hint ([""STR_CHANGE_GRASS_HIGHT"",""The_Programmer_Settings_Iphone"",""Iphone_Localization""] call theprogrammer_core_fnc_localize);";
       };
       class Fond_Ecran : Life_RscButtonInvisibleIphone
       {
           x = 0.654288833333333 * safezoneW + safezoneX;
           y = 0.853097345132743 * safezoneH + safezoneY;
           w = 0.153 * safezoneW;
           h = 0.04 * safezoneH;
           idc = -1;
           onbuttonclick = "[0] call the_programmer_iphone_fnc_Settings_General;";
       };
       class MORE : Life_RscButtonInvisibleIphone
       {
           x = 0.807894833333333 * safezoneW + safezoneX;
           y = 0.862930186823992 * safezoneH + safezoneY;
           w = 0.02 * safezoneW;
           h = 0.03 * safezoneH;
           idc = -1;
           tooltip = "-->";
           onbuttonclick = "createdialog ""The_Programmer_Iphone_Settings_Menu_p1"";";
       };
       class Silencieux : Life_Checkbox
       {
           idc = 3000;
           x = 0.770833333333333 * safezoneW + safezoneX;
           y = 0.458702064896755 * safezoneH + safezoneY;
           sizeex = 0.04;
           colorfocused[] = {0,0,0,1};
           colorhover[] = {0,0,0,1};
           colorpressed[] = {0,0,0,1};
           tooltipcolorbox[] = {0,0,0,1};
           color[] = {0,0,0,1};
           colordisabled[] = {0,0,0,1};
           oncheckedchanged = "[2,_this] call the_programmer_iphone_fnc_Settings_LbChanged;";
       };
   };
};