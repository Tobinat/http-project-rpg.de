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
class The_Programmer_Iphone_Appel_En_Cours_Menu {
   idd = 25000;
   name = "The_Programmer_Iphone_Appel_En_Cours_Menu";
   movingenable = 0;
   enablesimulation = 1;
   onLoad = "[] spawn the_programmer_iphone_fnc_inCallIphone;";
   class controlsBackground
   {
       class Fond : Life_RscPicture
       {
           text = "The-Programmer\Iphone_X\textures\Appel_en_cours.paa";
           idc = -1;
           x = 0.6379405 * safezoneW + safezoneX;
           y = 0.288744481809243 * safezoneH + safezoneY;
           w = 0.21 * safezoneW;
           h = 0.7 * safezoneH;
       };
       class add_to_call_pic : Life_RscPicture
       {
           text = "The-Programmer\Iphone_X\textures\icons\add_call.paa";
           idc = 25004;
           x = 0.732093666666666 * safezoneW + safezoneX;
           y = 0.708606822025565 * safezoneH + safezoneY;
           w = 0.02 * safezoneW;
           h = 0.035 * safezoneH;
       };
   };
   class controls
   {
       class ecran : Life_RscStructuredText
       {
           idc = 25001;
           x = 0.6671875 * safezoneW + safezoneX;
           y = 0.482974926253688 * safezoneH + safezoneY;
           h = 0.04 * safezoneH;
           w = 0.15 * safezoneW;
           text = "";
       };
       class Temps : Life_RscText
       {
           idc = 25002;
           x = 0.726041666666667 * safezoneW + safezoneX;
           y = 0.404611602753195 * safezoneH + safezoneY;
           h = 0.02 * safezoneH;
           w = 0.07 * safezoneW;
           text = "";
       };
       class Arreter : Life_RscButtonInvisibleIphone
       {
           x = 0.724479166666667 * safezoneW + safezoneX;
           y = 0.605718289085546 * safezoneH + safezoneY;
           w = 0.0375 * safezoneW;
           h = 0.0648815142576204 * safezoneH;
           idc = -1;
           text = "";
           onbuttonclick = "[] spawn the_programmer_iphone_fnc_endCallButton;";
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
       class Fermer : Life_RscButtonInvisibleIphone
       {
           idc = -1;
           tooltip = "Home";
           onbuttonclick = "closeDialog 0; [2] spawn the_programmer_iphone_fnc_phone_init;";
           x = 0.732093666666666 * safezoneW + safezoneX;
           y = 0.907587959685349 * safezoneH + safezoneY;
           w = 0.025877 * safezoneW;
           h = 0.0439812 * safezoneH;
       };
       class add_to_call : Life_RscButtonInvisibleIphone
       {
           idc = 25003;
           x = 0.7296875 * safezoneW + safezoneX;
           y = 0.706647000983284 * safezoneH + safezoneY;
           h = 0.0439812 * safezoneH;
           w = 0.025877 * safezoneW;
           tooltip = "";
           onbuttonclick = "closeDialog 0; createDialog ""The_Programmer_Iphone_Clavier_Menu"";";
       };
   };
};
