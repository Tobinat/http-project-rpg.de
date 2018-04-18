class jailprocess {
	idd = 1111;
	name= "jailprocess";
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
			text = "\np_dialogs1\Images\wantedMenu.paa";
			x = 0.275605 * safezoneW + safezoneX;
			y = 0.126074 * safezoneH + safezoneY;
			w = 0.447732 * safezoneW;
			h = 0.747851 * safezoneH;
		}; 


		class HideButton
		{
		    colorBorder[] = {0,0,0,0.35};
		    access = 0;
		    type = CT_BUTTON;
		    text = "";
		    colorText[] = {1, 1, 1, 0.7};
		    colorActive[] = {1, 1, 1, 0.7};
		    colorTextSelect[] = {1, 1, 1, 0.7};
		    colorDisabled[] = {1, 1, 1, 0.7};
		    colorBackground[] = {0, 0, 0, 0.6};
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



		class Reason : Client_RscEdit 
		{
			idc = 1111;
			text = "Reason";
			autocomplete = "";
			sizeEx = 0.05;
			x = 0.25; 
			y = 0.1;
			w = 0.5; 
			h = 0.1;
		};

		class Length : Client_RscEdit 
		{
			idc = 2222;
			text = "0";
			autocomplete = "";
			sizeEx = 0.030;
			x = 0.25; 
			y = 0.3;
			w = 0.1; 
			h = 0.075;
		};

		class HomeOption : hidebutton {
			idc = 1115;
			text = "Process";
			onButtonClick = "[] call client_fnc_processjail;";
			x = 0.55;
			y = 0.45;
			w = 0.2;
			h = 0.05;
		};	
	};
};