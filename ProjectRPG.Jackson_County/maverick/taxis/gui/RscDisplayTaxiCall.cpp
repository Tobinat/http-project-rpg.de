/*--------------------------------------------------------------------------
    Author:		Maverick Applications
    Website:	https://maverick-applications.com

    You're not allowed to use this file without permission from the author!
---------------------------------------------------------------------------*/

class RscDisplayTaxiCall {
	idd = MAV_IDD_RSCDISPLAYTAXICALL;
	onLoad = "['taxis\gui', 'RscDisplayTaxiCall', _this, true, 'RscDisplayTaxiCall'] call MAV_gui_fnc_openGUI";

	#define DIALOG_W 150
	#define DIALOG_H 90
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
			text = dialogCallTaxiTitle;
			moving = 0;
		};

		class DestinationMap: MAV_ctrlMap {
            idc = MAV_IDC_RSCDISPLAYTAXICALL_DESTINATIONMAP;
            x = RELATIVE_X(DIALOG_PADDING);
			y = RELATIVE_Y(6 + DIALOG_PADDING);
			w = SCALE_X(90);
			h = SCALE_Y(DIALOG_H - 6 - DIALOG_PADDING * 2 - 8);
        };

        #define GAP_SIZE (DIALOG_W - DIALOG_PADDING * 3 - 90)

        class DestinationHeader: MAV_ctrlStaticTitle {
			x = RELATIVE_X(DIALOG_PADDING + 90 + DIALOG_PADDING);
			y = RELATIVE_Y(6 + DIALOG_PADDING);
			w = SCALE_X(GAP_SIZE);
			h = SCALE_Y(SIZE_M);
			text = dialogDestination;
			moving = 0;
		};

		class DestinationExplanationText: MAV_ctrlStaticMulti {
			x = RELATIVE_X(DIALOG_PADDING + 90 + DIALOG_PADDING);
			y = RELATIVE_Y(6 + DIALOG_PADDING + DIALOG_PADDING + SIZE_M);
			w = SCALE_X(GAP_SIZE);
			h = SCALE_Y(20);
			text = dialogHowToDestination;
		};

		class StatusHeader: MAV_ctrlStaticTitle {
			x = RELATIVE_X(DIALOG_PADDING + 90 + DIALOG_PADDING);
			y = RELATIVE_Y(6 + DIALOG_PADDING * 3 + SIZE_M + 20);
			w = SCALE_X(GAP_SIZE);
			h = SCALE_Y(SIZE_M);
			text = dialogStatusTitle;
			moving = 0;
		};

		// Drivers header
		class AvailableDriversHeader: MAV_ctrlStaticTitle {
			x = RELATIVE_X(DIALOG_PADDING + 90 + DIALOG_PADDING);
			y = RELATIVE_Y(DIALOG_H - 8 - DIALOG_PADDING - SIZE_M);
			w = SCALE_X(GAP_SIZE);
			h = SCALE_Y(SIZE_M);
			text = dialogAvaibleDrivers;
			moving = 0;
		};

		class AvailableDriversNumber: MAV_ctrlStatic {
			idc = MAV_IDC_RSCDISPLAYTAXICALL_AVAILABLEDRIVERS;
			style = ST_RIGHT;
			x = RELATIVE_X(DIALOG_PADDING + 90 + DIALOG_PADDING);
			y = RELATIVE_Y(DIALOG_H - 8 - DIALOG_PADDING - SIZE_M);
			w = SCALE_X(GAP_SIZE);
			h = SCALE_Y(SIZE_M);
			text = "";
			shadow = 0;
		};

		// Checkbox 1
		class CB1: MAV_ctrlCheckbox {
			idc = MAV_IDC_RSCDISPLAYTAXICALL_STATUS_MARKEDDESTINATION;
			x = RELATIVE_X(DIALOG_PADDING + 90 + DIALOG_PADDING);
			y = RELATIVE_Y(6 + DIALOG_PADDING * 4 + SIZE_M * 2 + 20);
			w = SCALE_X(SIZE_M);
			h = SCALE_Y(SIZE_M);
		};

		class CB1Text: MAV_ctrlStatic {
			x = RELATIVE_X(DIALOG_PADDING + 90 + DIALOG_PADDING + SIZE_M);
			y = RELATIVE_Y(6 + DIALOG_PADDING * 4 + SIZE_M * 2 + 20);
			w = SCALE_X(GAP_SIZE - SIZE_M);
			h = SCALE_Y(SIZE_M);
			text = dialogStatusMarkedDest;
		};

		// Checkbox 2
		class CB2: MAV_ctrlCheckbox {
			idc = MAV_IDC_RSCDISPLAYTAXICALL_STATUS_CREATEDCALL;
			x = RELATIVE_X(DIALOG_PADDING + 90 + DIALOG_PADDING);
			y = RELATIVE_Y(6 + DIALOG_PADDING * 4 + SIZE_M * 2 + 20 + (SIZE_M + DIALOG_PADDING) * 1);
			w = SCALE_X(SIZE_M);
			h = SCALE_Y(SIZE_M);
		};

		class CB2Text: MAV_ctrlStatic {
			x = RELATIVE_X(DIALOG_PADDING + 90 + DIALOG_PADDING + SIZE_M);
			y = RELATIVE_Y(6 + DIALOG_PADDING * 4 + SIZE_M * 2 + 20 + (SIZE_M + DIALOG_PADDING) * 1);
			w = SCALE_X(GAP_SIZE - SIZE_M);
			h = SCALE_Y(SIZE_M);
			text = dialogStatusCreatedCall;
		};

		// Checkbox 3
		class CB3: MAV_ctrlCheckbox {
			idc = MAV_IDC_RSCDISPLAYTAXICALL_STATUS_DRIVERFOUND;
			x = RELATIVE_X(DIALOG_PADDING + 90 + DIALOG_PADDING);
			y = RELATIVE_Y(6 + DIALOG_PADDING * 4 + SIZE_M * 2 + 20 + (SIZE_M + DIALOG_PADDING) * 2);
			w = SCALE_X(SIZE_M);
			h = SCALE_Y(SIZE_M);
		};

		class CB3Text: MAV_ctrlStatic {
			x = RELATIVE_X(DIALOG_PADDING + 90 + DIALOG_PADDING + SIZE_M);
			y = RELATIVE_Y(6 + DIALOG_PADDING * 4 + SIZE_M * 2 + 20  + (SIZE_M + DIALOG_PADDING) * 2);
			w = SCALE_X(GAP_SIZE - SIZE_M);
			h = SCALE_Y(SIZE_M);
			text = dialogStatusDriverFound;
		};

		// Checkbox 4
		class CB4: MAV_ctrlCheckbox {
			idc = MAV_IDC_RSCDISPLAYTAXICALL_STATUS_PICKEDUP;
			x = RELATIVE_X(DIALOG_PADDING + 90 + DIALOG_PADDING);
			y = RELATIVE_Y(6 + DIALOG_PADDING * 4 + SIZE_M * 2 + 20 + (SIZE_M + DIALOG_PADDING) * 3);
			w = SCALE_X(SIZE_M);
			h = SCALE_Y(SIZE_M);
		};

		class CB4Text: MAV_ctrlStatic {
			x = RELATIVE_X(DIALOG_PADDING + 90 + DIALOG_PADDING + SIZE_M);
			y = RELATIVE_Y(6 + DIALOG_PADDING * 4 + SIZE_M * 2 + 20 + (SIZE_M + DIALOG_PADDING) * 3);
			w = SCALE_X(GAP_SIZE - SIZE_M);
			h = SCALE_Y(SIZE_M);
			text = dialogStatusPickedUp;
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
			onButtonClick = "closeDialog 0;";
		};

		class CallTaxiButton: MAV_ctrlButton {
			#define BUTTON_HEIGHT 5
			#define BUTTON_WIDTH 50

			idc = MAV_IDC_RSCDISPLAYTAXICALL_CALLTAXI;
			x = RELATIVE_X(DIALOG_W - DIALOG_PADDING - BUTTON_WIDTH);
			y = RELATIVE_Y(DIALOG_H - DIALOG_PADDING - BUTTON_HEIGHT);
			w = SCALE_X(BUTTON_WIDTH);
			h = SCALE_Y(BUTTON_HEIGHT);
			text = dialogCallTaxi;
			show = 0;
		};

		class CancelTaxiButton: MAV_ctrlButton {
			#define BUTTON_HEIGHT 5
			#define BUTTON_WIDTH 50

			idc = MAV_IDC_RSCDISPLAYTAXICALL_CANCELTAXI;
			x = RELATIVE_X(DIALOG_W - DIALOG_PADDING - BUTTON_WIDTH);
			y = RELATIVE_Y(DIALOG_H - DIALOG_PADDING - BUTTON_HEIGHT);
			w = SCALE_X(BUTTON_WIDTH);
			h = SCALE_Y(BUTTON_HEIGHT);
			text = dialogCancelTaxi;
			show = 0;
		};
	};
};