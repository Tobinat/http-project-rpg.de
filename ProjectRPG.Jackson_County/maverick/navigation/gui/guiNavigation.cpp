/*--------------------------------------------------------------------------
    Author:		Maverick Applications
    Website:	https://maverick-applications.com

    You're not allowed to use this file without permission from the author!
---------------------------------------------------------------------------*/

class MAV_guiNavigation {
	idd = MAV_IDD_GUINAVIGATION;
	onLoad = "['navigation\gui', 'MAV_guiNavigation', _this, true] call MAV_gui_fnc_openGUI";
	movingEnable = 0;
	class Controls {
		#define IMAGE_SIZE (SIZE_XL * 6)
		#define DIALOG_W 192
		#define DIALOG_H 52
		#define DIALOG_BORDER 2
		#define DIALOG_CONTENTW (DIALOG_W - (DIALOG_BORDER * 2))
		#define DIALOG_CONTENTH (DIALOG_H - ((SIZE_M + 1) + (DIALOG_BORDER * 2)))
		class Background: MAV_ctrlStaticBackground {
			x = CENTER_X - (DIALOG_W / 2) * GRID_W;
			y = CENTER_Y - (DIALOG_H / 2) * GRID_H;
			w = DIALOG_W * GRID_W;
			h = DIALOG_H * GRID_H;
		};
		class Header: MAV_ctrlStaticTitle {
			x = CENTER_X - (DIALOG_W / 2) * GRID_W;
			y = CENTER_Y - (DIALOG_H / 2) * GRID_H;
			w = DIALOG_W * GRID_W;
			h = SIZE_M * GRID_H;
			text = dialogMainMenu;
		};
		class ControlsGroup: MAV_ctrlControlsGroupNoVScrollbars {
			idc = MAV_IDC_GUINAVIGATION_MAINGRP;
			x = CENTER_X - ((DIALOG_W / 2) - DIALOG_BORDER) * GRID_W;
	        y = CENTER_Y - ((DIALOG_H / 2) - (SIZE_M + DIALOG_BORDER)) * GRID_H;
			w = DIALOG_CONTENTW * GRID_W;
			h = DIALOG_CONTENTH * GRID_H;
			class controls {};
		};
		class Footer: MAV_ctrlStaticFooter {
			idc = MAV_IDC_GUINAVIGATION_FOOTER;
	        x = CENTER_X - (DIALOG_W / 2) * GRID_W;
	        y = CENTER_Y + ((DIALOG_H / 2) - (SIZE_M + 2)) * GRID_H;
	        w = DIALOG_W * GRID_W;
	        h = (SIZE_M + 2) * GRID_H;
			show = 0;
	    };
		class ButtonClose: MAV_ctrlButtonPicture {
			idc = MAV_IDC_GUINAVIGATION_CLOSE;
			x = CENTER_X - ((DIALOG_W / 2) - (DIALOG_W - SIZE_M)) * GRID_W;
			y = CENTER_Y - (DIALOG_H / 2) * GRID_H;
			w = SIZE_M * GRID_W;
			h = SIZE_M * GRID_H;
			colorBackground[] = {0,0,0,0};
			text = "\a3\3DEN\Data\Displays\Display3DEN\search_end_ca.paa";
			offsetPressedX = 0;
			offsetPressedY = 0;
			tooltip = dialogClose;
		};
	};
};

class MAV_guiNavigationCurrent {
	idd = MAV_IDD_GUINAVIGATIONCURRENT;
	onLoad = "['navigation\gui', 'MAV_guiNavigationCurrent', _this, true] call MAV_gui_fnc_openGUI";
	movingEnable = 0;
	#define CONTENT_W 110
	#define CONTENT_H 70
	#define CONTENT_BORDER 2
	class controls {
		class Background: MAV_ctrlStaticBackground {
	        x = CENTER_X - (CONTENT_W / 2) * GRID_W;
	        y = CENTER_Y - (CONTENT_H / 2) * GRID_H;
	        w = CONTENT_W * GRID_W;
	        h = CONTENT_H * GRID_H;
	    };
		class Header: MAV_ctrlStaticTitle {
	        x = CENTER_X - (CONTENT_W / 2) * GRID_W;
	        y = CENTER_Y - (CONTENT_H / 2) * GRID_H;
	        w = CONTENT_W * GRID_W;
	        h = SIZE_M * GRID_H;
	        text = dialogCurrentRoute;
	    };
		class text: MAV_ctrlStructuredText {
			idc = MAV_IDC_GUINAVIGATIONCURRENT_INFO;
			x = CENTER_X - ((CONTENT_W / 2) - CONTENT_BORDER) * GRID_W;
			y = CENTER_Y - ((CONTENT_H / 2) - (SIZE_M + CONTENT_BORDER)) * GRID_H;
			w = (CONTENT_W - (CONTENT_BORDER * 2)) * GRID_W;
			h = (CONTENT_H - ((SIZE_M + 2) + (CONTENT_BORDER * 5))) * GRID_H;
		};
		class Footer: MAV_ctrlStaticFooter {
	        x = CENTER_X - (CONTENT_W / 2) * GRID_W;
	        y = CENTER_Y + ((CONTENT_H / 2) - (SIZE_M + 2)) * GRID_H;
	        w = CONTENT_W * GRID_W;
	        h = (SIZE_M + 2) * GRID_H;
	    };
		class ActionButton: MAV_ctrlButton {
			idc = MAV_IDC_GUINAVIGATIONCURRENT_BTN;
			x = CENTER_X + ((CONTENT_W * 1/2) - ((CONTENT_W * 1/3) + 1)) * GRID_W;
			y = CENTER_Y + ((CONTENT_H * 1/2) - (SIZE_M + 1)) * GRID_H;
			w = (CONTENT_W * 1/3) * GRID_W;
			h = SIZE_M * GRID_H;
			text = dialogResetRoute;
			show = 0;
		};
		class RecalculateButton: MAV_ctrlButton {
			idc = MAV_IDC_GUINAVIGATIONCURRENT_BTNRECALCULATE;
			x = CENTER_X - (CONTENT_W * 1/3) * GRID_W;
			y = CENTER_Y + ((CONTENT_H * 1/2) - (SIZE_M + 1)) * GRID_H;
			w = (CONTENT_W * 1/3) * GRID_W;
			h = SIZE_M * GRID_H;
			text = dialogRecalculate;
			show = 0;
		};
		class CloseButton: MAV_ctrlButton {
			idc = MAV_IDC_GUINAVIGATIONCURRENT_CLOSE;
			x = CENTER_X - ((CONTENT_W * 1/2) - 1) * GRID_W;
			y = CENTER_Y + ((CONTENT_H * 1/2) - (SIZE_M + 1)) * GRID_H;
			w = (CONTENT_W * 1/3) * GRID_W;
			h = SIZE_M * GRID_H;
			text = dialogClose;
		};
	};
};

