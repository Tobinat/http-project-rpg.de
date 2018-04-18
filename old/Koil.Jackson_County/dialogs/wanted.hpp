
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



class licenseCheck {
	idd = 9999;
	name= "licenseCheck";
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
			text = "\np_dialogs1\Images\licenseCheck.paa";
			x = 0.275605 * safezoneW + safezoneX;
			y = 0.126074 * safezoneH + safezoneY;
			w = 0.447732 * safezoneW;
			h = 0.747851 * safezoneH;
		};  


		class QuantityText : Client_RscEdit 
		{
			idc = 9339;
			text = "1";
			autocomplete = "";
			sizeEx = 0.030;
			x = 0.453178 * safezoneW + safezoneX;
			y = 0.656167 * safezoneH + safezoneY;
			w = 0.103332 * safezoneW;
			h = 0.0307935 * safezoneH;
		};

		class PurchaseOption : RSCButton {
			idc = 9995;
			text = "Search";
			onButtonClick = "[] spawn client_fnc_searchLicense;"; 
			x = 0.40029 * safezoneW + safezoneX;
			y = 0.706497 * safezoneH + safezoneY;
			w = 0.0867957 * safezoneW;
			h = 0.0461907 * safezoneH;
		};	

		class CloseOption : RSCButton {
			idc = 9996;
			text = "Close";
			onButtonClick = "closedialog 0;";
			x = 0.511518 * safezoneW + safezoneX;
			y = 0.706043 * safezoneH + safezoneY;
			w = 0.0878542 * safezoneW;
			h = 0.0461907 * safezoneH;
		};	
	};
};




class wanted {
	idd = 5111;
	name= "wanted";
	onLoad = "[player,1,0] remoteExec [""Server_fnc_wantedList"",2];";	
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

		class wanted : client_RscListBoxClear
		{
			idc = 911;
			text = "";
			sizeEx = 0.03;
			onLBSelChanged = "[] spawn client_fnc_wantedinformationupdate;";
			x = 0.315826 * safezoneW + safezoneX;
			y = 0.3 * safezoneH + safezoneY;
			w = 0.164036 * safezoneW;
			h = 0.341581 * safezoneH;
			ColorBackground[] = {0, 0, 0, 0.5};
		};

		class SelectInformation
		{
			idc = 1119;
			type=CT_STRUCTURED_TEXT;
			style=ST_LEFT;
			shadow=0;
			fadein=1;
		  	fadeout=1;

			font="PuristaLight";
			text = "No crime selected!";
			size = 0.035;
			sizeEx = 0.05;
			x = 0.517817 * safezoneW + safezoneX;
			y = 0.3 * safezoneH + safezoneY;
			w = 0.164036 * safezoneW;
			h = 0.151581 * safezoneH;
		};

		class PLAYERTOADD :  client_RscListBoxClear
		{
			idc = 1120;
			text = "";
			sizeEx = 0.03;
			x = 0.517817 * safezoneW + safezoneX;
			y = 0.46 * safezoneH + safezoneY;
			w = 0.164036 * safezoneW;
			h = 0.121581 * safezoneH;
		};



		class RscText: RscText
		{
			idc = 1005;
			text = "Wanted Level";
			x = 0.306091 * safezoneW + safezoneX;
			y = 0.663346 * safezoneH + safezoneY;
			w = 0.15;
			h = 0.05;
		};

		class RscEdit: RscEdit
		{
			idc = 1400;
			text = "0"; 
			x = 0.406091 * safezoneW + safezoneX;
			y = 0.663346 * safezoneH + safezoneY;
			w = 0.15;
			h = 0.05;
		};

		class LicCheck : client_RscButtonMenu {
			idc = 1120;
			text = "License Check";
			onButtonClick = "[] spawn client_fnc_licensecheck;";
			x = 0.506091 * safezoneW + safezoneX;
			y = 0.62 * safezoneH + safezoneY;
			w = 0.26;
			h = 0.05;
		};	


