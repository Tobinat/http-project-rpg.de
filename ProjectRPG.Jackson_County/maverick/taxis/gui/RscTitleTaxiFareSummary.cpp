/*--------------------------------------------------------------------------
    Author:		Maverick Applications
    Website:	https://maverick-applications.com

    You're not allowed to use this file without permission from the author!
---------------------------------------------------------------------------*/

class RscTitleTaxiFareSummary {
	idd = MAV_IDD_RSCTITLETAXIFARESUMMARY;
	onLoad = "['taxis\gui', 'RscTitleTaxiFareSummary', _this, 'RscTitleTaxiFareSummary'] call MAV_gui_fnc_initLayer";
	duration = 1e+030;

	#define DIALOG_W 120
	#define DIALOG_H 60
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
			text = dialogFareSummaryTitle;
			moving = 0;
		};
	};

	class Controls {
		#define FOOTER_HEIGHT 15

		class MainText: MAV_ctrlStructuredText {
			idc = MAV_IDC_RSCTITLETAXIFARESUMMARY_INFOTEXT;
			x = RELATIVE_X(5);
			y = RELATIVE_Y(6 + DIALOG_PADDING);
			w = SCALE_X(DIALOG_W - 10);
			h = SCALE_Y(DIALOG_H - FOOTER_HEIGHT - 6 - DIALOG_PADDING * 2);
		};

		// Footer
		class Footer: MAV_ctrlStaticFooter {
			x = RELATIVE_X(0);
			y = RELATIVE_Y(DIALOG_H - FOOTER_HEIGHT);
			w = SCALE_X(DIALOG_W);
			h = SCALE_Y(FOOTER_HEIGHT);
		};

		class FooterPriceText: MAV_ctrlStatic {
			idc = MAV_IDC_RSCTITLETEXTFARESUMMARY_TOTALPRICE;
			x = RELATIVE_X(0);
			y = RELATIVE_Y(DIALOG_H - FOOTER_HEIGHT);
			w = SCALE_X(DIALOG_W - 5);
			h = SCALE_Y(FOOTER_HEIGHT);
			style = ST_RIGHT;
			text = "";
			size = 12 * GRID_H;
			sizeEx = 12 * GRID_H;
			shadow = 2;
		};

		class FooterCloseText: MAV_ctrlStatic {
			x = RELATIVE_X(DIALOG_PADDING);
			y = RELATIVE_Y(DIALOG_H - SIZE_M - DIALOG_PADDING);
			w = SCALE_X(DIALOG_W);
			h = SCALE_Y(SIZE_M);
			text = dialogSummaryClosePromt;
			shadow = 0;
		};
	};
};