class MAV_guiNavigationNew {
	idd = MAV_IDD_GUINAVIGATIONNEW;
	onLoad = "['navigation\gui', 'MAV_guiNavigationNew', _this, true] call MAV_gui_fnc_openGUI";
	movingEnable = 0;
	#define CONTENT_W 150
	#define CONTENT_H 90
	#define CONTENT_BORDER 2
	class controls {
		class Background: MAV_ctrlStaticBackground {
	        x = CENTER_X - (CONTENT_W / 2) * GRID_W;
	        y = CENTER_Y - (CONTENT_H / 2) * GRID_H;
	        w = CONTENT_W * GRID_W;
	        h = CONTENT_H * GRID_H;
	    };
		class Header: MAV_ctrlStaticTitle {
	        x = CENTER_X - (CONTENT_W / 2) * GRID_W;
	        y = CENTER_Y - (CONTENT_H / 2) * GRID_H;
	        w = CONTENT_W * GRID_W;
	        h = SIZE_M * GRID_H;
	        text = dialogNewRoute;
	    };
		class Footer: MAV_ctrlStaticFooter {
	        x = CENTER_X - (CONTENT_W / 2) * GRID_W;
	        y = CENTER_Y + ((CONTENT_H / 2) - (SIZE_M + 2)) * GRID_H;
	        w = CONTENT_W * GRID_W;
	        h = (SIZE_M + 2) * GRID_H;
	    };
		class ActionButton: MAV_ctrlButton {
			idc = MAV_IDC_GUINAVIGATIONNEW_BTN;
			x = CENTER_X + ((CONTENT_W * 1/2) - ((CONTENT_W * 1/3) + 1)) * GRID_W;
			y = CENTER_Y + ((CONTENT_H * 1/2) - (SIZE_M + 1)) * GRID_H;
			w = (CONTENT_W * 1/3) * GRID_W;
			h = SIZE_M * GRID_H;
			text = dialogCalcRoute;
			show = 0;
		};
		class CloseButton: MAV_ctrlButton {
			idc = MAV_IDC_GUINAVIGATIONNEW_CLOSE;
			x = CENTER_X - ((CONTENT_W * 1/2) - 1) * GRID_W;
			y = CENTER_Y + ((CONTENT_H * 1/2) - (SIZE_M + 1)) * GRID_H;
			w = (CONTENT_W * 1/3) * GRID_W;
			h = SIZE_M * GRID_H;
			text = dialogBack;
		};
		class Tabs: MAV_ctrlToolbox {
			idc = MAV_IDC_GUINAVIGATIONNEW_TABS;
			x = CENTER_X - (CONTENT_W / 2) * GRID_W;
			y = CENTER_Y - ((CONTENT_H / 2) - SIZE_M) * GRID_H;
			w = CONTENT_W * GRID_W;
			h = SIZE_M * GRID_H;
			columns = 3;
			strings[] = {dialogStart, dialogCheckpoint, dialogDestination};
		};
		class text: MAV_ctrlMap {
			idc = MAV_IDC_GUINAVIGATIONNEW_MAP;
			x = CENTER_X - ((CONTENT_W / 2) - CONTENT_BORDER) * GRID_W;
			y = CENTER_Y - ((CONTENT_H / 2) - (SIZE_M * 2 + CONTENT_BORDER)) * GRID_H;
			w = (6/10 * CONTENT_W) * GRID_W;
			h = (CONTENT_H - ((SIZE_M * 2) + (CONTENT_BORDER * 5.5))) * GRID_H;
		};
		class title1: MAV_ctrlStaticTitle {
			x = CENTER_X - ((CONTENT_W / 2) - (CONTENT_BORDER * 2 + (6/10 * CONTENT_W))) * GRID_W;
			y = CENTER_Y - ((CONTENT_H / 2) - (SIZE_M * 2 + CONTENT_BORDER)) * GRID_H;
			w = ((4/10 * CONTENT_W) - 3 * CONTENT_BORDER) * GRID_W;
			h = SIZE_M * GRID_H;
			text = dialogCommonDest;
		};
		class locations: MAV_ctrlListbox {
			idc = MAV_IDC_GUINAVIGATIONNEW_COMMON;
			x = CENTER_X - ((CONTENT_W / 2) - (CONTENT_BORDER * 2 + (6/10 * CONTENT_W))) * GRID_W;
			y = CENTER_Y - ((CONTENT_H / 2) - (SIZE_M * 3 + CONTENT_BORDER + 1.5)) * GRID_H;
			w = ((4/10 * CONTENT_W) - 3 * CONTENT_BORDER) * GRID_W;
			h = ((CONTENT_H - ((SIZE_M * 2) + (CONTENT_BORDER * 5.5))) / 2.5) * GRID_H;
		};
		class title2: MAV_ctrlStaticTitle {
			x = CENTER_X - ((CONTENT_W / 2) - (CONTENT_BORDER * 2 + (6/10 * CONTENT_W))) * GRID_W;
			y = CENTER_Y - ((CONTENT_H / 2) - (SIZE_M * 2 + (CONTENT_BORDER * 4) + ((CONTENT_H - ((SIZE_M * 2) + (CONTENT_BORDER * 5.5))) / 2.5) + 2)) * GRID_H;
			w = ((4/10 * CONTENT_W) - 3 * CONTENT_BORDER) * GRID_W;
			h = SIZE_M * GRID_H;
			text = dialogSavedRouts;
		};
		class savedroutes: MAV_ctrlListbox {
			idc = MAV_IDC_GUINAVIGATIONNEW_SAVED;
			x = CENTER_X - ((CONTENT_W / 2) - (CONTENT_BORDER * 2 + (6/10 * CONTENT_W))) * GRID_W;
			y = CENTER_Y - ((CONTENT_H / 2) - (SIZE_M * 3 + (CONTENT_BORDER * 4) + ((CONTENT_H - ((SIZE_M * 2) + (CONTENT_BORDER * 5.5))) / 2.5) + 3.5)) * GRID_H;
			w = ((4/10 * CONTENT_W) - 3 * CONTENT_BORDER) * GRID_W;
			h = ((CONTENT_H - ((SIZE_M * 2) + (CONTENT_BORDER * 5.5))) / 3.5) * GRID_H;
		};
	};
};

