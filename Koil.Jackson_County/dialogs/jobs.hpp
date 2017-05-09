class job_update {
	idd = 9999;
	name= "job_update";
	movingEnable = 0;
	enableSimulation = 1;

	onLoad = "[player] spawn client_fnc_startjob;";

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
			text = "\np_dialogs1\Images\CentreLinkMenu.paa";
			x = 0.277722 * safezoneW + safezoneX;
			y = 0.104079 * safezoneH + safezoneY;
			w = 0.444557 * safezoneW;
			h = 0.758849 * safezoneH;
		};  



		class JobList : client_RscListBox 
		{
			idc = 9001;
			text = "Connecting to Job Search..";
			sizeEx = 0.05;
			x = 0.339114 * safezoneW + safezoneX;
			y = 0.282244 * safezoneH + safezoneY;
			w = 0.32168 * safezoneW;
			h = 0.402581 * safezoneH;
		};


		class ChooseJobOption : HideButton {
			idc = 9995;
			text = "";
			onButtonClick = "[] spawn client_fnc_selectJob;";
			x = 0.404632 * safezoneW + safezoneX;
			y = 0.69972 * safezoneH + safezoneY;
			w = 0.0889114 * safezoneW;
			h = 0.0483904 * safezoneH;
		};	

		class CloseOption : HideButton {
			idc = 9996;
			text = "";
			onButtonClick = "closedialog 0";
			x = 0.506353 * safezoneW + safezoneX;
			y = 0.700159 * safezoneH + safezoneY;
			w = 0.0889114 * safezoneW;
			h = 0.0483904 * safezoneH;
		};	
	};
};
