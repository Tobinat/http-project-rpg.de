



class racetimes {
	idd = 9999;
	name= "racetimes";
	onLoad = "[] spawn client_fnc_racetimes";
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
			text = "\np_dialogs1\Images\laptime.paa";
			x = 0.275605 * safezoneW + safezoneX;
			y = 0.126074 * safezoneH + safezoneY;
			w = 0.447732 * safezoneW;
			h = 0.747851 * safezoneH;
		};  


		class timesList : RscListbox
		{
			idc = 9001;
			text = "";
			sizeEx = 0.05;
			x = 0.331121 * safezoneW + safezoneX;
			y = 0.293241 * safezoneH + safezoneY;
			w = 0.168 * safezoneW;
			h = 0.343181 * safezoneH;
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





class fillvehicle
{
	idd = 1013;
	class controls 
	{

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
			text = "\np_dialogs1\Images\GasMenu.paa";
			x = 0.279839 * safezoneW + safezoneX;
			y = 0.128274 * safezoneH + safezoneY;
			w = 0.440323 * safezoneW;
			h = 0.743452 * safezoneH;
		};  


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
		
		class RscListbox_1500: RscListbox
		{
			idc = 1500;
			x = 0.329209 * safezoneW + safezoneX;
			y = 0.26373 * safezoneH + safezoneY;
			w = 0.341782 * safezoneW;
			h = 0.373781 * safezoneH;
		};

		class RscButton_1600: HideButton
		{
			idc = 1600;
			text = "Fill Vehicle"; //--- ToDo: Localize;
			x = 0.401967 * safezoneW + safezoneX;
			y = 0.703346 * safezoneH + safezoneY;
			w = 0.0899712 * safezoneW;
			h = 0.0483903 * safezoneH;
			action = [] spawn Client_fnc_confirmfillvehicle;
		};

		class Close: HideButton
		{
			idc = 1601;
			x = 0.507008 * safezoneW + safezoneX;
			y = 0.703348 * safezoneH + safezoneY;
			w = 0.0899712 * safezoneW;
			h = 0.0483903 * safezoneH;
			action = closedialog 0;
		};
	};
};


class garage2
{
	idd = 1013;
	class controls 
	{

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
			text = "\np_dialogs1\Images\GarageMenu.paa";
			x = 0.279839 * safezoneW + safezoneX;
			y = 0.128274 * safezoneH + safezoneY;
			w = 0.440323 * safezoneW;
			h = 0.743452 * safezoneH;
		};  


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
		class RscListbox_1500: RscListbox
		{
			idc = 1500;
			x = 0.329209 * safezoneW + safezoneX;
			y = 0.26373 * safezoneH + safezoneY;
			w = 0.341782 * safezoneW;
			h = 0.373781 * safezoneH;
		};

		class RscButton_1600: HideButton
		{
			idc = 1600;
			text = "Fetch Car"; //--- ToDo: Localize;
			x = 0.315 * safezoneW + safezoneX;
			y = 0.654 * safezoneH + safezoneY;
			w = 0.09 * safezoneW;
			h = 0.046 * safezoneH;
			action = [] spawn Client_fnc_fetchCar2;
		};
		class Close: HideButton
		{
			idc = 1601;
			x = 0.5964 * safezoneW + safezoneX;
			y = 0.654 * safezoneH + safezoneY;
			w = 0.09 * safezoneW;
			h = 0.046 * safezoneH;
			action = closedialog 0;
		};
	};
};

class garage3
{
	idd = 1013;
	class controls 
	{

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
			text = "\np_dialogs1\Images\GarageMenu.paa";
			x = 0.279839 * safezoneW + safezoneX;
			y = 0.128274 * safezoneH + safezoneY;
			w = 0.440323 * safezoneW;
			h = 0.743452 * safezoneH;
		};  


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
		class RscListbox_1500: RscListbox
		{
			idc = 1500;
			x = 0.329209 * safezoneW + safezoneX;
			y = 0.26373 * safezoneH + safezoneY;
			w = 0.341782 * safezoneW;
			h = 0.373781 * safezoneH;
		};

		class RscButton_1600: HideButton
		{
			idc = 1600;
			text = "Fetch Work Car"; //--- ToDo: Localize;
			x = 0.315 * safezoneW + safezoneX;
			y = 0.654 * safezoneH + safezoneY;
			w = 0.09 * safezoneW;
			h = 0.046 * safezoneH;
			action = [1] spawn Client_fnc_fetchCar;
		};
		class Close: HideButton
		{
			idc = 1601;
			x = 0.5964 * safezoneW + safezoneX;
			y = 0.654 * safezoneH + safezoneY;
			w = 0.09 * safezoneW;
			h = 0.046 * safezoneH;
			action = closedialog 0;
		};
	};
};