class MAV_guiNavigationSettings {
	idd = MAV_IDD_GUINAVIGATIONSETTINGS;
	onLoad = "['navigation\gui', 'MAV_guiNavigationSettings', _this, true] call MAV_gui_fnc_openGUI";
	movingEnable = 0;
	#define CONTENT_W 90
	#define CONTENT_H 60
	#define CONTENT_BORDER 2
	class controls {
		class Background: MAV_ctrlStaticBackground {
	        x = CENTER_X - (CONTENT_W / 2) * GRID_W;
	        y = CENTER_Y - (CONTENT_H / 2) * GRID_H;
	        w = CONTENT_W * GRID_W;
	        h = CONTENT_H * GRID_H;
	    };
		class Header: MAV_ctrlStaticTitle {
	        x = CENTER_X - (CONTENT_W / 2) * GRID_W;
	        y = CENTER_Y - (CONTENT_H / 2) * GRID_H;
	        w = CONTENT_W * GRID_W;
	        h = SIZE_M * GRID_H;
	        text = dialogMenuSettings;
	    };
		class Footer: MAV_ctrlStaticFooter {
	        x = CENTER_X - (CONTENT_W / 2) * GRID_W;
	        y = CENTER_Y + ((CONTENT_H / 2) - (SIZE_M + 2)) * GRID_H;
	        w = CONTENT_W * GRID_W;
	        h = (SIZE_M + 2) * GRID_H;
	    };
		class ActionButton: MAV_ctrlButton {
			idc = MAV_IDC_GUINAVIGATIONSETTINGS_BTN;
			x = CENTER_X + ((CONTENT_W * 1/2) - ((CONTENT_W * 1/3) + 1)) * GRID_W;
			y = CENTER_Y + ((CONTENT_H * 1/2) - (SIZE_M + 1)) * GRID_H;
			w = (CONTENT_W * 1/3) * GRID_W;
			h = SIZE_M * GRID_H;
			text = dialogSave;
		};
		class CloseButton: MAV_ctrlButton {
			idc = MAV_IDC_GUINAVIGATIONSETTINGS_CLOSE;
			x = CENTER_X - ((CONTENT_W * 1/2) - 1) * GRID_W;
			y = CENTER_Y + ((CONTENT_H * 1/2) - (SIZE_M + 1)) * GRID_H;
			w = (CONTENT_W * 1/3) * GRID_W;
			h = SIZE_M * GRID_H;
			text = dialogBack;
		};

