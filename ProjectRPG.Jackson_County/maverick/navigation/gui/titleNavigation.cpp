/*--------------------------------------------------------------------------
    Author:     Maverick Applications
    Website:    https://maverick-applications.com

    You're not allowed to use this file without permission from the author!
---------------------------------------------------------------------------*/

class MAV_titleNavigation {

    idd = MAV_IDD_TITLENAVIGATION;
	onLoad = "['navigation\gui', 'MAV_titleNavigation', _this] call MAV_gui_fnc_initLayer";
	duration = 10e+9;
	fadeIn = 0;
	fadeOut = 0;

    #define DIALOG_W 100
    #define DIALOG_H 60

    class ControlsBackground {
        class Background: MAV_ctrlStaticBackground {
            x = (safeZoneX + safeZoneW) - ((DIALOG_W + SIZE_M) * GRID_W);
            y = (safeZoneY + safeZoneH) - ((DIALOG_H + SIZE_S) * GRID_H);
            w = DIALOG_W * GRID_W;
            h = DIALOG_H * GRID_H;
        };

		class Map: MAV_ctrlMapEmpty {
            idc = MAV_IDC_TITLENAVIGATION_TEST_MAP;
            x = (safeZoneX + safeZoneW) - ((DIALOG_W + SIZE_M) * GRID_W);
            y = (safeZoneY + safeZoneH) - ((DIALOG_H + SIZE_S) * GRID_H);
            w = (DIALOG_W - (DIALOG_W / 5)) * GRID_W;
            h = (DIALOG_H - SIZE_M) * GRID_H;
            colorBackground[] =		{1,1,1,0};
	        colorOutside[] =		{1,1,1,0};
            colorTracks[] =			{1,	1, 1, 1};
            colorTracksFill[] =		{1, 1, 1, 1};
            colorRoads[] =			{1, 1, 1, 1};
            colorRoadsFill[] =		{1, 1, 1, 1};
            colorMainRoads[] = 		{1,	1, 1, 1};
            colorMainRoadsFill[] =	{1,	1, 1, 1};
            ptsPerSquareSea = 		5;
            ptsPerSquareTxt = 		20;
            ptsPerSquareCLn = 		10;
            ptsPerSquareExp = 		10;
            ptsPerSquareCost = 		10;
            ptsPerSquareFor = 		9;
            ptsPerSquareForEdge = 	9;
            ptsPerSquareRoad = 		6;
            ptsPerSquareObj = 		9;
            scaleMin =				0.0001;
            scaleMax = 				1.0;
            scaleDefault = 			0.1;
            alphaFadeStartScale = 	0;
            alphaFadeEndScale = 	0;
            text = 					"#(argb,8,8,3)color(1,1,1,1)";
            sizeEx = 				0;
            font = 					FONT_NORMAL;
            colorText[] = 			{0,0,0,0};
        };
	};
	class Controls {
        class BottomText: MAV_ctrlStaticTitle {
            idc = MAV_IDC_TITLENAVIGATION_TEST_BOTTOMTEXT;
            x = (safeZoneX + safeZoneW) - ((DIALOG_W + SIZE_M) * GRID_W);
			y = (safeZoneY + safeZoneH) - ((DIALOG_H + SIZE_S - (DIALOG_H - SIZE_M)) * GRID_H);
            w = DIALOG_W * GRID_W;
            h = SIZE_M * GRID_H;
            shadow = 1;
            size = SIZE_M * GRID_H;
            sizeEx = SIZE_M * GRID_H;
            text = dialogCalculating;
        };
		class DirectionIndicatorAhead: MAV_ctrlStaticPictureKeepAspect {
            idc = MAV_IDC_TITLENAVIGATION_TEST_ARROWIMAGE_AHEAD;
			x = (safeZoneX + safeZoneW) - ((DIALOG_W + SIZE_M - (DIALOG_W - 14)) * GRID_W);
			y = (safeZoneY + safeZoneH) - ((DIALOG_H + SIZE_S - 16 - 2) * GRID_H);
            w = 7 * GRID_W;
            h = 7 * GRID_H;
            text = "maverick\navigation\data\arrow-left.paa";
        };
		class BackgroundDirectionIndicator: MAV_ctrlStaticBackground {
            idc = MAV_IDC_TITLENAVIGATION_TEST_ARROWIMAGE_BACKGROUNDCOLOR;
            x = (safeZoneX + safeZoneW) - ((DIALOG_W + SIZE_M - (DIALOG_W - 20)) * GRID_W);
            y = (safeZoneY + safeZoneH) - ((DIALOG_H + SIZE_S - 25 - 2) * GRID_H);
            w = (DIALOG_W / 5) * GRID_W;
            h = 28 * GRID_H;
            colorBackground[] = {0.99,0.49,0,0};
        };
        class DirectionIndicator: MAV_ctrlStaticPictureKeepAspect {
            idc = MAV_IDC_TITLENAVIGATION_TEST_ARROWIMAGE;
			x = (safeZoneX + safeZoneW) - ((DIALOG_W + SIZE_M - (DIALOG_W - 18)) * GRID_W);
			y = (safeZoneY + safeZoneH) - ((DIALOG_H + SIZE_S - 28 - 2) * GRID_H);
            w = 15 * GRID_W;
            h = 15 * GRID_H;
            text = "maverick\navigation\data\arrow-straight.paa";
            colorText[] = {1,1,1,1};
        };
        class DirectionInformation: MAV_ctrlStructuredText {
            idc = MAV_IDC_TITLENAVIGATION_TEST_ARROWIMAGE_DESCRIPTION;
			x = (safeZoneX + safeZoneW) - ((DIALOG_W + SIZE_M - (DIALOG_W - 20)) * GRID_W);
            y = (safeZoneY + safeZoneH) - ((DIALOG_H + SIZE_S - 45 - 2) * GRID_H);
            w = (DIALOG_W / 5) * GRID_W;
            h = SIZE_M * GRID_W;
            text = "XXXm";
            size = SIZE_M * GRID_H;
            sizeEx = SIZE_M * GRID_H;
            shadow = 0;
            colorText[] = {1,1,1,1};
        };
		class ETAInformation: MAV_ctrlStaticTitle {
            idc = MAV_IDC_TITLENAVIGATION_TEST_ETA;
			x = (safeZoneX + safeZoneW) - ((DIALOG_W + SIZE_M - (DIALOG_W - 20)) * GRID_W);
            y = (safeZoneY + safeZoneH) - ((DIALOG_H + SIZE_S - 1) * GRID_H);
            w = (DIALOG_W / 5) * GRID_W;
            h = SIZE_M * GRID_H;
            text = "X min";
        };
        class DistanceInformation: MAV_ctrlStaticTitle {
            idc = MAV_IDC_TITLENAVIGATION_TEST_DISTANCE;
            x = (safeZoneX + safeZoneW) - ((DIALOG_W + SIZE_M - (DIALOG_W - 20)) * GRID_W);
            y = (safeZoneY + safeZoneH) - ((DIALOG_H + SIZE_S - 7) * GRID_H);
            w = (DIALOG_W / 5) * GRID_W;
            h = SIZE_M * GRID_H;
            text = "XXX m";
        };
		class BackgroundWarningSignInformation: MAV_ctrlStaticBackground {
            idc = MAV_IDC_TITLENAVIGATION_TEST_WARNINGIMAGES_BACKGROUND;
			x = (safeZoneX + safeZoneW) - ((DIALOG_W + SIZE_M - 1) * GRID_W);
			y = (safeZoneY + safeZoneH) - ((DIALOG_H + SIZE_S - 1) * GRID_H);
            w = 13 * GRID_W;
            h = 13 * GRID_H;
            colorBackground[] = {0,0,0,0};
        };
        class WarningSignInformation: MAV_ctrlStructuredText {
            idc = MAV_IDC_TITLENAVIGATION_TEST_WARNINGIMAGES;
			x = (safeZoneX + safeZoneW) - ((DIALOG_W + SIZE_M - 0.5) * GRID_W);
			y = (safeZoneY + safeZoneH) - ((DIALOG_H + SIZE_S - 2.5) * GRID_H);
            w = (DIALOG_W - 20) * GRID_W;
            h = 11 * GRID_H;
            size = 10 * GRID_H;
            sizeEx = 10 * GRID_H;
            shadow = 0;
            color[] = {0,0,0,1};
        };
	};
};