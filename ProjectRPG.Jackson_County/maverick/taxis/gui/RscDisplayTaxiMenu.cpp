/*--------------------------------------------------------------------------
    Author:		Maverick Applications
    Website:	https://maverick-applications.com

    You're not allowed to use this file without permission from the author!
---------------------------------------------------------------------------*/

class RscDisplayTaxiMenu {
	idd = MAV_IDD_RSCDISPLAYTAXICALL;
	onLoad = "['taxis\gui', 'RscDisplayTaxiMenu', _this, true, 'RscDisplayTaxiMenu'] call MAV_gui_fnc_openGUI";

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
			text = "Taxi Service";
			moving = 0;
		};

		// First button
		class FirstButtonBackground: MAV_ctrlStaticTitle {
			x = RELATIVE_X(DIALOG_PADDING);
			y = RELATIVE_Y(6 + DIALOG_PADDING);
			w = SCALE_X(12);
			h = SCALE_Y(10);
			moving = 0;
		};

		class FirstButtonImage: MAV_ctrlStaticPictureKeepAspect {
			x = RELATIVE_X(DIALOG_PADDING + 1 + 1);
			y = RELATIVE_Y(6 + DIALOG_PADDING + 1);
			w = SCALE_X(10 - 2);
			h = SCALE_Y(10 - 2);
			text = "maverick\taxis\data\images\map_pin.paa";
		};

		class FirstButton: MAV_ctrlButton {
			#define BUTTON_HEIGHT 10
			#define BUTTON_WIDTH (DIALOG_W - DIALOG_PADDING * 2 - 12)

			idc = MAV_IDC_RSCDISPLAYTAXIMENU_CUSTOMER;
			x = RELATIVE_X(DIALOG_PADDING + 12);
			y = RELATIVE_Y(6 + DIALOG_PADDING);
			w = SCALE_X(BUTTON_WIDTH);
			h = SCALE_Y(BUTTON_HEIGHT);
			text = dialogMenuCustomer;
		};

		// Second button
		class SecondButtonBackground: MAV_ctrlStaticTitle {
			x = RELATIVE_X(DIALOG_PADDING);
			y = RELATIVE_Y(6 + DIALOG_PADDING + BUTTON_HEIGHT + DIALOG_PADDING);
			w = SCALE_X(12);
			h = SCALE_Y(10);
			moving = 0;
		};

		class SecondButtonImage: MAV_ctrlStaticPictureKeepAspect {
			x = RELATIVE_X(DIALOG_PADDING + 1 + 1);
			y = RELATIVE_Y(6 + DIALOG_PADDING + 1 + BUTTON_HEIGHT + DIALOG_PADDING);
			w = SCALE_X(10 - 2);
			h = SCALE_Y(10 - 2);
			text = "maverick\taxis\data\images\taxi-front-view.paa";
		};

		class SecondButton: MAV_ctrlButton {
			#define BUTTON_HEIGHT 10
			#define BUTTON_WIDTH (DIALOG_W - DIALOG_PADDING * 2 - 12)

			idc = MAV_IDC_RSCDISPLAYTAXIMENU_DRIVER;
			x = RELATIVE_X(DIALOG_PADDING + 12);
			y = RELATIVE_Y(6 + DIALOG_PADDING + BUTTON_HEIGHT + DIALOG_PADDING);
			w = SCALE_X(BUTTON_WIDTH);
			h = SCALE_Y(BUTTON_HEIGHT);
			text = dialogMenuDriver;
		};

		// Third button
		class ThirdButtonBackground: MAV_ctrlStaticTitle {
			x = RELATIVE_X(DIALOG_PADDING);
			y = RELATIVE_Y(6 + DIALOG_PADDING + BUTTON_HEIGHT + DIALOG_PADDING + BUTTON_HEIGHT + DIALOG_PADDING);
			w = SCALE_X(12);
			h = SCALE_Y(10);
			moving = 0;
		};

		class ThirdButtonImage: MAV_ctrlStaticPictureKeepAspect {
			x = RELATIVE_X(DIALOG_PADDING + 1 + 1);
			y = RELATIVE_Y(6 + DIALOG_PADDING + 1 + BUTTON_HEIGHT + DIALOG_PADDING + BUTTON_HEIGHT + DIALOG_PADDING);
			w = SCALE_X(10 - 2);
			h = SCALE_Y(10 - 2);
			text = "maverick\taxis\data\images\settings-gears.paa";
		};

		class ThirdButton: MAV_ctrlButton {
			#define BUTTON_HEIGHT 10
			#define BUTTON_WIDTH (DIALOG_W - DIALOG_PADDING * 2 - 12)

			idc = MAV_IDC_RSCDISPLAYTAXIMENU_SETTINGS;
			x = RELATIVE_X(DIALOG_PADDING + 12);
			y = RELATIVE_Y(6 + DIALOG_PADDING + BUTTON_HEIGHT + DIALOG_PADDING + BUTTON_HEIGHT + DIALOG_PADDING);
			w = SCALE_X(BUTTON_WIDTH);
			h = SCALE_Y(BUTTON_HEIGHT);
			text = dialogMenuSettings;
		};
	};
};