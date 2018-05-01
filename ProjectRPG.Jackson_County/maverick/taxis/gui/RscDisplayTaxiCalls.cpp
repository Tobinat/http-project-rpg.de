/*--------------------------------------------------------------------------
    Author:		Maverick Applications
    Website:	https://maverick-applications.com

    You're not allowed to use this file without permission from the author!
---------------------------------------------------------------------------*/

class RscDisplayTaxiCalls {
	idd = MAV_IDD_RSCDISPLAYTAXICALLS;
	onLoad = "['taxis\gui', 'RscDisplayTaxiCalls', _this, true, 'RscDisplayTaxiCalls'] call MAV_gui_fnc_openGUI";

	#define DIALOG_W 150
	#define DIALOG_H 70
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

		class Header: MAV_ctrlStaticTitle {
			x = RELATIVE_X(0);
			y = RELATIVE_Y(0);
			w = SCALE_X(DIALOG_W);
			h = SCALE_Y(6);
			text = dialogTaxiFareList;
			moving = 0;
		};
	};

	class Controls {
		class ListNBoxTaxiCalls: MAV_ctrlListNBox {
			idc = MAV_IDC_RSCDISPLAYTAXICALLS_LISTNBOX;
			x = RELATIVE_X(DIALOG_PADDING);
			y = RELATIVE_Y(8 + DIALOG_PADDING);
			w = SCALE_X(DIALOG_W - DIALOG_PADDING * 2);
			h = SCALE_Y(DIALOG_H - 8 - 8 - DIALOG_PADDING * 2);

			columns[] = {0, 0.25, 0.375, 0.5, 0.75};
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

		class Header: MAV_ctrlStaticTitle {
			x = RELATIVE_X(DIALOG_PADDING * 2 + BUTTON_WIDTH);
			y = RELATIVE_Y(DIALOG_H - DIALOG_PADDING - BUTTON_HEIGHT);
			w = SCALE_X(5);
			h = SCALE_Y(5);
			moving = 0;
		};

		class RefreshIcon: MAV_ctrlStaticPictureKeepAspect {
			x = RELATIVE_X(DIALOG_PADDING * 2 + BUTTON_WIDTH + 0.5);
			y = RELATIVE_Y(DIALOG_H - DIALOG_PADDING - BUTTON_HEIGHT + 0.5);
			w = SCALE_X(5 - 1);
			h = SCALE_Y(5 - 1);
			text = "maverick\taxis\data\images\refresh.paa";
		};

		class RefreshButton: MAV_ctrlButton {
			#define BUTTON_HEIGHT 5
			#define BUTTON_WIDTH 30

			idc = MAV_IDC_RSCDISPLAYTAXICALLS_REFRESHBTN;
			x = RELATIVE_X(DIALOG_PADDING * 2 + BUTTON_WIDTH + 5);
			y = RELATIVE_Y(DIALOG_H - DIALOG_PADDING - BUTTON_HEIGHT);
			w = SCALE_X(BUTTON_WIDTH);
			h = SCALE_Y(BUTTON_HEIGHT);
			text = "Refresh";
			//text = "\maverick\taxis\data\images\refresh.paa";
		};

		class AcceptButton: MAV_ctrlButton {
			#define BUTTON_HEIGHT 5
			#define BUTTON_WIDTH 40

			idc = MAV_IDC_RSCDISPLAYTAXICALLS_ACCEPTCALL;
			x = RELATIVE_X(DIALOG_W - DIALOG_PADDING - BUTTON_WIDTH);
			y = RELATIVE_Y(DIALOG_H - DIALOG_PADDING - BUTTON_HEIGHT);
			w = SCALE_X(BUTTON_WIDTH);
			h = SCALE_Y(BUTTON_HEIGHT);
			text = dialogTaxiAcceptCall;
			show = 0;
		};

		class CancelButton: MAV_ctrlButton {
			#define BUTTON_HEIGHT 5
			#define BUTTON_WIDTH 40

			idc = MAV_IDC_RSCDISPLAYTAXICALLS_CANCELCALL;
			x = RELATIVE_X(DIALOG_W - DIALOG_PADDING - BUTTON_WIDTH);
			y = RELATIVE_Y(DIALOG_H - DIALOG_PADDING - BUTTON_HEIGHT);
			w = SCALE_X(BUTTON_WIDTH);
			h = SCALE_Y(BUTTON_HEIGHT);
			text = dialogTaxiCancelCall;
			show = 0;
		};

		class GoOnDutyButton: MAV_ctrlButton {
			#define BUTTON_HEIGHT 5

			idc = MAV_IDC_RSCDISPLAYTAXICALLS_GOONDUTYBTN;
			x = RELATIVE_X(DIALOG_W - DIALOG_PADDING * 2 - 40 - 30);
			y = RELATIVE_Y(DIALOG_H - DIALOG_PADDING - BUTTON_HEIGHT);
			w = SCALE_X(30);
			h = SCALE_Y(BUTTON_HEIGHT);
			text = dialogTaxiGoOnDuty;
			show = 0;
		};

		class GoOffDutyButton: MAV_ctrlButton {
			#define BUTTON_HEIGHT 5

			idc = MAV_IDC_RSCDISPLAYTAXICALLS_GOOFFDUTYBTN;
			x = RELATIVE_X(DIALOG_W - DIALOG_PADDING * 2 - 40 - 30);
			y = RELATIVE_Y(DIALOG_H - DIALOG_PADDING - BUTTON_HEIGHT);
			w = SCALE_X(30);
			h = SCALE_Y(BUTTON_HEIGHT);
			text = dialogTaxiGoOffDuty;
			show = 0;
		};
	};
};