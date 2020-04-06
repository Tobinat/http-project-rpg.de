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
class The_Programmer_Iphone_Settings_Menu_p1 {
   idd = 1500;
   name = "The_Programmer_Iphone_Settings_Menu_p1";
   movingenable = 1;
   enablesimulation = 1;
   onload = "[] spawn The_programmer_iphone_fnc_settings_menu_Options";
   class controlsBackground
   {
       class Life_RscTitleBackground : Life_RscPicture
       {
           text = "The-Programmer\Iphone_X\textures\settings\parametre_more.paa";
           idc = 2000;
           x = 0.6379405 * safezoneW + safezoneX;
           y = 0.289727765978368 * safezoneH + safezoneY;
           w = 0.21 * safezoneW;
           h = 0.7 * safezoneH;
       };
   };
   class controls
   {
       class PlayerTagsONOFF : Life_Checkbox
       {
           tooltip = "$STR_GUI_PlayTags";
           idc = 2970;
           sizeex = 0.04;
           oncheckedchanged = "['tags',_this select 1] call life_fnc_s_onCheckedChange;";
           x = 0.7984375 * safezoneW + safezoneX;
           y = 0.541111111111111 * safezoneH + safezoneY;
           colorfocused[] = {0,0,0,1};
           colorhover[] = {0,0,0,1};
           colorpressed[] = {0,0,0,1};
           tooltipcolorbox[] = {0,0,0,1};
           color[] = {0,0,0,1};
           colordisabled[] = {0,0,0,1};
       };
       class SideChatONOFF : PlayerTagsONOFF
       {
           idc = 2971;
           tooltip = "$STR_GUI_SideSwitch";
           oncheckedchanged = "['sidechat',_this select 1] call life_fnc_s_onCheckedChange;";
           y = 0.420019665683382 * safezoneH + safezoneY;
           x = 0.7984375 * safezoneW + safezoneX;
           colorfocused[] = {0,0,0,1};
           colorhover[] = {0,0,0,1};
           colorpressed[] = {0,0,0,1};
           tooltipcolorbox[] = {0,0,0,1};
           color[] = {0,0,0,1};
           colordisabled[] = {0,0,0,1};
       };
       class RevealONOFF : PlayerTagsONOFF
       {
           idc = 2972;
           tooltip = "$STR_GUI_PlayerReveal";
           oncheckedchanged = "['objects',_this select 1] call life_fnc_s_onCheckedChange;";
           y = 0.463136676499509 * safezoneH + safezoneY;
           x = 0.7984375 * safezoneW + safezoneX;
           colorfocused[] = {0,0,0,1};
           colorhover[] = {0,0,0,1};
           colorpressed[] = {0,0,0,1};
           tooltipcolorbox[] = {0,0,0,1};
           color[] = {0,0,0,1};
           colordisabled[] = {0,0,0,1};
       };
       class BroadcastONOFF : PlayerTagsONOFF
       {
           idc = 2973;
           tooltip = "$STR_GUI_BroadcastSwitch";
           oncheckedchanged = "['broadcast',_this select 1] call life_fnc_s_onCheckedChange;";
           y = 0.501484759095379 * safezoneH + safezoneY;
           x = 0.7984375 * safezoneW + safezoneX;
           colorfocused[] = {0,0,0,1};
           colorhover[] = {0,0,0,1};
           colorpressed[] = {0,0,0,1};
           tooltipcolorbox[] = {0,0,0,1};
           color[] = {0,0,0,1};
           colordisabled[] = {0,0,0,1};
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