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
class The_Programmer_Iphone_Old_MSG_Menu {
   idd = 98111;
   name = "The_Programmer_Iphone_Old_MSG_Menu";
   movingenable = 0;
   enablesimulation = 1;
   onload = "[] spawn the_programmer_iphone_fnc_historiqueMenu;";
   class controlsBackground
   {
       class Message : Life_RscPicture
       {
           text = "The-Programmer\Iphone_X\textures\historique.paa";
           idc = 1200;
           x = 0.6379405 * safezoneW + safezoneX;
           y = 0.288744481809243 * safezoneH + safezoneY;
           w = 0.21 * safezoneW;
           h = 0.7 * safezoneH;
       };
   };
   class controls
   {
       class TextBox : Life_RscStructuredText
       {
           idc = 98113;
           text = "";
           x = 0.6623435 * safezoneW + safezoneX;
           y = 0.670851524090462 * safezoneH + safezoneY;
           w = 0.16 * safezoneW;
           h = 0.159 * safezoneH;
           colorbackground[] = {1,1,1,0};
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
       class PlayerList : Life_RscListBox
       {
           idc = 98112;
           text = "";
           sizeex = 0.035;
           onlbselchanged = "[] call max_phone_fnc_lbChanged";
           x = 0.6625 * safezoneW + safezoneX;
           y = 0.489085545722714 * safezoneH + safezoneY;
           w = 0.16 * safezoneW;
           h = 0.159 * safezoneH;
       };
       class DeleteButton : Life_RscButtonInvisibleIphone
       {
           idc = 98114;
           text = "";
           onbuttonclick = "[] spawn max_phone_fnc_deleteMessage";
           x = 0.6623435 * safezoneW + safezoneX;
           y = 0.833284169124877 * safezoneH + safezoneY;
           w = 0.04 * safezoneW;
           h = 0.022 * safezoneH;
       };
       class ReplyButton : Life_RscButtonInvisibleIphone
       {
           idc = 98115;
           text = "";
           onbuttonclick = "[] spawn max_phone_fnc_replyMessage";
           x = 0.704687 * safezoneW + safezoneX;
           y = 0.833284169124877 * safezoneH + safezoneY;
           w = 0.04 * safezoneW;
           h = 0.022 * safezoneH;
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