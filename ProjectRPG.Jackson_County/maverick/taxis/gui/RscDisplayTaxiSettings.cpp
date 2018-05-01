/*--------------------------------------------------------------------------
    Author:		Maverick Applications
    Website:	https://maverick-applications.com

    You're not allowed to use this file without permission from the author!
---------------------------------------------------------------------------*/

class RscDisplayTaxiSettings {
	idd = MAV_IDD_RSCDISPLAYTAXISETTINGS;
	onLoad = "['taxis\gui', 'RscDisplayTaxiSettings', _this, true, 'RscDisplayTaxiSettings'] call MAV_gui_fnc_openGUI";

	#define DIALOG_W 90
	#define DIALOG_H 42
	#define DIALOG_PADDING 1.5
	#define DIALOG_OFFSET_X 0
	#define DIALOG_OFFSET_Y 0

	#define RELATIVE_X(RELATIVE_POSITION) (CENTER_X - ((DIALOG_W / 2) - (RELATIVE_POSITION) - (DIALOG_OFFSET_X)) * GRID_W)
	#define RELATIVE_Y(RELATIVE_POSITION) (CENTER_Y - ((DIALOG_H / 2) - (RELATIVE_POSITION) - (DIALOG_OFFSET_Y)) * GRID_H)
	#define SCALE_X(UNSCALED_SIZE) ((UNSCALED_SIZE) * GRID_W)
	#define SCALE_Y(UNSCALED_SIZE) ((UNSCALED_SIZE) * GRID_H)

	class controlsBackground {
		class Background: MAV_ctrlStaticBackground {
			x = RELATIVE_X(0);
			y = RELATIVE_Y(0);
			w = SCALE_X(DIALOG_W);
			h = SCALE_Y(DIALOG_H);
		};
	};

	class Controls {
		class Header: MAV_ctrlStaticTitle {
			x = RELATIVE_X(0);
			y = RELATIVE_Y(0);
			w = SCALE_X(DIALOG_W);
			h = SCALE_Y(6);
			text = "Taxi Service - Settings";
			moving = 0;
		};

		// Settings
		class TaximeterHeader: MAV_ctrlStaticTitle {
			x = RELATIVE_X(DIALOG_PADDING);
			y = RELATIVE_Y(6 + DIALOG_PADDING);
			w = SCALE_X(DIALOG_W * (1/3) - DIALOG_PADDING - (DIALOG_PADDING / 2));
			h = SCALE_Y(SIZE_M);
			text = dialogSettingsCustomizePos;
			moving = 0;
		};

		class TaximeterPositionCustomizeButton: MAV_ctrlButton {
			idc = MAV_IDC_RSCDISPLAYTAXISETTINGS_TAXIMETER_CUSTOMIZE;
			x = RELATIVE_X((DIALOG_W * (1/3)) + (DIALOG_PADDING / 2));
			y = RELATIVE_Y(6 + DIALOG_PADDING);
			w = SCALE_X((DIALOG_W * (2/3) * (1/2)) - DIALOG_PADDING);
			h = SCALE_Y(SIZE_M);
			text = dialogSettingsCustomize;
		};

		class TaximeterPositionResetButton: MAV_ctrlButton {
			idc = MAV_IDC_RSCDISPLAYTAXISETTINGS_TAXIMETER_RESET;
			x = RELATIVE_X(DIALOG_W * (2/3));
			y = RELATIVE_Y(6 + DIALOG_PADDING);
			w = SCALE_X((DIALOG_W * (2/3) * (1/2)) - DIALOG_PADDING);
			h = SCALE_Y(SIZE_M);
			text = dialogSettingsReset;
		};

		// Footer
		class Footer: MAV_ctrlStaticFooter {
			#define FOOTER_HEIGHT 8

			x = RELATIVE_X(0);
			y = RELATIVE_Y(DIALOG_H - FOOTER_HEIGHT);
			w = SCALE_X(DIALOG_W);
			h = SCALE_Y(FOOTER_HEIGHT);
		};

		class CloseDialog: MAV_ctrlButton {
			#define BUTTON_HEIGHT 5
			#define BUTTON_WIDTH 30

			x = RELATIVE_X(DIALOG_PADDING);
			y = RELATIVE_Y(DIALOG_H - DIALOG_PADDING - BUTTON_HEIGHT);
			w = SCALE_X(BUTTON_WIDTH);
			h = SCALE_Y(BUTTON_HEIGHT);
			text = dialogClose;
			onButtonClick = "closeDialog 0; createDialog 'RscDisplayTaxiMenu';";
		};
	};
};