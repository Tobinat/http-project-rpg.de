class giveCash
{
	idd = 1010;
	class controls 
	{
		class RscFrame_1800: RscText
		{
			idc = 1800;
			x = 0.40375 * safezoneW + safezoneX;
			y = 0.335064 * safezoneH + safezoneY;
			w = 0.1925 * safezoneW;
			h = 0.30788 * safezoneH;
			colorBackground[] = {0,0,0,0.8};
		};
		class RscText_1000: RscText
		{
			idc = 1000;
			text = "Amount"; //--- ToDo: Localize;
			x = 0.4175 * safezoneW + safezoneX;
			y = 0.34606 * safezoneH + safezoneY;
			w = 0.09625 * safezoneW;
			h = 0.0329871 * safezoneH;
		};
		class RscButton_1600: RscButton
		{
			idc = 1600;
			text = "Give"; //--- ToDo: Localize;
			x = 0.534375 * safezoneW + safezoneX;
			y = 0.57697 * safezoneH + safezoneY;
			w = 0.055 * safezoneW;
			h = 0.0549786 * safezoneH;
			action = [currentcursortarget, player]call Client_fnc_giveCashSubmit;
		};
		class RscEdit_1401: RscEdit
		{
			idc = 1401;
			x = 0.4175 * safezoneW + safezoneX;
			y = 0.390043 * safezoneH + safezoneY;
			w = 0.165 * safezoneW;
			h = 0.0329871 * safezoneH;
		};
	};
};


class loanMenu {
	idd = 9999;
	name= "loanmenu";
	movingEnable = 0;
	enableSimulation = 1;

	class controls {

		class HideButton
		{
		    colorBorder[] = {0,0,0,0.05};
		    access = 0;
		    type = CT_BUTTON;
		    text = "";
		    colorText[] = {1, 1, 1, 0};
		    colorActive[] = {1, 1, 1, 0};
		    colorTextSelect[] = {1, 1, 1, 0};
		    colorDisabled[] = {1, 1, 1, 0};
		    colorBackground[] = {0, 0, 0, 0};
		    colorBackgroundActive[] = {"(profilenamespace getvariable ['GUI_BCG_RGB_R',0.69])", "(profilenamespace getvariable ['GUI_BCG_RGB_G',0.75])", "(profilenamespace getvariable ['GUI_BCG_RGB_B',0.5])", 0.05};
		    colorBackgroundDisabled[] = {0, 0, 0, 0.5};
		    colorFocused[] = {0, 0, 0, 0};
		    colorShadow[] = {0, 0, 0, 0};
		    soundEnter[] = {"\ca\ui\data\sound\onover",0.09,1};
		    soundPush[] = {"\ca\ui\data\sound\new1",0,0};
		    soundClick[] = {"\ca\ui\data\sound\onclick",0.07,1};
		    soundEscape[] = {"\ca\ui\data\sound\onescape",0.09,1};
		    style = 2;
		    x = 0;
		    y = 0;
		    w = 0.055589;
		    h = 0.039216;
		    shadow = 0;
		    font = "PuristaMedium";
		    sizeEx = 0.02921;
		    offsetX = 0.003;
		    offsetY = 0.003;
		    offsetPressedX = 0.002;
		    offsetPressedY = 0.002;
		    borderSize = 0.01;
		};

		class BASE
		{    
			shadow = 0;
			type = 0;
			style = 2096;
			sizeEx = 1;
			font = "PuristaMedium";
			colorBackground[] = {};
			colorText[] = {};
			tooltipColorText[] = {1,1,1,1};
			tooltipColorBox[] = {1,1,1,1};
			tooltipColorShade[] = {0,0,0,0.65};
			idc = 191911;
			text = "\np_dialogs1\Images\loanMenu.paa";
			x = 0.275605 * safezoneW + safezoneX;
			y = 0.126074 * safezoneH + safezoneY;
			w = 0.447732 * safezoneW;
			h = 0.747851 * safezoneH;
		};  


