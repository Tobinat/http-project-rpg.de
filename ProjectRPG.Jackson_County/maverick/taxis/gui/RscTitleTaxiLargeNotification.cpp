/*--------------------------------------------------------------------------
    Author:		Maverick Applications
    Website:	https://maverick-applications.com

    You're not allowed to use this file without permission from the author!
---------------------------------------------------------------------------*/

class RscTitleTaxiLargeNotification {
	idd = MAV_IDD_RSCTITLETAXILARGENOTIFICATIONS;
	onLoad = "['taxis\gui', 'RscTitleTaxiLargeNotification', _this, 'RscTitleTaxiLargeNotification'] call MAV_gui_fnc_initLayer";
	duration = 8;
	fadein = 0;
	fadeout = 0;

	#define DIALOG_W 160
	#define DIALOG_H 12
	#define DIALOG_PADDING 1.5
	#define DIALOG_OFFSET_X 0
	#define DIALOG_OFFSET_Y -100

	#define RELATIVE_X(RELATIVE_POSITION) (CENTER_X - ((DIALOG_W / 2) - (RELATIVE_POSITION) - (DIALOG_OFFSET_X)) * GRID_W)
	#define RELATIVE_Y(RELATIVE_POSITION) (CENTER_Y - ((DIALOG_H / 2) - (RELATIVE_POSITION) - (DIALOG_OFFSET_Y)) * GRID_H)
	#define RELATIVE_CTRLGRP_X(RELATIVE_POSITION) ((RELATIVE_POSITION) * GRID_W)
	#define RELATIVE_CTRLGRP_Y(RELATIVE_POSITION) ((RELATIVE_POSITION) * GRID_H)
	#define SCALE_X(UNSCALED_SIZE) ((UNSCALED_SIZE) * GRID_W)
	#define SCALE_Y(UNSCALED_SIZE) ((UNSCALED_SIZE) * GRID_H)

	class Controls {
		class WeaponListGroup: MAV_ctrlControlsGroupNoScrollbars {
			idc = MAV_IDC_RSCTITLETAXILARGENOTIFICATIONS_GROUPBOX;
			x = RELATIVE_X(0);
			y = RELATIVE_Y(0);
			w = SCALE_X(DIALOG_W);
			h = SCALE_Y(DIALOG_H);
			show = 0;

			class Controls {
				class Background: MAV_ctrlStaticBackground {
					x = RELATIVE_CTRLGRP_X(0);
					y = RELATIVE_CTRLGRP_Y(0);
					w = SCALE_X(DIALOG_W);
					h = SCALE_Y(DIALOG_H);
					colorBackground[] = {0.99,0.49,0,0.75};
				};

				class ClipboardImage: MAV_ctrlStaticPictureKeepAspect {
					idc = MAV_IDC_RSCTITLETAXILARGENOTIFICATIONS_ICON;
					x = RELATIVE_CTRLGRP_X(DIALOG_PADDING * 3);
					y = RELATIVE_CTRLGRP_Y(DIALOG_PADDING);
					w = SCALE_X(DIALOG_H - DIALOG_PADDING * 2);
					h = SCALE_Y(DIALOG_H - DIALOG_PADDING * 2);
					text = "maverick\taxis\data\images\taxi-front-view_black.paa";
				};

				class Header: MAV_ctrlStructuredText {
					idc = MAV_IDC_RSCTITLETAXILARGENOTIFICATIONS_HEADER;
					x = RELATIVE_CTRLGRP_X(DIALOG_H + DIALOG_PADDING * 3);
					y = RELATIVE_CTRLGRP_Y(DIALOG_PADDING);
					w = SCALE_X(DIALOG_W - DIALOG_H - DIALOG_PADDING * 4);
					h = SCALE_Y(DIALOG_H - DIALOG_PADDING * 2);
					text = "";

					sizeEx = 9 * GRID_H;
					size = 9 * GRID_H;
					colorText[] = {0,0,0,1};
					shadow = 0;
					show = 0;

					class Attributes {
						align = "left"; // Text align
						color = RGBTOHEX(0, 0, 0); // Text color
						colorLink = RGBTOHEX(COLOR_ACTIVE_RGB); // Link text color
						font = "PuristaSemiBold";
					};
				};

				class HeaderSmall: MAV_ctrlStructuredText {
					idc = MAV_IDC_RSCTITLETAXILARGENOTIFICATIONS_HEADERSMALL;
					x = RELATIVE_CTRLGRP_X(DIALOG_H + DIALOG_PADDING * 3);
					y = RELATIVE_CTRLGRP_Y(DIALOG_PADDING * (3/4));
					w = SCALE_X(DIALOG_W - DIALOG_H - DIALOG_PADDING * 4);
					h = SCALE_Y(DIALOG_H - DIALOG_PADDING);
					text = "";

					sizeEx = 5 * GRID_H;
					size = 5 * GRID_H;
					colorText[] = {0,0,0,1};
					shadow = 0;
					show = 0;

					class Attributes {
						align = "left"; // Text align
						color = RGBTOHEX(0, 0, 0); // Text color
						colorLink = RGBTOHEX(COLOR_ACTIVE_RGB); // Link text color
						font = "PuristaMedium";
					};
				};
			};
		};
	};
};