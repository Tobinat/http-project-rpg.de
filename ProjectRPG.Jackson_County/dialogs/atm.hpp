class ATMmafia
{
	idd = 1015;
	onLoad = "[] spawn client_fnc_findplayersatm;";
	class controls 
	{


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
			text = "\np_dialogs1\Images\ATMMenu.paa";
			x = -0.25;
			y = -0.25;
			w = 1.5;
			h = 1.5;
		};  


		class RscText_1002: RscText
		{
			idc = 1002;
			text = ""; //--- ToDo: Localize; balance
			x = 0.17;
			y = 0.25;
			w = 0.09875 * safezoneW;
			h = 0.0329871 * safezoneH;
		};
		class RscText_1004: RscText
		{
			idc = 1004;
			text = ""; //--- ToDo: Localize; cash balance
			x = 0.17;
			y = 0.35;
			w = 0.09875 * safezoneW;
			h = 0.0329871 * safezoneH;
		};

		class RscEdit_1400: RscEdit
		{
			idc = 1400;
			text = ""; //--- ToDo: Localize; Transfer amount
			x = 0.56;
			y = 0.25;
			w = 0.09875 * safezoneW;
			h = 0.0329871 * safezoneH;
		};

		class PlayerListCombo : RscCombo
		{
			idc = 1111;
			text = "";
			sizeEx = 0.05;
			x = 0.56;
			y = 0.35;
			w = 0.09875 * safezoneW;
			h = 0.028 * safezoneH;
		};

		class RscButton_1600: HideButton
		{
			idc = 1600;
			text = ""; //--- ToDo: Localize;withdraw
			x = 0.172;
			y = 0.58;
			w = 0.09875 * safezoneW;
			h = 0.0329871 * safezoneH;
			action = [1]call Client_fnc_atmWithdraw;
		};
		class RscButton_1601: HideButton
		{
			idc = 1601;
			text = ""; //--- ToDo: Localize;deposit
			x = 0.17;
			y = 0.45;
			w = 0.09875 * safezoneW;
			h = 0.0329871 * safezoneH;
			action = [1]call Client_fnc_atmDeposit;
		};

		class RscButton_1602: HideButton
		{
			idc = 1602;
			text = ""; //--- ToDo: Localize; send money
			x = 0.17;
			y = 0.71;
			w = 0.09875 * safezoneW;
			h = 0.0329871 * safezoneH;
			action = [1]call Client_fnc_atmTransfer;
		};

		class kRscButton_1603: HideButton
		{
			idc = 1603;
			text = "Close"; //--- ToDo: Localize;
			x = 0.56;
			y = 0.71;
			w = 0.09875 * safezoneW;
			h = 0.0329871 * safezoneH;
			action = "closedialog 0";
		};


	};
};


class ATM
{
	idd = 1015;
	onLoad = "[] spawn client_fnc_findplayersatm;";
	class controls 
	{


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
			text = "\np_dialogs1\Images\ATMMenu.paa";
			x = -0.25;
			y = -0.25;
			w = 1.5;
			h = 1.5;
		};  


		class RscText_1002: RscText
		{
			idc = 1002;
			text = ""; //--- ToDo: Localize; balance
			x = 0.17;
			y = 0.25;
			w = 0.09875 * safezoneW;
			h = 0.0329871 * safezoneH;
		};
		class RscText_1004: RscText
		{
			idc = 1004;
			text = ""; //--- ToDo: Localize; cash balance
			x = 0.17;
			y = 0.35;
			w = 0.09875 * safezoneW;
			h = 0.0329871 * safezoneH;
		};

		class RscEdit_1400: RscEdit
		{
			idc = 1400;
			text = ""; //--- ToDo: Localize; Transfer amount
			x = 0.56;
			y = 0.25;
			w = 0.09875 * safezoneW;
			h = 0.0329871 * safezoneH;
		};

		class PlayerListCombo : RscCombo
		{
			idc = 1111;
			text = "";
			sizeEx = 0.05;
			x = 0.56;
			y = 0.35;
			w = 0.09875 * safezoneW;
			h = 0.028 * safezoneH;
		};

		class RscButton_1600: HideButton
		{
			idc = 1600;
			text = ""; //--- ToDo: Localize;withdraw
			x = 0.172;
			y = 0.58;
			w = 0.09875 * safezoneW;
			h = 0.0329871 * safezoneH;
			action = [0]call Client_fnc_atmWithdraw;
		};
		class RscButton_1601: HideButton
		{
			idc = 1601;
			text = ""; //--- ToDo: Localize;deposit
			x = 0.17;
			y = 0.45;
			w = 0.09875 * safezoneW;
			h = 0.0329871 * safezoneH;
			action = [0]call Client_fnc_atmDeposit;
		};

		class RscButton_1602: HideButton
		{
			idc = 1602;
			text = ""; //--- ToDo: Localize; send money
			x = 0.17;
			y = 0.71;
			w = 0.09875 * safezoneW;
			h = 0.0329871 * safezoneH;
			action = [0]call Client_fnc_atmTransfer;
		};

		class kRscButton_1603: HideButton
		{
			idc = 1603;
			text = "Close"; //--- ToDo: Localize;
			x = 0.56;
			y = 0.71;
			w = 0.09875 * safezoneW;
			h = 0.0329871 * safezoneH;
			action = "closedialog 0";
		};


	};
};