		class VoteList : client_RscListBox 
		{
			idc = 9001;
			text = "";
			sizeEx = 0.05;
			x = 0.331121 * safezoneW + safezoneX;
			y = 0.293241 * safezoneH + safezoneY;
			w = 0.168 * safezoneW;
			h = 0.343181 * safezoneH;
		};

		class LockVoteOption : client_RscButtonMenu {
			idc = 9995;
			text = "Accept";
			onButtonClick = "[] spawn client_fnc_acceptLoan;";
			x = 0.40029 * safezoneW + safezoneX;
			y = 0.706497 * safezoneH + safezoneY;
			w = 0.0867957 * safezoneW;
			h = 0.0461907 * safezoneH;
		};	

		class CloseOption : client_RscButtonMenu {
			idc = 9996;
			text = "Decline";
			onButtonClick = "closedialog 0;";
			x = 0.511518 * safezoneW + safezoneX;
			y = 0.706043 * safezoneH + safezoneY;
			w = 0.0878542 * safezoneW;
			h = 0.0461907 * safezoneH;
		};	
	};
};


class LoanShark {
	idd = 9999;
	name= "LoanShark";
	movingEnable = 0;
	enableSimulation = 1;

	class controls {

		class HideButton
		{
		    colorBorder[] = {0,0,0,0.05};
		    access = 0;
		    type = CT_BUTTON;
		    text = "";
		    colorText[] = {1, 1, 1, 0};
		    colorActive[] = {1, 1, 1, 0};
		    colorTextSelect[] = {1, 1, 1, 0};
		    colorDisabled[] = {1, 1, 1, 0};
		    colorBackground[] = {0, 0, 0, 0};
		    colorBackgroundActive[] = {"(profilenamespace getvariable ['GUI_BCG_RGB_R',0.69])", "(profilenamespace getvariable ['GUI_BCG_RGB_G',0.75])", "(profilenamespace getvariable ['GUI_BCG_RGB_B',0.5])", 0.05};
		    colorBackgroundDisabled[] = {0, 0, 0, 0.5};
		    colorFocused[] = {0, 0, 0, 0};
		    colorShadow[] = {0, 0, 0, 0};
		    soundEnter[] = {"\ca\ui\data\sound\onover",0.09,1};
		    soundPush[] = {"\ca\ui\data\sound\new1",0,0};
		    soundClick[] = {"\ca\ui\data\sound\onclick",0.07,1};
		    soundEscape[] = {"\ca\ui\data\sound\onescape",0.09,1};
		    style = 2;
		    x = 0;
		    y = 0;
		    w = 0.055589;
		    h = 0.039216;
		    shadow = 0;
		    font = "PuristaMedium";
		    sizeEx = 0.02921;
		    offsetX = 0.003;
		    offsetY = 0.003;
		    offsetPressedX = 0.002;
		    offsetPressedY = 0.002;
		    borderSize = 0.01;
		};

		class BASE
		{    
			shadow = 0;
			type = 0;
			style = 2096;
			sizeEx = 1;
			font = "PuristaMedium";
			colorBackground[] = {};
			colorText[] = {};
			tooltipColorText[] = {1,1,1,1};
			tooltipColorBox[] = {1,1,1,1};
			tooltipColorShade[] = {0,0,0,0.65};
			idc = 191911;
			text = "\np_dialogs1\Images\LoanShark.paa";
			x = 0.275605 * safezoneW + safezoneX;
			y = 0.126074 * safezoneH + safezoneY;
			w = 0.447732 * safezoneW;
			h = 0.747851 * safezoneH;
		};  

		class ExtraInfo: client_RscStructuredText
		{
			idc = 1001;
			text = "Loan Information"; //--- ToDo: Localize;
			
			colorBackground[] = {0, 0, 0, 0.4};
			x = 0.5 * safezoneW + safezoneX;
			y = 0.293241 * safezoneH + safezoneY;
			w = 0.167653 * safezoneW;
			h = 0.343181 * safezoneH;
		};

