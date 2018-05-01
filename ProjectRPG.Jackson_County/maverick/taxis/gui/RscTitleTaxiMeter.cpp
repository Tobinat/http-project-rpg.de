/*--------------------------------------------------------------------------
    Author:		Maverick Applications
    Website:	https://maverick-applications.com

    You're not allowed to use this file without permission from the author!
---------------------------------------------------------------------------*/

class RscTitleTaxiMeter {
	idd = MAV_IDD_RSCTITLETAXIMETER;
	onLoad = "['taxis\gui', 'RscTitleTaxiMeter', _this, 'RscTitleTaxiMeter'] call MAV_gui_fnc_initLayer";
	duration = 1e+030;

	#define DIALOG_W 59.5
	#define DIALOG_H 30
	#define DIALOG_PADDING 1.5
	#define DIALOG_BASE_X 3
	#define DIALOG_BASE_Y 90

	#define RELATIVE_X(RELATIVE_POSITION) (safeZoneX + ((DIALOG_BASE_X + (RELATIVE_POSITION)) * GRID_W))
	#define RELATIVE_Y(RELATIVE_POSITION) (safeZoneY + ((DIALOG_BASE_Y + (RELATIVE_POSITION)) * GRID_H))
	#define SCALE_X(UNSCALED_SIZE) ((UNSCALED_SIZE) * GRID_W)
	#define SCALE_Y(UNSCALED_SIZE) ((UNSCALED_SIZE) * GRID_H)

	class controlsBackground {
		class Background: MAV_ctrlStaticBackground {
			x = RELATIVE_X(0);
			y = RELATIVE_Y(0);
			w = SCALE_X(DIALOG_W);
			h = SCALE_Y(DIALOG_H);
		};

		class Header: MAV_ctrlStaticTitle {
			x = RELATIVE_X(0);
			y = RELATIVE_Y(0);
			w = SCALE_X(DIALOG_W);
			h = SCALE_Y(6);
			text = dialogTaxiMeter;
			moving = 0;
		};
	};

	class Controls {
		class CurrentInformation: MAV_ctrlStructuredText {
			idc = MAV_IDC_RSCTITLETAXIMETER_INFOTEXT;
			x = RELATIVE_X(0);
			y = RELATIVE_Y(6 + DIALOG_PADDING);
			w = SCALE_X(DIALOG_W);
			h = SCALE_Y(DIALOG_H - 6 - (DIALOG_PADDING * 2));
			text = "";
			shadow = 0;
		};

		class ActiveFooter: MAV_ctrlStaticBackground {
			idc = MAV_IDC_RSCTITLETAXIMETER_ACTIVEFOOTER_BACKGROUND;
			x = RELATIVE_X(0);
			y = RELATIVE_Y(DIALOG_H - 6.5);
			w = SCALE_X(DIALOG_W);
			h = SCALE_Y(6.5);
			colorBackground[] = {0,0,0,0.3};
		};

		class ActiveFooterText: MAV_ctrlStructuredText {
			idc = MAV_IDC_RSCTITLETAXIMETER_ACTIVEFOOTER_TEXT;
			x = RELATIVE_X(0);
			y = RELATIVE_Y(DIALOG_H - 5.5);
			w = SCALE_X(DIALOG_W);
			h = SCALE_Y(5.5);
			shadow = 0;
		};
	};
};