		class distance: MAV_ctrlControlsGroupNoScrollbars {
			x = CENTER_X - ((CONTENT_W / 2) - CONTENT_BORDER) * GRID_W;
			y = CENTER_Y - ((CONTENT_H / 2) - (SIZE_M + 0.2) - 1) * GRID_H;
			w = (CONTENT_W - (CONTENT_BORDER * 2)) * GRID_W;
			h = SIZE_M * GRID_H;
			class controls {
				class title: MAV_ctrlStaticTitle {
					x = 0;
					y = 0;
					w = (4/10 * CONTENT_W) * GRID_W;
					h = SIZE_M * GRID_H;
					text = dialogUnitSpeed;
				};
				class list: MAV_ctrlCombo {
					idc = MAV_IDC_GUINAVIGATIONSETTINGS_DISTANCE;
					x = (CONTENT_BORDER + 1.5 + (4/10 * (CONTENT_W - (CONTENT_BORDER * 2)))) * GRID_W;
					y = 0;
					w = (6/10 * (CONTENT_W - (CONTENT_BORDER * 5))) * GRID_W;
					h = SIZE_M * GRID_H;
				};
			};
		};

		class travel: MAV_ctrlControlsGroupNoScrollbars {
			x = CENTER_X - ((CONTENT_W / 2) - CONTENT_BORDER) * GRID_W;
			y = CENTER_Y - ((CONTENT_H / 2) - (SIZE_M * 2 + (0.2 * 2)) - 1) * GRID_H;
			w = (CONTENT_W - (CONTENT_BORDER * 2)) * GRID_W;
			h = SIZE_M * GRID_H;
			class controls {
				class title: MAV_ctrlStaticTitle {
					x = 0;
					y = 0;
					w = (4/10 * CONTENT_W) * GRID_W;
					h = SIZE_M * GRID_H;
					text = dialogPreference;
				};
				class list: MAV_ctrlCombo {
					idc = MAV_IDC_GUINAVIGATIONSETTINGS_PATH;
					x = (CONTENT_BORDER + 1.5 + (4/10 * (CONTENT_W - (CONTENT_BORDER * 2)))) * GRID_W;
					y = 0;
					w = (6/10 * (CONTENT_W - (CONTENT_BORDER * 5))) * GRID_W;
					h = SIZE_M * GRID_H;
				};
			};
		};

		class voicesetting: MAV_ctrlControlsGroupNoScrollbars {
			x = CENTER_X - ((CONTENT_W / 2) - CONTENT_BORDER) * GRID_W;
			y = CENTER_Y - ((CONTENT_H / 2) - (SIZE_M * 3 + (0.2 * 4)) - 1) * GRID_H;
			w = (CONTENT_W - (CONTENT_BORDER * 2)) * GRID_W;
			h = SIZE_M * GRID_H;
			class controls {
				class title: MAV_ctrlStaticTitle {
					x = 0;
					y = 0;
					w = (4/10 * CONTENT_W) * GRID_W;
					h = SIZE_M * GRID_H;
					text = dialogVoiceSetting;
				};
				class list: MAV_ctrlCombo {
					idc = MAV_IDC_GUINAVIGATIONSETTINGS_VOICE;
					x = (CONTENT_BORDER + 1.5 + (4/10 * (CONTENT_W - (CONTENT_BORDER * 2)))) * GRID_W;
					y = 0;
					w = (6/10 * (CONTENT_W - (CONTENT_BORDER * 5))) * GRID_W;
					h = SIZE_M * GRID_H;
				};
			};
		};

		class gui_position: MAV_ctrlControlsGroupNoScrollbars {
			x = CENTER_X - ((CONTENT_W / 2) - CONTENT_BORDER) * GRID_W;
			y = CENTER_Y - ((CONTENT_H / 2) - (SIZE_M * 3 + (CONTENT_BORDER * 3)) - 1) * GRID_H;
			w = (CONTENT_W - (CONTENT_BORDER * 2)) * GRID_W;
			h = SIZE_M * GRID_H;
			class controls {
				class title: MAV_ctrlStaticTitle {
					x = 0;
					y = 0;
					w = (4/10 * CONTENT_W) * GRID_W;
					h = SIZE_M * GRID_H;
					text = dialogGpsPos;
				};
				class customize: MAV_ctrlButton {
					idc = MAV_IDC_GUINAVIGATIONSETTINGS_CUSTOMIZE;
					x = (CONTENT_BORDER + 1.5 + (4/10 * (CONTENT_W - (CONTENT_BORDER * 2)))) * GRID_W;
					y = 0;
					w = (6/10 * (CONTENT_W - (CONTENT_BORDER * 25))) * GRID_W;
					h = SIZE_M * GRID_H;
					text = dialogCustomize;
				};
				class reset: MAV_ctrlButton {
					idc = MAV_IDC_GUINAVIGATIONSETTINGS_RESET;
					x = (CONTENT_BORDER + 25 + (4/10 * (CONTENT_W - CONTENT_BORDER))) * GRID_W;
					y = 0;
					w = (6/10 * (CONTENT_W - (CONTENT_BORDER * 25))) * GRID_W;
					h = SIZE_M * GRID_H;
					text = dialogReset;
				};
			};
		};

