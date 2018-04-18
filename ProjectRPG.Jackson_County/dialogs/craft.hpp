class FindPlayer_Menu {
	idd = 1111;
	name= "client_craft";
	movingEnable = 0;
	enableSimulation = 1;
	onLoad = "[] spawn client_fnc_findPlayers;";

	class controlsBackground {
	
		class MainBackground: client_RscText {
			colorBackground[] = {0.1058823529411765,0.1058823529411765,0.1058823529411765,0.8};
			idc = -1;
			x = 0.05; 
			y = 0.05;
			w = 0.50; 
			h = 0.6;
		};
	};


	class controls {
		
		class Title : client_RscTitle {

			idc = 1112;
			text = "Select player to heal!";
			x = 0.05;
			y = 0.05;
			w = 0.6;
			h = (1 / 25);
		};
		

		class CraftList : client_RscListBox 
		{
			idc = 1113;
			text = "";
			sizeEx = 0.05;
			x = 0.10; 
			y = 0.10;
			w = 0.25; 
			h = 0.5;
		};

		class HomeOption : client_RscButtonMenu {
			idc = 1115;
			text = "Select";
			onButtonClick = "[] spawn client_fnc_chooseUser;";
			x = -0.06 + (6.25 / 40) + (1 / 250 / (safezoneW / safezoneH));
			y = 0.65;
			w = (6.25 / 40);
			h = (1 / 25);
		};	

		class CraftOption : client_RscButtonMenu {
			idc = 1116;
			text = "Close";
			onButtonClick = "closedialog 0;";
			x = -0.06 + (13.25 / 40) + (1 / 250 / (safezoneW / safezoneH));
			y = 0.65;
			w = (6.25 / 40);
			h = (1 / 25);
		};	
	};
};

class FindKeyPlayer_Menu {
	idd = 1111;
	name= "key_menu";
	movingEnable = 0;
	enableSimulation = 1;
	onLoad = "";

	class controlsBackground {
	
		class MainBackground: client_RscText {
			colorBackground[] = {0.1058823529411765,0.1058823529411765,0.1058823529411765,0.8};
			idc = -1;
			x = 0.05; 
			y = 0.05;
			w = 0.50; 
			h = 0.6;
		};
	};


	class controls {
		
		class Title : client_RscTitle {

			idc = 1112;
			text = "Select player to give keys!";
			x = 0.05;
			y = 0.05;
			w = 0.6;
			h = (1 / 25);
		};
		

		class CraftList : client_RscListBox 
		{
			idc = 1113;
			text = "";
			sizeEx = 0.05;
			x = 0.10; 
			y = 0.10;
			w = 0.25; 
			h = 0.5;
		};

		class HomeOption : client_RscButtonMenu {
			idc = 1115;
			text = "Select";
			onButtonClick = "[] spawn client_fnc_chooseKeyUser;";
			x = -0.06 + (6.25 / 40) + (1 / 250 / (safezoneW / safezoneH));
			y = 0.65;
			w = (6.25 / 40);
			h = (1 / 25);
		};	

		class CraftOption : client_RscButtonMenu {
			idc = 1116;
			text = "Close";
			onButtonClick = "closedialog 0;";
			x = -0.06 + (13.25 / 40) + (1 / 250 / (safezoneW / safezoneH));
			y = 0.65;
			w = (6.25 / 40);
			h = (1 / 25);
		};	
	};
};

class client_Craft_Menu {
	idd = 1111;
	name= "client_craft";
	movingEnable = 0;
	enableSimulation = 1;
	onLoad = "[""FRESH""] spawn client_fnc_craftMenu;";
	
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
			text = "\np_dialogs1\Images\CraftingMenu.paa";
			x = 0.271373 * safezoneW + safezoneX;
			y = 0.0996764 * safezoneH + safezoneY;
			w = 0.455142 * safezoneW;
			h = 0.791843 * safezoneH;
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

		
		class SelectInformation
		{
			idc = 1110;
			type=CT_STRUCTURED_TEXT;
			style=ST_LEFT;
			shadow=0;
			fadein=1;
		  	fadeout=1;
			font="PuristaLight";
			text = "Select an option for more information!";
			size = 0.035;
			sizeEx = 0.05;
			x = 0.521649 * safezoneW + safezoneX;
			y = 0.30169 * safezoneH + safezoneY;
			w = 0.14605 * safezoneW;
			h = 0.380581 * safezoneH;
		};

		class CraftList : client_RscListBox 
		{
			idc = 1113;
			text = "";
			sizeEx = 0.05;
			onLBSelChanged = "[""REFRESH""] spawn client_fnc_craftMenu;";
			x = 0.33173 * safezoneW + safezoneX;
			y = 0.301596 * safezoneH + safezoneY;
			w = 0.14605 * safezoneW;
			h = 0.380581 * safezoneH;
		};

		class HomeOption : HideButton {
			idc = 1115;
			onButtonClick = "[""FRESH""] spawn client_fnc_CraftMenu;";
			x = 0.485 * safezoneW + safezoneX;
			y = 0.65 * safezoneH + safezoneY;
			w = 0.03 * safezoneW;
			h = 0.038 * safezoneH;
		};	

		class ProcessOption : HideButton {
			idc = 1117;
			text = "Open";
			onButtonClick = "[""MENU""] spawn client_fnc_CraftMenu; [""REFRESH""] spawn client_fnc_craftMenu;";
			x = 0.311275 * safezoneW + safezoneX;
			y = 0.70016 * safezoneH + safezoneY;
			w = 0.0899698 * safezoneW;
			h = 0.0483904 * safezoneH;
		};

		class CraftOption : HideButton {
			idc = 1116;
			text = "Craft Item";
			onButtonClick = "[""CRAFT""] spawn client_fnc_CraftMenu;";
			x = 0.406871 * safezoneW + safezoneX;
			y = 0.700203 * safezoneH + safezoneY;
			w = 0.0899698 * safezoneW;
			h = 0.0483904 * safezoneH;
		};	

		class MagOption : HideButton {
			idc = 1118;
			text = "Craft Mag";
			onButtonClick = "[""CRAFTMAG""] spawn client_fnc_CraftMenu;";
			x = 0.503218 * safezoneW + safezoneX;
			y = 0.699443 * safezoneH + safezoneY;
			w = 0.0899698 * safezoneW;
			h = 0.0483904 * safezoneH;
		};		

		class CloseOption : HideButton {
			idc = -1;
			text = "Close";
			onButtonClick = "closedialog 0;";
			x = 0.598653 * safezoneW + safezoneX;
			y = 0.699443 * safezoneH + safezoneY;
			w = 0.0899698 * safezoneW;
			h = 0.0483904 * safezoneH;
		};
	};
};