		class Update : client_RscButtonMenu {
			idc = 1115;
			text = "Update Level";
			onButtonClick = "[] call client_fnc_wantedRemove; closedialog 0;";
			x = 0.506091 * safezoneW + safezoneX;
			y = 0.663346 * safezoneH + safezoneY;
			w = 0.2;
			h = 0.05;
		};	

		class INSERT : client_RscButtonMenu {
			idc = 1116;
			text = "Insert Selected";
			onButtonClick = "[] spawn client_fnc_wantedredirect;";
			x = 0.606091 * safezoneW + safezoneX;
			y = 0.663346 * safezoneH + safezoneY;
			w = 0.23;
			h = 0.05;
		};	

		class refresh : client_RscButtonMenu {
			idc = 1119;
			text = "Refresh Active";
			onButtonClick = "[player,1,1] remoteExec [""Server_fnc_wantedList"",2];";
			x = 0.306091 * safezoneW + safezoneX;
			y = 0.7 * safezoneH + safezoneY;
			w = 0.2;
			h = 0.05;
		};	

		class Evidence : client_RscButtonMenu {
			idc = 1117;
			text = "Evidence";
			onButtonClick = "[] call client_fnc_wantedEvidence; closedialog 0;";
			x = 0.406091 * safezoneW + safezoneX;
			y = 0.7 * safezoneH + safezoneY;
			w = 0.15;
			h = 0.05;
		};	

		class LoadOld : client_RscButtonMenu {
			idc = 1118;
			text = "Old Crimes";
			onButtonClick = "[player,0,1] remoteExec [""Server_fnc_wantedList"",2];";
			x = 0.506091 * safezoneW + safezoneX;
			y = 0.7 * safezoneH + safezoneY;
			w = 0.15;
			h = 0.05;
		};	

		class LicenseCheck : client_RscButtonMenu {
			idc = 1119;
			text = "Plate Check";
			onButtonClick = "closedialog 0; createdialog ""licenseCheck""; ";
			x = 0.606091 * safezoneW + safezoneX;
			y = 0.7 * safezoneH + safezoneY;
			w = 0.23;
			h = 0.05;
		};	

	};
};



class insertCriminal {
	idd = 5111;
	name= "insertCriminal";
	onLoad = "[] spawn client_fnc_loadwantedProcessing;";	
	movingEnable = 0;
	enableSimulation = 1;
	class controls {

		class status : client_RscListBoxClear
		{
			idc = 911;
			text = "";
			sizeEx = 0.03;
			x = 0.315826 * safezoneW + safezoneX;
			y = 0.288839 * safezoneH + safezoneY;
			w = 0.164036 * safezoneW;
			h = 0.391581 * safezoneH;
			ColorBackground[] = {0, 0, 0, 0.5};
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
			text = "\np_dialogs1\Images\wantedMenu.paa";
			x = 0.275605 * safezoneW + safezoneX;
			y = 0.126074 * safezoneH + safezoneY;
			w = 0.447732 * safezoneW;
			h = 0.747851 * safezoneH;
		};  

		class charges : Client_RscEdit 
		{
			idc = 1116;
			text = "Enter the charges.";
			autocomplete = "";
			sizeEx = 0.030;
			x = 0.517817 * safezoneW + safezoneX;
			y = 0.28933 * safezoneH + safezoneY;
			w = 0.164036 * safezoneW;
			h = 0.391581 * safezoneH;
		};

		class Process : client_RscButtonMenu {
			idc = 1117;
			text = "Process";
			onButtonClick = "[] call client_fnc_wantedAdd;";
			x = 0.401967 * safezoneW + safezoneX;
			y = 0.703346 * safezoneH + safezoneY;
			w = 0.0899712 * safezoneW;
			h = 0.0483903 * safezoneH;
		};	

		class CloseDialog : client_RscButtonMenu {
			idc = 1118;
			text = "Close";
			onButtonClick = "CLOSEDIALOG 0;";
			x = 0.506091 * safezoneW + safezoneX;
			y = 0.703346 * safezoneH + safezoneY;
			w = 0.0899712 * safezoneW;
			h = 0.0483903 * safezoneH;
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