		class colors: MAV_ctrlControlsGroupNoScrollbars {
			x = CENTER_X - ((CONTENT_W / 2) - CONTENT_BORDER) * GRID_W;
			y = CENTER_Y - ((CONTENT_H / 2) - (SIZE_M * 4 + (CONTENT_BORDER * 4))) * GRID_H;
			w = (CONTENT_W - (CONTENT_BORDER * 2)) * GRID_W;
			h = (SIZE_M * 4 + (1.5 * 3)) * GRID_H;
			class controls {
				class title: MAV_ctrlStaticTitle {
					idc = MAV_IDC_GUINAVIGATIONSETTINGS_COLOR;
					x = 0;
					y = 0;
					w = (CONTENT_W - (CONTENT_BORDER * 2)) * GRID_W;
					h = SIZE_M * GRID_H;
					text = dialogGpsColor;
				};
				class slider1: MAV_ctrlXSliderH {
					idc = MAV_IDC_GUINAVIGATIONSETTINGS_RED;
					x = 0;
					y = (SIZE_M + 1.5) * GRID_H;
					w = (CONTENT_W - (CONTENT_BORDER * 2)) * GRID_W;
					h = SIZE_M * GRID_H;
				};
				class slider2: MAV_ctrlXSliderH {
					idc = MAV_IDC_GUINAVIGATIONSETTINGS_GREEN;
					x = 0;
					y = ((SIZE_M * 2) + 1.5) * GRID_H;
					w = (CONTENT_W - (CONTENT_BORDER * 2)) * GRID_W;
					h = SIZE_M * GRID_H;
				};
				class slider3: MAV_ctrlXSliderH {
					idc = MAV_IDC_GUINAVIGATIONSETTINGS_BLUE;
					x = 0;
					y = ((SIZE_M * 3) + 1.5) * GRID_H;
					w = (CONTENT_W - (CONTENT_BORDER * 2)) * GRID_W;
					h = SIZE_M * GRID_H;
				};
			};
		};
	};
};

