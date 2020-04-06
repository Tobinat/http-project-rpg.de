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
class The_Programmer_Identity_Create {
   idd = 2550;
   name = "The_Programmer_Identity_Create";
   movingenable = false;
   enablesimulation = true;
   class controlsBackground
   {
       class Fond : Life_RscPicture
       {
           idc = 2555;
           text = "";
           x = 0.2453125 * safezoneW + safezoneX;
           y = 0.0691347099311705 * safezoneH + safezoneY;
           w = 0.5 * safezoneW;
           h = 0.9 * safezoneH;
       };
   };
   class controls
   {
       class Jour : Life_RscCombo
       {
           x = 0.343750000000001 * safezoneW + safezoneX;
           y = 0.54701081612586 * safezoneH + safezoneY;
           w = 0.08 * safezoneW;
           h = 0.02 * safezoneH;
           idc = 1005;
           colorselect[] = {0,0,0,1};
           colortext[] = {0,0,0,1};
           colorscrollbar[] = {1,1,1,0};
           colorpicture[] = {1,1,1,0};
           colorpictureselected[] = {1,1,1,0};
           colorpictureright[] = {1,1,1,0};
           colorpicturerightselected[] = {1,1,1,0};
           tooltipcolortext[] = {1,1,1,0};
           tooltipcolorbox[] = {1,1,1,0};
           tooltipcolorshade[] = {1,1,1,0};
           colorbackground[] = {0.752941176470588,0.752941176470588,0.752941176470588,1};
           colorselectbackground[] = {0.501960784313725,0.501960784313725,0.501960784313725,1};
           coloractive[] = {1,1,1,0};
           colordisabled[] = {1,1,1,0};
           colortextright[] = {1,1,1,0};
           colorselectright[] = {0,0,0,1};
           colorselect2right[] = {0,0,0,1};
           colorshadow[] = {1,1,1,0};
       };
       class Mois : Life_RscCombo
       {
           x = 0.460520833333333 * safezoneW + safezoneX;
           y = 0.54701081612586 * safezoneH + safezoneY;
           w = 0.0799999999999999 * safezoneW;
           h = 0.02 * safezoneH;
           idc = 1006;
           colorselect[] = {0,0,0,1};
           colortext[] = {0,0,0,1};
           colorscrollbar[] = {1,1,1,0};
           colorpicture[] = {1,1,1,0};
           colorpictureselected[] = {1,1,1,0};
           colorpictureright[] = {1,1,1,0};
           colorpicturerightselected[] = {1,1,1,0};
           tooltipcolortext[] = {1,1,1,0};
           tooltipcolorbox[] = {1,1,1,0};
           tooltipcolorshade[] = {1,1,1,0};
           colorbackground[] = {0.752941176470588,0.752941176470588,0.752941176470588,1};
           colorselectbackground[] = {0.501960784313725,0.501960784313725,0.501960784313725,1};
           coloractive[] = {1,1,1,0};
           colordisabled[] = {1,1,1,0};
           colortextright[] = {1,1,1,0};
           colorselectright[] = {0,0,0,1};
           colorselect2right[] = {0,0,0,1};
           colorshadow[] = {1,1,1,0};
       };
       class Annee : Life_RscCombo
       {
           x = 0.569375000000001 * safezoneW + safezoneX;
           y = 0.54701081612586 * safezoneH + safezoneY;
           w = 0.0799999999999999 * safezoneW;
           h = 0.02 * safezoneH;
           idc = 1007;
           colorselect[] = {0,0,0,1};
           colortext[] = {0,0,0,1};
           colorscrollbar[] = {1,1,1,0};
           colorpicture[] = {1,1,1,0};
           colorpictureselected[] = {1,1,1,0};
           colorpictureright[] = {1,1,1,0};
           colorpicturerightselected[] = {1,1,1,0};
           tooltipcolortext[] = {1,1,1,0};
           tooltipcolorbox[] = {1,1,1,0};
           tooltipcolorshade[] = {1,1,1,0};
           colorbackground[] = {0.752941176470588,0.752941176470588,0.752941176470588,1};
           colorselectbackground[] = {0.501960784313725,0.501960784313725,0.501960784313725,1};
           coloractive[] = {1,1,1,0};
           colordisabled[] = {1,1,1,0};
           colortextright[] = {1,1,1,0};
           colorselectright[] = {0,0,0,1};
           colorselect2right[] = {0,0,0,1};
           colorshadow[] = {1,1,1,0};
       };
       class nomedit : Life_RscEdit
       {
           text = "";
           x = 0.383854166666667 * safezoneW + safezoneX;
           y = 0.337448869223206 * safezoneH + safezoneY;
           h = 0.03 * safezoneH;
           w = 0.25 * safezoneW;
           colorbackground[] = {1,1,1,0};
           idc = 1008;
           colortext[] = {0,0,0,1};
       };
       class prenomedit : Life_RscEdit
       {
           text = "";
           x = 0.383854166666667 * safezoneW + safezoneX;
           y = 0.303033923303835 * safezoneH + safezoneY;
           h = 0.03 * safezoneH;
           w = 0.25 * safezoneW;
           colorbackground[] = {1,1,1,0};
           idc = 1009;
           colortext[] = {0,0,0,1};
       };
       class taillecombo : Life_RscCombo
       {
           x = 0.369375 * safezoneW + safezoneX;
           y = 0.662055063913472 * safezoneH + safezoneY;
           w = 0.286875 * safezoneW;
           h = 0.02 * safezoneH;
           idc = 1011;
           colorselect[] = {0,0,0,1};
           colortext[] = {0,0,0,1};
           colorscrollbar[] = {1,1,1,0};
           colorpicture[] = {1,1,1,0};
           colorpictureselected[] = {1,1,1,0};
           colorpictureright[] = {1,1,1,0};
           colorpicturerightselected[] = {1,1,1,0};
           tooltipcolortext[] = {1,1,1,0};
           tooltipcolorbox[] = {1,1,1,0};
           tooltipcolorshade[] = {1,1,1,0};
           colorbackground[] = {0.752941176470588,0.752941176470588,0.752941176470588,1};
           colorselectbackground[] = {0.501960784313725,0.501960784313725,0.501960784313725,1};
           coloractive[] = {1,1,1,0};
           colordisabled[] = {1,1,1,0};
           colortextright[] = {1,1,1,0};
           colorselectright[] = {0,0,0,1};
           colorselect2right[] = {0,0,0,1};
           colorshadow[] = {1,1,1,0};
       };
       class sexecombo : Life_RscCombo
       {
           x = 0.369375 * safezoneW + safezoneX;
           y = 0.625850540806294 * safezoneH + safezoneY;
           w = 0.286875 * safezoneW;
           h = 0.02 * safezoneH;
           idc = 1013;
           colorselect[] = {0,0,0,1};
           colortext[] = {0,0,0,1};
           colorscrollbar[] = {1,1,1,0};
           colorpicture[] = {1,1,1,0};
           colorpictureselected[] = {1,1,1,0};
           colorpictureright[] = {1,1,1,0};
           colorpicturerightselected[] = {1,1,1,0};
           tooltipcolortext[] = {1,1,1,0};
           tooltipcolorbox[] = {1,1,1,0};
           tooltipcolorshade[] = {1,1,1,0};
           colorbackground[] = {0.752941176470588,0.752941176470588,0.752941176470588,1};
           colorselectbackground[] = {0.501960784313725,0.501960784313725,0.501960784313725,1};
           coloractive[] = {1,1,1,0};
           colordisabled[] = {1,1,1,0};
           colortextright[] = {1,1,1,0};
           colorselectright[] = {0,0,0,1};
           colorselect2right[] = {0,0,0,1};
           colorshadow[] = {1,1,1,0};
       };
       class lieu_naissance : Life_RscCombo
       {
           x = 0.4084375 * safezoneW + safezoneX;
           y = 0.38267994100295 * safezoneH + safezoneY;
           w = 0.246770833333334 * safezoneW;
           h = 0.02 * safezoneH;
           idc = 1015;
           colorselect[] = {0,0,0,1};
           colortext[] = {0,0,0,1};
           colorscrollbar[] = {1,1,1,0};
           colorpicture[] = {1,1,1,0};
           colorpictureselected[] = {1,1,1,0};
           colorpictureright[] = {1,1,1,0};
           colorpicturerightselected[] = {1,1,1,0};
           tooltipcolortext[] = {1,1,1,0};
           tooltipcolorbox[] = {1,1,1,0};
           tooltipcolorshade[] = {1,1,1,0};
           colorbackground[] = {0.752941176470588,0.752941176470588,0.752941176470588,1};
           colorselectbackground[] = {0.501960784313725,0.501960784313725,0.501960784313725,1};
           coloractive[] = {1,1,1,0};
           colordisabled[] = {1,1,1,0};
           colortextright[] = {1,1,1,0};
           colorselectright[] = {0,0,0,1};
           colorselect2right[] = {0,0,0,1};
           colorshadow[] = {1,1,1,0};
       };
       class Signerbutton : Life_RscButtonMenu
       {
           text = "";
           onbuttonclick = "[] spawn the_programmer_identity_fnc_identityCreateCard";
           x = 0.545937500000001 * safezoneW + safezoneX;
           y = 0.772182890855458 * safezoneH + safezoneY;
           w = 0.13 * safezoneW;
           h = 0.07 * safezoneH;
           idc = -1;
           animtexturedefault = "";
           animtexturenormal = "";
           animtexturedisabled = "";
           animtextureover = "";
           animtexturefocused = "";
           animtexturepressed = "";
       };
       class Exitbutton : Life_RscButtonMenu
       {
           text = "";
           onbuttonclick = "closedialog 0";
           x = 0.3146875 * safezoneW + safezoneX;
           y = 0.772182890855458 * safezoneH + safezoneY;
           w = 0.13 * safezoneW;
           h = 0.0699999999999999 * safezoneH;
           idc = 1000;
           animtexturedefault = "";
           animtexturenormal = "";
           animtexturedisabled = "";
           animtextureover = "";
           animtexturefocused = "";
           animtexturepressed = "";
       };
   };
};