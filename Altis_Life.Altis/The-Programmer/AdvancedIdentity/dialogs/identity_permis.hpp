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
class The_Programmer_Identity_Permis {
   idd = 2650;
   name = "The_Programmer_Identity_Permis";
   movingenable = 0;
   enablesimulation = 1;
   onload = "uiNamespace setVariable ['The_Programmer_Identity_Permis',_this select 0]";
   duration = 20;
   fadein = 0;
   fadeout = 1;
   class controlsBackground
   {
       class Permis : Life_RscPicture
       {
           idc = 2651;
           text = "";
           x = 0.701041666666667 * safezoneW + safezoneX;
           y = -0.114236111111111 * safezoneH + safezoneY;
           w = 0.3 * safezoneW;
           h = 0.6 * safezoneH;
       };
       class Picture : Life_RscPicture
       {
           idc = 2661;
           text = "";
           x = 0.669270833333333 * safezoneW + safezoneX;
           y = -0.0226941986234021 * safezoneH + safezoneY;
           w = 0.150520833333333 * safezoneW;
           h = 0.301946902654867 * safezoneH;
       };
   };
   class controls
   {
       class dateNaissance : Life_RscText
       {
           idc = 2652;
           text = "";
           x = 0.781729166666667 * safezoneW + safezoneX;
           y = 0.119348613569321 * safezoneH + safezoneY;
           w = 0.0693124999999994 * safezoneW;
           h = 0.025 * safezoneH;
           sizeex = 0.045;
           colortext[] = {0,0,0,1};
           shadow = 0;
       };
       class sexe : Life_RscText
       {
           idc = 2653;
           text = "";
           x = 0.781729166666667 * safezoneW + safezoneX;
           y = 0.172357423795477 * safezoneH + safezoneY;
           w = 0.0693124999999994 * safezoneW;
           h = 0.025 * safezoneH;
           sizeex = 0.045;
           colortext[] = {0,0,0,1};
           shadow = 0;
       };
       class Nom : Life_RscText
       {
           idc = 2654;
           text = "";
           x = 0.781729166666667 * safezoneW + safezoneX;
           y = 0.0672295968534901 * safezoneH + safezoneY;
           w = 0.0693124999999994 * safezoneW;
           h = 0.025 * safezoneH;
           sizeex = 0.03;
           colortext[] = {0,0,0,1};
           shadow = 0;
       };
       class playerid : Life_RscText
       {
           idc = 2655;
           text = "";
           x = 0.709614583333334 * safezoneW + safezoneX;
           y = 0.305100786627335 * safezoneH + safezoneY;
           w = 0.10653125 * safezoneW;
           h = 0.025 * safezoneH;
           sizeex = 0.035;
           colortext[] = {0,0,0,1};
           shadow = 0;
       };
       class pointsRestants : Life_RscText
       {
           idc = 2656;
           text = "";
           x = 0.948817708333333 * safezoneW + safezoneX;
           y = 0.111393805309735 * safezoneH + safezoneY;
           w = 0.036078125 * safezoneW;
           h = 0.0341322517207473 * safezoneH;
           colortext[] = {0,0,0,1};
       };
       class licence_1 : Life_RscPicture
       {
           idc = 1000;
           text = "";
           x = 0.852604166666667 * safezoneW + safezoneX;
           y = 0.158941740412979 * safezoneH + safezoneY;
           w = 0.0302083333333336 * safezoneW;
           h = 0.0416482300884956 * safezoneH;
       };
       class licence_2 : Life_RscPicture
       {
           idc = 1001;
           text = "";
           x = 0.852604166666667 * safezoneW + safezoneX;
           y = 0.203364675516224 * safezoneH + safezoneY;
           w = 0.0302083333333336 * safezoneW;
           h = 0.0416482300884956 * safezoneH;
       };
       class licence_3 : Life_RscPicture
       {
           idc = 1002;
           text = "";
           x = 0.852604166666667 * safezoneW + safezoneX;
           y = 0.243679326450344 * safezoneH + safezoneY;
           w = 0.0302083333333336 * safezoneW;
           h = 0.0416482300884956 * safezoneH;
       };
       class licence_4 : Life_RscPicture
       {
           idc = 1003;
           text = "";
           x = 0.852604166666667 * safezoneW + safezoneX;
           y = 0.284977261553589 * safezoneH + safezoneY;
           w = 0.0302083333333336 * safezoneW;
           h = 0.0416482300884956 * safezoneH;
       };
       class licence_5 : Life_RscPicture
       {
           idc = 1004;
           text = "";
           x = 0.933854166666667 * safezoneW + safezoneX;
           y = 0.158941740412979 * safezoneH + safezoneY;
           w = 0.0302083333333336 * safezoneW;
           h = 0.0436147984267457 * safezoneH;
       };
       class licence_6 : Life_RscPicture
       {
           idc = 1005;
           text = "";
           x = 0.933854166666667 * safezoneW + safezoneX;
           y = 0.203364675516224 * safezoneH + safezoneY;
           w = 0.0302083333333336 * safezoneW;
           h = 0.0416482300884956 * safezoneH;
       };
       class licence_7 : Life_RscPicture
       {
           idc = 1006;
           text = "";
           x = 0.933854166666667 * safezoneW + safezoneX;
           y = 0.243679326450344 * safezoneH + safezoneY;
           w = 0.0302083333333336 * safezoneW;
           h = 0.0416482300884956 * safezoneH;
       };
       class licence_8 : Life_RscPicture
       {
           idc = 1007;
           text = "";
           x = 0.933854166666667 * safezoneW + safezoneX;
           y = 0.284977261553589 * safezoneH + safezoneY;
           w = 0.0302083333333336 * safezoneW;
           h = 0.0416482300884956 * safezoneH;
       };
       class check_1 : Life_RscPicture
       {
           idc = 2600;
           text = "";
           x = 0.883854166666667 * safezoneW + safezoneX;
           y = 0.158941740412979 * safezoneH + safezoneY;
           w = 0.0302083333333336 * safezoneW;
           h = 0.0416482300884956 * safezoneH;
       };
       class check_2 : Life_RscPicture
       {
           idc = 2601;
           text = "";
           x = 0.883854166666667 * safezoneW + safezoneX;
           y = 0.203364675516224 * safezoneH + safezoneY;
           w = 0.0302083333333336 * safezoneW;
           h = 0.0416482300884956 * safezoneH;
       };
       class check_3 : Life_RscPicture
       {
           idc = 2602;
           text = "";
           x = 0.883854166666667 * safezoneW + safezoneX;
           y = 0.243679326450344 * safezoneH + safezoneY;
           w = 0.0302083333333336 * safezoneW;
           h = 0.0416482300884956 * safezoneH;
       };
       class check_4 : Life_RscPicture
       {
           idc = 2603;
           text = "";
           x = 0.883854166666667 * safezoneW + safezoneX;
           y = 0.284977261553589 * safezoneH + safezoneY;
           w = 0.0302083333333336 * safezoneW;
           h = 0.0416482300884956 * safezoneH;
       };
       class check_5 : Life_RscPicture
       {
           idc = 2604;
           text = "";
           x = 0.963020833333333 * safezoneW + safezoneX;
           y = 0.158941740412979 * safezoneH + safezoneY;
           w = 0.0302083333333336 * safezoneW;
           h = 0.0416482300884956 * safezoneH;
       };
       class check_6 : Life_RscPicture
       {
           idc = 2605;
           text = "";
           x = 0.963020833333333 * safezoneW + safezoneX;
           y = 0.203364675516224 * safezoneH + safezoneY;
           w = 0.0302083333333336 * safezoneW;
           h = 0.0416482300884956 * safezoneH;
       };
       class check_7 : Life_RscPicture
       {
           idc = 2606;
           text = "";
           x = 0.963020833333333 * safezoneW + safezoneX;
           y = 0.243679326450344 * safezoneH + safezoneY;
           w = 0.0302083333333336 * safezoneW;
           h = 0.0416482300884956 * safezoneH;
       };
       class check_8 : Life_RscPicture
       {
           idc = 2607;
           text = "";
           x = 0.963020833333333 * safezoneW + safezoneX;
           y = 0.284977261553589 * safezoneH + safezoneY;
           w = 0.0302083333333336 * safezoneW;
           h = 0.0416482300884956 * safezoneH;
       };
   };
};