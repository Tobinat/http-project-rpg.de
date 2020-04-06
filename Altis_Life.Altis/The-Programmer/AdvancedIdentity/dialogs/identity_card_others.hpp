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
class The_Programmer_Identity_Card {
   idd = 2600;
   name = "The_Programmer_Identity_Card";
   movingenable = 0;
   enablesimulation = 1;
   onload = "uiNamespace setVariable ['The_Programmer_Identity_Card',_this select 0]";
   duration = 20;
   fadein = 0;
   fadeout = 1;
   class controlsBackground
   {
       class Carte : Life_RscPicture
       {
           idc = 2765;
           text = "";
           x = 0.6918751 * safezoneW + safezoneX;
           y = -0.125595673549656 * safezoneH + safezoneY;
           w = 0.35 * safezoneW;
           h = 0.6 * safezoneH;
       };
       class Picture : Life_RscPicture
       {
           idc = 2769;
           text = "";
           x = 0.704895933333333 * safezoneW + safezoneX;
           y = -0.0287799410029497 * safezoneH + safezoneY;
           w = 0.17 * safezoneW;
           h = 0.31 * safezoneH;
       };
   };
   class controls
   {
       class Grade : Life_RscStructuredText
       {
           idc = 2766;
           text = "";
           x = 0.843958433333332 * safezoneW + safezoneX;
           y = 0.0484456243854476 * safezoneH + safezoneY;
           w = 0.14 * safezoneW;
           h = 0.04 * safezoneH;
       };
       class Numero : Life_RscText
       {
           idc = 2767;
           text = "";
           x = 0.777291766666666 * safezoneW + safezoneX;
           y = 0.199871386430679 * safezoneH + safezoneY;
           w = 0.04 * safezoneW;
           h = 0.05 * safezoneH;
           colortext[] = {1.1.1.1};
           shadow = 0;
       };
       class Nom : Life_RscStructuredText
       {
           idc = 2768;
           text = "";
           x = 0.843958433333332 * safezoneW + safezoneX;
           y = 0.133461946902655 * safezoneH + safezoneY;
           w = 0.14 * safezoneW;
           h = 0.035 * safezoneH;
       };
       class role : Life_RscStructuredText
       {
           idc = 2770;
           text = "";
           x = 0.843958433333332 * safezoneW + safezoneX;
           y = 0.18210668633235 * safezoneH + safezoneY;
           w = 0.14 * safezoneW;
           h = 0.035 * safezoneH;
       };
   };
};