class garage
{
	idd = 1013;
	class controls 
	{

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
			text = "\np_dialogs1\Images\GarageMenu.paa";
			x = 0.279839 * safezoneW + safezoneX;
			y = 0.128274 * safezoneH + safezoneY;
			w = 0.440323 * safezoneW;
			h = 0.743452 * safezoneH;
		};  


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
		class RscListbox_1500: RscListbox
		{
			idc = 1500;
			x = 0.329209 * safezoneW + safezoneX;
			y = 0.26373 * safezoneH + safezoneY;
			w = 0.341782 * safezoneW;
			h = 0.373781 * safezoneH;
		};

		class RscButton_1600: HideButton
		{
			idc = 1600;
			text = "Fetch Car"; //--- ToDo: Localize;
			x = 0.315 * safezoneW + safezoneX;
			y = 0.654 * safezoneH + safezoneY;
			w = 0.09 * safezoneW;
			h = 0.046 * safezoneH;
			action = [0] spawn Client_fnc_fetchCar;
		};
		class Close: HideButton
		{
			idc = 1601;
			x = 0.5964 * safezoneW + safezoneX;
			y = 0.654 * safezoneH + safezoneY;
			w = 0.09 * safezoneW;
			h = 0.046 * safezoneH;
			action = closedialog 0;
		};
	};
};




class EnterLicense {
	idd = 9999;
	name= "EnterLicense";
	movingEnable = 0;
	enableSimulation = 1;

	class controls {

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
			text = "\np_dialogs1\Images\EnterLicense.paa";
			x = 0.275605 * safezoneW + safezoneX;
			y = 0.126074 * safezoneH + safezoneY;
			w = 0.447732 * safezoneW;
			h = 0.747851 * safezoneH;
		};  

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

		class LicenseEntry : RscEdit {
			idc = 9993;
			text = "1234567";
			sizeEx = 0.05;
			x = 0.34 * safezoneW + safezoneX;
			y = 0.652 * safezoneH + safezoneY;
			w = 0.0867957 * safezoneW;
			h = 0.0231907 * safezoneH;
		};	
		class PurchaseOption : HideButton {
			idc = 9995;
			text = "Purchase";
			onButtonClick = "[] spawn client_fnc_processPlates";
			x = 0.40229 * safezoneW + safezoneX;
			y = 0.7 * safezoneH + safezoneY;
			w = 0.0878542 * safezoneW;
			h = 0.023 * safezoneH;
		};

		class CloseOption : HideButton {
			idc = 9996;
			text = "Close";
			onButtonClick = "closedialog 0;";
			x = 0.40229 * safezoneW + safezoneX;
			y = 0.729497 * safezoneH + safezoneY;
			w = 0.0878542 * safezoneW;
			h = 0.023 * safezoneH;
		};
	};
};



class garageplates
{
	idd = 1013;
	class controls 
	{

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
			text = "\np_dialogs1\Images\GaragePlates.paa";
			x = 0.279839 * safezoneW + safezoneX;
			y = 0.128274 * safezoneH + safezoneY;
			w = 0.440323 * safezoneW;
			h = 0.743452 * safezoneH;
		};  


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
		class RscListbox_1500: RscListbox
		{
			idc = 1500;
			x = 0.329209 * safezoneW + safezoneX;
			y = 0.26373 * safezoneH + safezoneY;
			w = 0.341782 * safezoneW;
			h = 0.373781 * safezoneH;
		};

		class RscButton_1600: HideButton
		{
			idc = 1600;
			text = "Fetch Car"; //--- ToDo: Localize;
			x = 0.315 * safezoneW + safezoneX;
			y = 0.654 * safezoneH + safezoneY;
			w = 0.09 * safezoneW;
			h = 0.046 * safezoneH;
			action = [0] spawn Client_fnc_fetchCar;
		};

		class RscButton_1601: HideButton
		{
			idc = 1601;
			text = "Change Plates"; //--- ToDo: Localize;
			x = 0.46 * safezoneW + safezoneX;
			y = 0.654 * safezoneH + safezoneY;
			w = 0.09 * safezoneW;
			h = 0.046 * safezoneH;
			action = [] spawn Client_fnc_changePlates;
		};

		class Close: HideButton
		{
			idc = 1602;
			x = 0.5964 * safezoneW + safezoneX;
			y = 0.654 * safezoneH + safezoneY;
			w = 0.09 * safezoneW;
			h = 0.046 * safezoneH;
			action = closedialog 0;
		};
	};
};