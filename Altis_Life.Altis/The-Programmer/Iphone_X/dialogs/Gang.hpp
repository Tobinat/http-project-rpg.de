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
class The_Programmer_Iphone_Gang_Menu {
   idd = 2620;
   name = "The_Programmer_Iphone_Gang_Menu";
   movingenable = 0;
   enablesimulation = 1;
   onload = "";
   class controlsBackground
   {
       class Life_RscTitleBackground : Life_RscPicture
       {
           text = "";
           idc = 2000;
           x = 0.6379405 * safezoneW + safezoneX;
           y = 0.288744481809243 * safezoneH + safezoneY;
           w = 0.21 * safezoneW;
           h = 0.7 * safezoneH;
       };
   };
   class controls
   {
       class GangMemberList : Life_RscListBox
       {
           idc = 2621;
           text = "";
           colorbackground[] = {1,1,1,0};
           sizeex = 0.035;
           x = 0.668854166666667 * safezoneW + safezoneX;
           y = 0.514670599803343 * safezoneH + safezoneY;
           w = 0.148 * safezoneW;
           h = 0.185 * safezoneH;
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
       class Augementer : Life_RscButtonInvisibleIphone
       {
           idc = 2622;
           onbuttonclick = "[] spawn life_fnc_gangUpgrade;";
           x = 0.659583333333333 * safezoneW + safezoneX;
           y = 0.802625368731563 * safezoneH + safezoneY;
           w = 0.17 * safezoneW;
           h = 0.03 * safezoneH;
       };
       class GangKick : Life_RscButtonInvisibleIphone
       {
           idc = 2624;
           onbuttonclick = "[] call life_fnc_gangKick;";
           x = 0.717395833333333 * safezoneW + safezoneX;
           y = 0.7670796460177 * safezoneH + safezoneY;
           w = 0.05 * safezoneW;
           h = 0.03 * safezoneH;
       };
       class GangLeader : Life_RscButtonInvisibleIphone
       {
           idc = 2625;
           text = "";
           onbuttonclick = "[] spawn life_fnc_gangNewLeader;";
           x = 0.776770833333333 * safezoneW + safezoneX;
           y = 0.7670796460177 * safezoneH + safezoneY;
           w = 0.05 * safezoneW;
           h = 0.03 * safezoneH;
       };
       class InviteMember : Life_RscButtonInvisibleIphone
       {
           idc = 2630;
           text = "";
           onbuttonclick = "[] spawn life_fnc_gangInvitePlayer;";
           y = 0.724208456243855 * safezoneH + safezoneY;
           x = 0.800625 * safezoneW + safezoneX;
           w = 0.03 * safezoneW;
           h = 0.03 * safezoneH;
       };
       class DisbandGang : Life_RscButtonInvisibleIphone
       {
           idc = 2631;
           text = "";
           onbuttonclick = "";
           y = 0.837581120943953 * safezoneH + safezoneY;
           w = 0.17 * safezoneW;
           h = 0.03 * safezoneH;
           x = 0.659583333333333 * safezoneW + safezoneX;
       };
       class ColorList : Life_RscCombo
       {
           idc = 2632;
           x = 0.664583333333333 * safezoneW + safezoneX;
           y = 0.728 * safezoneH + safezoneY;
           w = 0.13 * safezoneW;
           h = 0.022 * safezoneH;
       };
       class GangBank : Life_RscStructuredText
       {
           idc = 601;
           style = 1;
           text = "";
           w = 0.115 * safezoneW;
           h = 0.04 * safezoneH;
           x = 0.6965625 * safezoneW + safezoneX;
           y = 0.410422812192723 * safezoneH + safezoneY;
       };
       class Nom : Life_RscStructuredText
       {
           idc = 2629;
           style = 1;
           text = "";
           sizeex = 0.045;
           w = 0.1 * safezoneW;
           h = 0.025 * safezoneH;
           x = 0.705416666666667 * safezoneW + safezoneX;
           y = 0.471779744346115 * safezoneH + safezoneY;
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
