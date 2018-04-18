class client_findMail {
	idd = 1111;
	name= "client_findMail";
	movingEnable = 0;
	enableSimulation = 1;
	onLoad = "[] spawn client_fnc_findPlayersALL;";

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
			text = "\np_dialogs1\Images\SendMailMenu.paa";
			x = 0.271373 * safezoneW + safezoneX;
			y = 0.0996764 * safezoneH + safezoneY;
			w = 0.455142 * safezoneW;
			h = 0.791843 * safezoneH;
		};  


		class CraftList
		{
			style = 16;

			type = 5;

			font = "PuristaMedium";
			colorSelect[] = {1, 1, 1, 1};
			colorText[] = {1, 1, 1, 1};
			colorBackground[] = {0.28,0.28,0.28,0.58};
			colorSelect2[] = {1, 1, 1, 1};
			colorSelectBackground[] = {0.95, 0.95, 0.95, 0.5};
			colorSelectBackground2[] = {1, 1, 1, 0.5};
			colorScrollbar[] = {0.2, 0.2, 0.2, 1};
			colorPicture[] = {1,1,1,1};
			colorPictureSelected[] = {1,1,1,1};
			colorPictureDisabled[] = {1,1,1,1};
			arrowFull = "\A3\ui_f\data\gui\cfg\scrollbar\arrowFull_ca.paa";
			arrowEmpty = "\A3\ui_f\data\gui\cfg\scrollbar\arrowEmpty_ca.paa";
			wholeHeight = 0.45;
			rowHeight = 0.04;
			color[] = {0.7, 0.7, 0.7, 1};
			colorActive[] = {0,0,0,1};
			colorDisabled[] = {0,0,0,0.3};
			soundSelect[] = {"",0.1,1};
			soundExpand[] = {"",0.1,1};
			soundCollapse[] = {"",0.1,1};
			maxHistoryDelay = 1;
			autoScrollSpeed = -1;
			autoScrollDelay = 5;
			autoScrollRewind = 0;
			tooltipColorText[] = {1,1,1,1};
			tooltipColorBox[] = {1,1,1,1};
			tooltipColorShade[] = {0,0,0,0.65};
			class ListScrollBar: client_RscScrollBar
			{
				color[] = {1,1,1,1};
				autoScrollEnabled = 1;
			};

			idc = 1113;
			text = "";
			sizeEx = 0.05;
			x = 0.302 * safezoneW + safezoneX;
			y = 0.288 * safezoneH + safezoneY;
			w = 0.129122 * safezoneW;
			h = 0.398181 * safezoneH;
		};


		class MessageText : Client_RscEdit 
		{
			idc = 9331;
			text = "Enter a Message";
			autocomplete = "";
			x = 0.447078 * safezoneW + safezoneX;
			y = 0.288841 * safezoneH + safezoneY;
			w = 0.234922 * safezoneW;
			h = 0.391581 * safezoneH;
		};


		class sendOption : HideButton {
			idc = 1115;
			text = "Send";
			onButtonClick = "[] spawn client_fnc_chooseUserMail;";
			x = 0.401967 * safezoneW + safezoneX;
			y = 0.703346 * safezoneH + safezoneY;
			w = 0.0899712 * safezoneW;
			h = 0.0483903 * safezoneH;
		};	

		class CloseOption : HideButton {
			idc = 1116;
			text = "Close";
			onButtonClick = "closedialog 0;";
			x = 0.507008 * safezoneW + safezoneX;
			y = 0.703348 * safezoneH + safezoneY;
			w = 0.0899712 * safezoneW;
			h = 0.0483903 * safezoneH;
		};	
	};
};





class openMail {
	idd = 9999;
	name= "openMail";
	movingEnable = 0;
	enableSimulation = 1;

	class controlsBackground {
	
		class MainBackground: client_RscText {
			colorBackground[] = {0.1058823529411765,0.1058823529411765,0.1058823529411765,0.8};
			idc = -1;
			x = 0.05; 
			y = 0.05;
			w = 0.8; 
			h = 0.8;
		};
	};

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
			text = "\np_dialogs1\Images\LatestMailMenu.paa";
			x = 0.271373 * safezoneW + safezoneX;
			y = 0.0996764 * safezoneH + safezoneY;
			w = 0.455142 * safezoneW;
			h = 0.791843 * safezoneH;
		};  
		
		class SelectInformation
		{
			idc = 9110;
			type=CT_STRUCTURED_TEXT;
			style=ST_LEFT;
			shadow=0;
			fadein=1;
		  	fadeout=1;
			font="PuristaLight";
			text = "No mail selected!";
			size = 0.035;
			sizeEx = 0.05;
			x = 0.517817 * safezoneW + safezoneX;
			y = 0.28933 * safezoneH + safezoneY;
			w = 0.164036 * safezoneW;
			h = 0.391581 * safezoneH;
		};

		class List : client_RscListBox 
		{
			idc = 9001;
			text = "";
			sizeEx = 0.05;
			onLBSelChanged = "[] spawn client_fnc_openMail;";
			x = 0.315826 * safezoneW + safezoneX;
			y = 0.288839 * safezoneH + safezoneY;
			w = 0.164036 * safezoneW;
			h = 0.391581 * safezoneH;
		};

		class opOption : HideButton {
			idc = 9997;
			text = "";
			onButtonClick = "closedialog 0; createdialog ""client_findMail""";
			x = 0.401967 * safezoneW + safezoneX;
			y = 0.703346 * safezoneH + safezoneY;
			w = 0.0899712 * safezoneW;
			h = 0.0483903 * safezoneH;
		};	

		class CloseOption : HideButton {
			idc = 9996;
			text = "";
			onButtonClick = "closedialog 0";
			x = 0.506091 * safezoneW + safezoneX;
			y = 0.703346 * safezoneH + safezoneY;
			w = 0.0899712 * safezoneW;
			h = 0.0483903 * safezoneH;
		};	
	};
};