		class owedList : RscListbox
		{
			idc = 9001;
			text = "";
			sizeEx = 0.05;
			onLBSelChanged = "[] spawn client_fnc_updateLoanMenu;";
			x = 0.331121 * safezoneW + safezoneX;
			y = 0.293241 * safezoneH + safezoneY;
			w = 0.167653 * safezoneW;
			h = 0.343181 * safezoneH;
		};

		class newOwed : RscEdit {
			idc = 9993;
			text = "0";
			sizeEx = 0.05;
			x = 0.503178 * safezoneW + safezoneX;
			y = 0.656167 * safezoneH + safezoneY;
			w = 0.0603332 * safezoneW;
			h = 0.0307935 * safezoneH;
		};	

		class RscButton_1600: HideButton
		{
			idc = 1600;
			text = "Set Money"; //--- ToDo: Localize;
			x = 0.40029 * safezoneW + safezoneX;
			y = 0.706497 * safezoneH + safezoneY;
			w = 0.0867957 * safezoneW;
			h = 0.0461907 * safezoneH;
			action = [] spawn Client_fnc_setOwed;
		};

		class CloseOption : HideButton {
			idc = 9996;
			text = "";
			onButtonClick = "closedialog 0;";
			x = 0.511518 * safezoneW + safezoneX;
			y = 0.706043 * safezoneH + safezoneY;
			w = 0.0878542 * safezoneW;
			h = 0.0461907 * safezoneH;
		};	

	};
};


class giveLoan
{
	idd = 1010;
	class controls 
	{
		class RscFrame_1800: RscText
		{
			idc = 1800;
			x = 0.40375 * safezoneW + safezoneX;
			y = 0.335064 * safezoneH + safezoneY;
			w = 0.1925 * safezoneW;
			h = 0.30788 * safezoneH;
			colorBackground[] = {0,0,0,0.8};
		};



		class RscButton_1600: RscButton
		{
			idc = 1600;
			text = "Give"; //--- ToDo: Localize;
			x = 0.534375 * safezoneW + safezoneX;
			y = 0.64697 * safezoneH + safezoneY;
			w = 0.055 * safezoneW;
			h = 0.0549786 * safezoneH;
			action = [currentcursortarget, player] call Client_fnc_giveLoanSubmit;
		};


		class RscText_1000: RscText
		{
			idc = 1000;
			text = "Amount"; //--- ToDo: Localize;
			x = 0.4175 * safezoneW + safezoneX;
			y = 0.34606 * safezoneH + safezoneY;
			w = 0.09625 * safezoneW;
			h = 0.0329871 * safezoneH;
		};

		class RscEdit_1401: RscEdit
		{
			idc = 1401;
			x = 0.4175 * safezoneW + safezoneX;
			y = 0.390043 * safezoneH + safezoneY;
			w = 0.165 * safezoneW;
			h = 0.0329871 * safezoneH;
		};

		class RscText_1001: RscText
		{
			idc = 1001;
			text = "Reason"; //--- ToDo: Localize;
			x = 0.4175 * safezoneW + safezoneX;
			y = 0.44606 * safezoneH + safezoneY;
			w = 0.09625 * safezoneW;
			h = 0.0329871 * safezoneH;
		};

		class RscEdit_1402: RscEdit
		{
			idc = 1402;
			x = 0.4175 * safezoneW + safezoneX;
			y = 0.490043 * safezoneH + safezoneY;
			w = 0.165 * safezoneW;
			h = 0.0329871 * safezoneH;
		};

		class RscText_1002: RscText
		{
			idc = 1002;
			text = "Date Due"; //--- ToDo: Localize;
			x = 0.4175 * safezoneW + safezoneX;
			y = 0.54606 * safezoneH + safezoneY;
			w = 0.09625 * safezoneW;
			h = 0.0329871 * safezoneH;
		};

		class RscEdit_1403: RscEdit
		{
			idc = 1403;
			x = 0.4175 * safezoneW + safezoneX;
			y = 0.590043 * safezoneH + safezoneY;
			w = 0.165 * safezoneW;
			h = 0.0329871 * safezoneH;
		};


	};
};