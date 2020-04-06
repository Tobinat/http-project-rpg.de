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
class The_Programmer_Identity_Card_Civilian {
   idd = 2500;
   name = "The_Programmer_Identity_Card_Civilian";
   movingenable = 0;
   enablesimulation = 1;
   onload = "uiNamespace setVariable ['The_Programmer_Identity_Card_Civilian',_this select 0]";
   duration = 30;
   fadein = 0;
   fadeout = 1;
   class controlsBackground
   {
       class Carte : Life_RscPicture
       {
           idc = 2765;
           text = "";
           x = 0.703333433333333 * safezoneW + safezoneX;
           y = -0.0174344149459194 * safezoneH + safezoneY;
           w = 0.3 * safezoneW;
           h = 0.48 * safezoneH;
       };
       class Picture : Life_RscPicture
       {
           idc = 1008;
           text = "";
           x = 0.680729166666667 * safezoneW + safezoneX;
           y = 0.0992330383480826 * safezoneH + safezoneY;
           w = 0.150520833333334 * safezoneW;
           h = 0.242949852507375 * safezoneH;
       };
   };
   class controls
   {
       class Nom : Life_RscText
       {
           idc = 1000;
           text = "";
           x = 0.815583333333334 * safezoneW + safezoneX;
           y = 0.151796991150442 * safezoneH + safezoneY;
           w = 0.1 * safezoneW;
           h = 0.015 * safezoneH;
           sizeex = 0.040;
           colortext[] = {0,0,0,1};
           shadow = 0;
       };
       class Prenom : Life_RscText
       {
           idc = 1001;
           text = "";
           x = 0.823086533333333 * safezoneW + safezoneX;
           y = 0.175153117010816 * safezoneH + safezoneY;
           w = 0.1 * safezoneW;
           h = 0.015 * safezoneH;
           sizeex = 0.040;
           colortext[] = {0,0,0,1};
           shadow = 0;
       };
       class Taille : Life_RscText
       {
           idc = 1002;
           text = "";
           x = 0.815583333333334 * safezoneW + safezoneX;
           y = 0.23182418879056 * safezoneH + safezoneY;
           w = 0.1 * safezoneW;
           h = 0.011 * safezoneH;
           sizeex = 0.035;
           colortext[] = {0,0,0,1};
           shadow = 0;
       };
       class Lieudenaissance : Life_RscText
       {
           idc = 1003;
           text = "";
           x = 0.931770833333333 * safezoneW + safezoneX;
           y = 0.21767610619469 * safezoneH + safezoneY;
           w = 0.0677083333333333 * safezoneW;
           h = 0.011 * safezoneH;
           sizeex = 0.035;
           colortext[] = {0,0,0,1};
           shadow = 0;
       };
       class Datedenaissance : Life_RscText
       {
           idc = 1004;
           text = "";
           x = 0.8366282 * safezoneW + safezoneX;
           y = 0.21767610619469 * safezoneH + safezoneY;
           w = 0.0852468000000003 * safezoneW;
           h = 0.011 * safezoneH;
           sizeex = 0.035;
           colortext[] = {0,0,0,1};
           shadow = 0;
       };
       class Sexe : Life_RscText
       {
           idc = 1005;
           text = "";
           x = 0.815583333333334 * safezoneW + safezoneX;
           y = 0.201817581120944 * safezoneH + safezoneY;
           w = 0.1 * safezoneW;
           h = 0.015 * safezoneH;
           sizeex = 0.040;
           colortext[] = {0,0,0,1};
           shadow = 0;
       };
       class uid : Life_RscText
       {
           idc = 1006;
           text = "";
           x = 0.823086533333333 * safezoneW + safezoneX;
           y = 0.130159783677483 * safezoneH + safezoneY;
           w = 0.065 * safezoneW;
           h = 0.015 * safezoneH;
           sizeex = 0.03;
           colortext[] = {0,0,0,1};
           shadow = 0;
       };
       class nationalite : Life_RscText
       {
           idc = 1007;
           text = "";
           x = 0.932604166666666 * safezoneW + safezoneX;
           y = 0.130159783677483 * safezoneH + safezoneY;
           w = 0.065 * safezoneW;
           h = 0.013 * safezoneH;
           sizeex = 0.045;
           colortext[] = {0,0,0,1};
           shadow = 0;
       };
   };
};