class MAV_guiNavigationResize {
	idd = MAV_IDD_GUINAVIGATIONRESIZE;
	onLoad = "['navigation\gui', 'MAV_guiNavigationResize', _this, true] call MAV_gui_fnc_openGUI";
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
            text = dialogDragHere;
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
            text = "<t align='center'>XXXm</t>";
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
            text = "X Min";
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
            colorBackground[] = {0.99,0.49,0,0};
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

class MAV_guiNavigationSaved {
	idd = MAV_IDD_GUINAVIGATIONSAVED;
	onLoad = "['navigation\gui', 'MAV_guiNavigationSaved', _this, true] call MAV_gui_fnc_openGUI";
	movingEnable = 0;
	#define CONTENT_W 90
	#define CONTENT_H 60
	#define CONTENT_BORDER 2
	class controls {
		class Background: MAV_ctrlStaticBackground {
	        x = CENTER_X - (CONTENT_W / 2) * GRID_W;
	        y = CENTER_Y - (CONTENT_H / 2) * GRID_H;
	        w = CONTENT_W * GRID_W;
	        h = CONTENT_H * GRID_H;
	    };
		class Header: MAV_ctrlStaticTitle {
	        x = CENTER_X - (CONTENT_W / 2) * GRID_W;
	        y = CENTER_Y - (CONTENT_H / 2) * GRID_H;
	        w = CONTENT_W * GRID_W;
	        h = SIZE_M * GRID_H;
	        text = dialogSavedTitle;
	    };
		class GroupList: MAV_ctrlListbox {
			idc = MAV_IDC_GUINAVIGATIONSAVED_LIST;
			x = CENTER_X - ((CONTENT_W * 1/2) - CONTENT_BORDER) * GRID_W;
			y = CENTER_Y - ((CONTENT_H * 1/2) - (SIZE_M + 2)) * GRID_H;
			w = (CONTENT_W - (CONTENT_BORDER * 2)) * GRID_W;
			h = (CONTENT_H - ((SIZE_M + 2) + 5 + (CONTENT_BORDER * 2))) * GRID_H;
		};
		class Footer: MAV_ctrlStaticFooter {
	        x = CENTER_X - (CONTENT_W / 2) * GRID_W;
	        y = CENTER_Y + ((CONTENT_H / 2) - (SIZE_M + 2)) * GRID_H;
	        w = CONTENT_W * GRID_W;
	        h = (SIZE_M + 2) * GRID_H;
	    };
		class StartButton: MAV_ctrlButton {
			idc = MAV_IDC_GUINAVIGATIONSAVED_START;
			x = CENTER_X + ((CONTENT_W * 1/2) - ((CONTENT_W * 0.8/3) + 1)) * GRID_W;
			y = CENTER_Y + ((CONTENT_H * 1/2) - (SIZE_M + 1)) * GRID_H;
			w = (CONTENT_W * 0.8/3) * GRID_W;
			h = SIZE_M * GRID_H;
			text = dialogLoad;
			show = 0;
		};
		class DeleteButton: MAV_ctrlButton {
			idc = MAV_IDC_GUINAVIGATIONSAVED_DELETE;
			x = CENTER_X + ((CONTENT_W * 1/2) - ((CONTENT_W * 0.8/3) + 33)) * GRID_W;
			y = CENTER_Y + ((CONTENT_H * 1/2) - (SIZE_M + 1)) * GRID_H;
			w = (CONTENT_W * 0.8/3) * GRID_W;
			h = SIZE_M * GRID_H;
			text = dialogDelete;
			show = 0;
		};
		class CloseButton: MAV_ctrlButton {
			idc = MAV_IDC_GUINAVIGATIONSAVED_BACK;
			x = CENTER_X - ((CONTENT_W * 1/2) - 1) * GRID_W;
			y = CENTER_Y + ((CONTENT_H * 1/2) - (SIZE_M + 1)) * GRID_H;
			w = (CONTENT_W * 0.8/3) * GRID_W;
			h = SIZE_M * GRID_H;
			text = dialogBack;
		};
	};
};


class MAV_guiNavigationCalculateWO {
	idd = MAV_IDD_GUINAVIGATIONCALCULATEWO;
	onLoad = "['navigation\gui', 'MAV_guiNavigationCalculateWO', _this, true] call MAV_gui_fnc_openGUI";
	#define CONTENT_W 110
	#define CONTENT_H 70
	#define CONTENT_BORDER 2
	class Controls {
		class Background: MAV_ctrlStaticBackground {
	        x = CENTER_X - (CONTENT_W / 2) * GRID_W;
	        y = CENTER_Y - (CONTENT_H / 2) * GRID_H;
	        w = CONTENT_W * GRID_W;
	        h = CONTENT_H * GRID_H;
	    };
		class Header: MAV_ctrlStaticTitle {
	        x = CENTER_X - (CONTENT_W / 2) * GRID_W;
	        y = CENTER_Y - (CONTENT_H / 2) * GRID_H;
	        w = CONTENT_W * GRID_W;
	        h = SIZE_M * GRID_H;
	        text = dialogCalculationH;
	    };
		class Footer: MAV_ctrlStaticFooter {
	        x = CENTER_X - (CONTENT_W / 2) * GRID_W;
	        y = CENTER_Y + ((CONTENT_H / 2) - (SIZE_M + 2)) * GRID_H;
	        w = CONTENT_W * GRID_W;
	        h = (SIZE_M + 2) * GRID_H;
	    };
		class StartButton: MAV_ctrlButton {
			idc = MAV_IDC_GUINAVIGATIONCALCULATEWO_START;
			x = CENTER_X + ((CONTENT_W * 1/2) - ((CONTENT_W * 0.8/3) + 1)) * GRID_W;
			y = CENTER_Y + ((CONTENT_H * 1/2) - (SIZE_M + 1)) * GRID_H;
			w = (CONTENT_W * 0.8/3) * GRID_W;
			h = SIZE_M * GRID_H;
			text = dialogStart;
			show = 0;
		};
		class SaveButton: MAV_ctrlButton {
			idc = MAV_IDC_GUINAVIGATIONCALCULATEWO_SAVE;
			x = CENTER_X + ((CONTENT_W * 1/2) - ((CONTENT_W * 0.8/3) + 40)) * GRID_W;
			y = CENTER_Y + ((CONTENT_H * 1/2) - (SIZE_M + 1)) * GRID_H;
			w = (CONTENT_W * 0.8/3) * GRID_W;
			h = SIZE_M * GRID_H;
			text = dialogSave;
			show = 0;
		};
		class CloseButton: MAV_ctrlButton {
			idc = MAV_IDC_GUINAVIGATIONCALCULATEWO_CLOSE;
			x = CENTER_X - ((CONTENT_W * 1/2) - 1) * GRID_W;
			y = CENTER_Y + ((CONTENT_H * 1/2) - (SIZE_M + 1)) * GRID_H;
			w = (CONTENT_W * 0.8/3) * GRID_W;
			h = SIZE_M * GRID_H;
			text = dialogBack;
		};
		class LoadingGroup: MAV_ctrlControlsGroupNoScrollbars {
			idc = MAV_IDC_GUINAVIGATIONCALCULATEWO_GRP;
			x = CENTER_X - (CONTENT_W / 2) * GRID_W;
			y = CENTER_Y - ((CONTENT_H / 2) - (SIZE_M + CONTENT_BORDER)) * GRID_H;
			w = (CONTENT_W - (CONTENT_BORDER * 2)) * GRID_W;
			h = (CONTENT_H - ((SIZE_M + 2) + (CONTENT_BORDER * 5))) * GRID_H;
			show = 0;
			class Controls {
				class Loading: MAV_ctrlStaticPicture {
					idc = MAV_IDC_GUINAVIGATIONCALCULATEWO_IMAGE;
					x = ((CONTENT_W / 2) - 4) * GRID_W;
					y = (CONTENT_H / 2.5) * GRID_W;
					w = (SIZE_XL * 1.5) * GRID_W;
					h = (SIZE_XL * 1.5) * GRID_H;
					text = "maverick\navigation\data\loading.paa";
				};
				class Text: MAV_ctrlStructuredText {
					idc = MAV_IDC_GUINAVIGATIONCALCULATEWO_LOADINGTXT;
					x = 0;
					y = ((CONTENT_H / 2.5) + (SIZE_XL * 1.5) + (CONTENT_BORDER * 3)) * GRID_W;
					w = (CONTENT_W - (CONTENT_BORDER * 2)) * GRID_W;
					h = (SIZE_M * 1.5) * GRID_H;
					text = dialogCalcProgress;
				};
			};
		};
		class GroupList: MAV_ctrlStructuredText {
			idc = MAV_IDC_GUINAVIGATIONCALCULATEWO_TXT;
			x = CENTER_X - ((CONTENT_W * 1/2) - CONTENT_BORDER) * GRID_W;
			y = CENTER_Y - ((CONTENT_H * 1/2) - (SIZE_M + 2) - SIZE_M) * GRID_H;
			w = (CONTENT_W - (CONTENT_BORDER * 2)) * GRID_W;
			h = (CONTENT_H - ((SIZE_M + 2) + 5 + (CONTENT_BORDER * 2)) - SIZE_M) * GRID_H;
			show = 0;
		};

