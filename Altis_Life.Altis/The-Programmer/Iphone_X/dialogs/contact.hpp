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
class The_Programmer_Iphone_Contact_Menu {
   idd = 3115;
   name = "The_Programmer_Iphone_Contact_Menu";
   movingenable = 0;
   enablesimulation = 1;
   class controlsBackground
   {
       class Message : Life_RscPicture
       {
           text = "The-Programmer\Iphone_X\textures\contact.paa";
           idc = 1200;
           x = 0.6379405 * safezoneW + safezoneX;
           y = 0.288744481809243 * safezoneH + safezoneY;
           w = 0.21 * safezoneW;
           h = 0.7 * safezoneH;
       };
   };
   class controls
   {
       
       class Listecontacts : Life_RscListBox
       {
           idc = 3005;
           sizeex = "(((((safezoneW / safezoneH) min 1.2) / 1.2) / 25) * 1)";
           x = 0.688541666666666 * safezoneW + safezoneX;
           y = 0.627339020939208 * safezoneH + safezoneY;
           w = 0.127 * safezoneW;
           h = 0.206 * safezoneH;
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
       class nameEdit : Life_RscEdit
       {
           idc = 3051;
           text = "";
           colorbackground[] = {1,1,1,0};
           x = 0.688541666666666 * safezoneW + safezoneX;
           y = 0.514949852507375 * safezoneH + safezoneY;
           w = 0.127 * safezoneW;
           h = 0.03 * safezoneH;
       };
       class numeroEdit : Life_RscEdit
       {
           idc = 3052;
           text = "";
           colorbackground[] = {1,1,1,0};
           x = 0.688541666666666 * safezoneW + safezoneX;
           y = 0.560833093791543 * safezoneH + safezoneY;
           w = 0.127 * safezoneW;
           h = 0.03 * safezoneH;
       };
       class AddContact : Life_RscButtonInvisibleIphone
       {
           idc = 4615;
           text = "";
           onbuttonclick = "[] call the_programmer_iphone_fnc_addContact;";
           colorbackground[] = {1,1,1,0};
           x = 0.775 * safezoneW + safezoneX;
           y = 0.596244170762134 * safezoneH + safezoneY;
           w = 0.05 * safezoneW;
           h = 0.02 * safezoneH;
       };
       class RemoveContact : Life_RscButtonInvisibleIphone
       {
           text = "";
           idc = 4406;
           onbuttonclick = "[] call the_programmer_iphone_fnc_removeContact;";
           x = 0.7796875 * safezoneW + safezoneX;
           y = 0.838515240904621 * safezoneH + safezoneY;
           w = 0.05 * safezoneW;
           h = 0.02 * safezoneH;
           colorbackground[] = {0.862745098039216,0.0784313725490196,0.235294117647059,1};
       };
       class Resetcontact : Life_RscButtonInvisibleIphone
       {
           text = "";
           idc = 6501;
           onbuttonclick = "[1] spawn the_programmer_iphone_fnc_resetContact;";
           x = 0.725 * safezoneW + safezoneX;
           y = 0.838515240904621 * safezoneH + safezoneY;
           w = 0.05 * safezoneW;
           h = 0.02 * safezoneH;
           colorbackground[] = {0.862745098039216.0.0784313725490196.0.235294117647059.1};
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