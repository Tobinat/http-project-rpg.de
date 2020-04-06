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
class The_Programmer_Iphone_Cell_Menu {
   idd = 3000;
   name = "The_Programmer_Iphone_Cell_Menu";
   movingenable = 0;
   enablesimulation = 1;
   onload = "[] spawn the_programmer_iphone_fnc_message_menu";
   class controlsBackground
   {
       class Message : Life_RscPicture
       {
           text = "The-Programmer\Iphone_X\textures\message.paa";
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
           idc = 3004;
           text = "";
           colorbackground[] = {1,1,1,0};
           sizeex = 0.030;
           x = 0.690104166666667 * safezoneW + safezoneX;
           y = 0.587069813176008 * safezoneH + safezoneY;
           w = 0.126 * safezoneW;
           h = 0.21 * safezoneH;
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
       class textNum : Life_RscEdit
       {
           idc = 3003;
           text = "";
           colorbackground[] = {1,1,1,0};
           x = 0.690104166666667 * safezoneW + safezoneX;
           y = 0.513765978367748 * safezoneH + safezoneY;
           w = 0.126 * safezoneW;
           h = 0.03 * safezoneH;
       };
       class TextAdminButton : Life_RscButtonInvisibleIphone
       {
           idc = -1;
           text = "";
           onbuttonclick = "[2] spawn max_phone_fnc_sendMSG";
           x = 0.779791666666666 * safezoneW + safezoneX;
           y = 0.827365655195638 * safezoneH + safezoneY;
           w = 0.04 * safezoneW;
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
           onbuttonclick = "[1] spawn max_phone_fnc_sendMSG";
           x = 0.711458333333333 * safezoneW + safezoneX;
           y = 0.826382371026513 * safezoneH + safezoneY;
           w = 0.043125 * safezoneW;
           h = 0.0231751510973807 * safezoneH;
       };
       class oldmessages : Life_RscButtonInvisibleIphone
       {
           text = "";
           onbuttonclick = "createDialog ""The_Programmer_Iphone_Old_MSG_Menu"";";
           x = 0.737031 * safezoneW + safezoneX;
           y = 0.801737715227137 * safezoneH + safezoneY;
           w = 0.04 * safezoneW;
           h = 0.02 * safezoneH;
           idc = 9681;
       };
       class sendMSG : Life_RscButtonInvisibleIphone
       {
           text = "";
           onbuttonclick = "[0] spawn max_phone_fnc_sendMSG";
           x = 0.779270833333332 * safezoneW + safezoneX;
           y = 0.801737715227137 * safezoneH + safezoneY;
           w = 0.04 * safezoneW;
           h = 0.02 * safezoneH;
           idc = 1000;
       };
       class numactuel : Life_RscText
       {
           text = "";
           x = 0.701614333333333 * safezoneW + safezoneX;
           y = 0.42481838266964 * safezoneH + safezoneY;
           h = 0.022 * safezoneH;
           w = 0.128541666666667 * safezoneW;
           idc = 3010;
       };
       class Contacts : Life_RscButtonInvisibleIphone
       {
           text = "";
           onbuttonclick = "[1] spawn the_programmer_iphone_fnc_contact_menu;";
           x = 0.695104166666666 * safezoneW + safezoneX;
           y = 0.801737715227137 * safezoneH + safezoneY;
           w = 0.04 * safezoneW;
           h = 0.02 * safezoneH;
           idc = 1001;
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
       class smsrestant : Life_RscText
       {
           idc = 1002;
           text = "";
           colorbackground[] = {1,1,1,0};
           x = 0.655229166666667 * safezoneW + safezoneX;
           y = 0.454026548672566 * safezoneH + safezoneY;
           w = 0.12 * safezoneW;
           h = 0.02 * safezoneH;
       };
       class numservice : Life_RscText
       {
           text = "";
           x = 0.655229166666667 * safezoneW + safezoneX;
           y = 0.476725663716814 * safezoneH + safezoneY;
           w = 0.12 * safezoneW;
           h = 0.02 * safezoneH;
           idc = 3011;
       };
   };
};