		// Tab and map addition
		class Tabs: MAV_ctrlToolbox {
			idc = MAV_IDC_GUINAVIGATIONCALCULATEWO_TABCONTROL;
			x = CENTER_X - (CONTENT_W / 2) * GRID_W;
			y = CENTER_Y - ((CONTENT_H / 2) - SIZE_M) * GRID_H;
			w = CONTENT_W * GRID_W;
			h = SIZE_M * GRID_H;
			columns = 2;
			show = 0;
			strings[] = {dialogRouteInfo, dialogRouteMapPrev};
		};

		class PreviewMap: MAV_ctrlMap {
			idc = MAV_IDC_GUINAVIGATIONCALCULATEWO_MAP;
			x = CENTER_X - ((CONTENT_W * 1/2) - CONTENT_BORDER) * GRID_W;
			y = CENTER_Y - ((CONTENT_H * 1/2) - (SIZE_M + 2) - SIZE_M) * GRID_H;
			w = (CONTENT_W - (CONTENT_BORDER * 2)) * GRID_W;
			h = (CONTENT_H - ((SIZE_M + 2) + 5 + (CONTENT_BORDER * 2)) - SIZE_M) * GRID_H;
		};
	};
};

class MAV_guiNavigationCalculate {
	idd = MAV_IDD_GUINAVIGATIONCALCULATE;
	#define CONTENT_W 110
	#define CONTENT_H 70
	#define CONTENT_BORDER 2
	class Controls {
		class Background: MAV_ctrlStaticBackground {
	        x = CENTER_X - (CONTENT_W / 2) * GRID_W;
	        y = CENTER_Y - (CONTENT_H / 2) * GRID_H;
	        w = CONTENT_W * GRID_W;
	        h = CONTENT_H * GRID_H;
	    };
		class Header: MAV_ctrlStaticTitle {
	        x = CENTER_X - (CONTENT_W / 2) * GRID_W;
	        y = CENTER_Y - (CONTENT_H / 2) * GRID_H;
	        w = CONTENT_W * GRID_W;
	        h = SIZE_M * GRID_H;
	        text = dialogNavigation;
	    };
		class Footer: MAV_ctrlStaticFooter {
	        x = CENTER_X - (CONTENT_W / 2) * GRID_W;
	        y = CENTER_Y + ((CONTENT_H / 2) - (SIZE_M + 2)) * GRID_H;
	        w = CONTENT_W * GRID_W;
	        h = (SIZE_M + 2) * GRID_H;
	    };
		class StartButton: MAV_ctrlButton {
			idc = MAV_IDC_GUINAVIGATIONCALCULATE_START;
			x = CENTER_X + ((CONTENT_W * 1/2) - ((CONTENT_W * 0.8/3) + 1)) * GRID_W;
			y = CENTER_Y + ((CONTENT_H * 1/2) - (SIZE_M + 1)) * GRID_H;
			w = (CONTENT_W * 0.8/3) * GRID_W;
			h = SIZE_M * GRID_H;
			text = dialogStart;
			show = 0;
		};
		class DeleteButton: MAV_ctrlButton {
			idc = MAV_IDC_GUINAVIGATIONCALCULATE_SAVE;
			x = CENTER_X + ((CONTENT_W * 1/2) - ((CONTENT_W * 0.8/3) + 40)) * GRID_W;
			y = CENTER_Y + ((CONTENT_H * 1/2) - (SIZE_M + 1)) * GRID_H;
			w = (CONTENT_W * 0.8/3) * GRID_W;
			h = SIZE_M * GRID_H;
			text = dialogSave;
			show = 0;
		};
		class CloseButton: MAV_ctrlButton {
			idc = MAV_IDC_GUINAVIGATIONCALCULATE_CLOSE;
			x = CENTER_X - ((CONTENT_W * 1/2) - 1) * GRID_W;
			y = CENTER_Y + ((CONTENT_H * 1/2) - (SIZE_M + 1)) * GRID_H;
			w = (CONTENT_W * 0.8/3) * GRID_W;
			h = SIZE_M * GRID_H;
			text = dialogBack;
		};
		class text: MAV_ctrlMap {
			idc = MAV_IDC_GUINAVIGATIONCALCULATE_MAP;
			x = CENTER_X - ((CONTENT_W / 2) - CONTENT_BORDER) * GRID_W;
			y = CENTER_Y - ((CONTENT_H / 2) - (SIZE_M + CONTENT_BORDER)) * GRID_H;
			w = (CONTENT_W - (CONTENT_BORDER * 2)) * GRID_W;
			h = (CONTENT_H - ((SIZE_M + 2) + (CONTENT_BORDER * 5) + SIZE_M)) * GRID_H;
		};
		class headerrr: MAV_ctrlStaticTitle {
			idc = MAV_IDC_GUINAVIGATIONCALCULATE_INFO;
	       	x = CENTER_X - ((CONTENT_W / 2) - CONTENT_BORDER) * GRID_W;
	        y = CENTER_Y - ((CONTENT_H / 2) - (SIZE_M + CONTENT_BORDER + (CONTENT_H - ((SIZE_M + 2) + (CONTENT_BORDER * 5) + SIZE_M)))) * GRID_H;
	        w = (CONTENT_W - (CONTENT_BORDER * 2)) * GRID_W;
	        h = SIZE_M * GRID_H;
	        text = "INFO HERE";
	    };
		class GroupList: MAV_ctrlStructuredText {
			idc = MAV_IDC_GUINAVIGATIONCALCULATE_TXT;
			x = CENTER_X - ((CONTENT_W * 1/2) - CONTENT_BORDER) * GRID_W;
			y = CENTER_Y - ((CONTENT_H * 1/2) - (SIZE_M + 2)) * GRID_H;
			w = (CONTENT_W - (CONTENT_BORDER * 2)) * GRID_W;
			h = (CONTENT_H - ((SIZE_M + 2) + 5 + (CONTENT_BORDER * 2))) * GRID_H;
			show = 0;
		};
	};
};

class MAV_guiNavigationSave {
	idd = MAV_IDD_GUINAVIGATIONSAVE;
	onLoad = "['navigation\gui', 'MAV_guiNavigationSave', _this, true] call MAV_gui_fnc_openGUI";
	#define CONTENT_W 80
	#define CONTENT_H 21
	#define CONTENT_BORDER 2
	class Controls {
		class Background: MAV_ctrlStaticBackground {
	        x = CENTER_X - (CONTENT_W / 2) * GRID_W;
	        y = CENTER_Y - (CONTENT_H / 2) * GRID_H;
	        w = CONTENT_W * GRID_W;
	        h = CONTENT_H * GRID_H;
	    };
		class Header: MAV_ctrlStaticTitle {
	        x = CENTER_X - (CONTENT_W / 2) * GRID_W;
	        y = CENTER_Y - (CONTENT_H / 2) * GRID_H;
	        w = CONTENT_W * GRID_W;
	        h = SIZE_M * GRID_H;
	        text = dialogSaveRoute;
	    };
		class Footer: MAV_ctrlStaticFooter {
	        x = CENTER_X - (CONTENT_W / 2) * GRID_W;
	        y = CENTER_Y + ((CONTENT_H / 2) - (SIZE_M + 2)) * GRID_H;
	        w = CONTENT_W * GRID_W;
	        h = (SIZE_M + 2) * GRID_H;
	    };
		class StartButton: MAV_ctrlButton {
			idc = MAV_IDC_GUINAVIGATIONSAVE_SAVE;
			x = CENTER_X + ((CONTENT_W * 1/2) - ((CONTENT_W * 0.8/3) + 1)) * GRID_W;
			y = CENTER_Y + ((CONTENT_H * 1/2) - (SIZE_M + 1)) * GRID_H;
			w = (CONTENT_W * 0.8/3) * GRID_W;
			h = SIZE_M * GRID_H;
			text = dialogSave;
			show = 0;
		};
		class CloseButton: MAV_ctrlButton {
			idc = MAV_IDC_GUINAVIGATIONSAVE_CLOSE;
			x = CENTER_X - ((CONTENT_W * 1/2) - 1) * GRID_W;
			y = CENTER_Y + ((CONTENT_H * 1/2) - (SIZE_M + 1)) * GRID_H;
			w = (CONTENT_W * 0.8/3) * GRID_W;
			h = SIZE_M * GRID_H;
			text = dialogBack;
		};
		class RouteName: MAV_ctrlEdit {
			idc = MAV_IDC_GUINAVIGATIONSAVE_EDIT;
			x = CENTER_X - ((CONTENT_W * 1/2) - CONTENT_BORDER) * GRID_W;
			y = CENTER_Y - ((CONTENT_H * 1/2) - (SIZE_M + 2)) * GRID_H;
			w = (CONTENT_W - (CONTENT_BORDER * 2)) * GRID_W;
			h = SIZE_M * GRID_H;
			text = dialogRouteName;
			maxChars = 30;
		};
	};
};