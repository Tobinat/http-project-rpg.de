
class yn_Menu {

	idd = 9999;
	name= "yn_menu";
	movingEnable = 0;
	enableSimulation = 1;

	class controls {

		class QuestionToAsk : client_RscStructuredText
		{
			type = 13;
			style = 0;
			text = "You have been summoned for Jury Duty - do you wish to accept? Payment is $2000.";
			size = "(			(			(			((safezoneW / safezoneH) min 1.2) / 1.2) / 25) * 1)";
			colorText[] = {1, 1, 1, 1.0};
			colorBackground[]={0,0,0,0.5};
			
			class Attributes {
				font = "PuristaMedium";
				color = "#ffffff";
				align = "center";
				shadow = 1;
			};			

			idc = 9339;
			sizeEx = 0.030;
			x = 0.275605 * safezoneW + safezoneX;
			y = 0.456074 * safezoneH + safezoneY;
			w = 0.447732 * safezoneW;
			h = 0.047851 * safezoneH;

		};

		class YESOption : RSCButton {

			idc = 9995;
			text = "YES";
			onButtonClick = "closedialog 0; JuryDuty = true;"; 
			x = 0.40029 * safezoneW + safezoneX;
			y = 0.706497 * safezoneH + safezoneY;
			w = 0.0867957 * safezoneW;
			h = 0.0461907 * safezoneH;

		};	

		class noOption : RSCButton {

			idc = 9996;
			text = "NO";
			onButtonClick = "closedialog 0; JuryDuty = false;";
			x = 0.511518 * safezoneW + safezoneX;
			y = 0.706043 * safezoneH + safezoneY;
			w = 0.0878542 * safezoneW;
			h = 0.0461907 * safezoneH;

		};	

	};

};



class revoke_Menu {
	idd = 9999;
	name= "revoke_menu";
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

		class LicenseList : client_RscListBox 
		{
			idc = 9001;
			text = "";
			sizeEx = 0.05;
			onLBSelChanged = "";
			x = 0.311121 * safezoneW + safezoneX;
			y = 0.293241 * safezoneH + safezoneY;
			w = 0.178 * safezoneW;
			h = 0.343181 * safezoneH;
		};

		class RemoveOption : HideButton {
			idc = 9995;
			text = "Revoke";
			onButtonClick = "[] spawn client_fnc_revoke;";
			x = 0.40229 * safezoneW + safezoneX;
			y = 0.659497 * safezoneH + safezoneY;
			w = 0.0878542 * safezoneW;
			h = 0.023 * safezoneH;
		};

		class CloseOption : HideButton {
			idc = 9996;
			text = "Close";
			onButtonClick = "closedialog 0;";
			x = 0.40229 * safezoneW + safezoneX;
			y = 0.679497 * safezoneH + safezoneY;
			w = 0.0878542 * safezoneW;
			h = 0.023 * safezoneH;
		};
	};
};



