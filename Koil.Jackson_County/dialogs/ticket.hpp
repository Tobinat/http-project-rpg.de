class np_ticketcivilian
{
	idd = 1333;
	name = "ticketcivilian";
	movingEnable = 0;
	enableSimulation = 1;
//Ticket Menu That Pops Up For Civs
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

		class Background: client_RscPicture
		{
			idc = 1200;
			text = "\np_dialogs1\images\TicketCivilainMenu.paa";
			x = 0.330645 * safezoneW + safezoneX;
			y = 0.187662 * safezoneH + safezoneY;
			w = 0.340827 * safezoneW;
			h = 0.624676 * safezoneH;
		};
		class PayTicket: hidebutton
		{
			idc = 1600;
			onButtonClick = "[""paid""] spawn client_fnc_ticketresult;";
			x = 0.466787 * safezoneW + safezoneX;
			y = 0.611298 * safezoneH + safezoneY;
			w = 0.0666835 * safezoneW;
			h = 0.0373926 * safezoneH;
		};
		class RefuseTicket: hidebutton
		{
			idc = 1601;
			onButtonClick = "[""refused""] spawn client_fnc_ticketresult;";
			x = 0.466529 * safezoneW + safezoneX;
			y = 0.656389 * safezoneH + safezoneY;
			w = 0.0666835 * safezoneW;
			h = 0.0373926 * safezoneH;
		};
		class TicketAmount: client_RscStructuredText
		{
			idc = 1400;
			text = "Loading Amount";
			x = 0.455544 * safezoneW + safezoneX;
			y = 0.561588 * safezoneH + safezoneY;
			w = 0.0899698 * safezoneW;
			h = 0.0307939 * safezoneH;
		};
		class OfficerName: client_RscStructuredText
		{
			idc = 1401;
			text = "Loading Name";
			x = 0.455544 * safezoneW + safezoneX;
			y = 0.376824 * safezoneH + safezoneY;
			w = 0.0899698 * safezoneW;
			h = 0.0307939 * safezoneH;
		};
		class TicketReason: client_RscStructuredText
		{
			idc = 1402;
			text = "Loading Reason";
			x = 0.455333 * safezoneW + safezoneX;
			y = 0.466127 * safezoneH + safezoneY;
			w = 0.0899698 * safezoneW;
			h = 0.0307939 * safezoneH;
		};
		class Officer: client_RscStructuredText
		{
			idc = 1403;
			text = "";
			x = 0;
			y = 0;
			w = 0;
			h = 0;
		};		
	};
};


class np_ticketpolice
{
	idd = 1333;
	name = "ticketpolice";
	movingEnable = 0;
	enableSimulation = 1;
//Ticket Menu That Pops Up For Cops
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

		class Background: client_RscPicture
		{
			idc = 1200;
			text = "\np_dialogs1\images\TicketPoliceMenu.paa";
			x = 0.330645 * safezoneW + safezoneX;
			y = 0.187662 * safezoneH + safezoneY;
			w = 0.340827 * safezoneW;
			h = 0.624676 * safezoneH;
		};
		class IssueTicket: hidebutton
		{
			idc = 1600;
			onButtonClick = "[] spawn client_fnc_writeticket;";
			x = 0.466787 * safezoneW + safezoneX;
			y = 0.611298 * safezoneH + safezoneY;
			w = 0.0666835 * safezoneW;
			h = 0.0373926 * safezoneH;
		};
		class CancelTicket: hidebutton
		{
			idc = 1601;
			onButtonClick = "closedialog 0";
			x = 0.466129 * safezoneW + safezoneX;
			y = 0.656389 * safezoneH + safezoneY;
			w = 0.0666835 * safezoneW;
			h = 0.0373926 * safezoneH;
		};
		class TicketAmount: client_RscEdit
		{
			idc = 1400;
			autocomplete = "";
			text = "";
			x = 0.455544 * safezoneW + safezoneX;
			y = 0.561588 * safezoneH + safezoneY;
			w = 0.0899698 * safezoneW;
			h = 0.0307939 * safezoneH;
		};
		class OfficerName: client_RscEdit
		{
			idc = 1401;
			autocomplete = "";
			text = "";
			x = 0.455544 * safezoneW + safezoneX;
			y = 0.376824 * safezoneH + safezoneY;
			w = 0.0899698 * safezoneW;
			h = 0.0307939 * safezoneH;
		};
		class TicketReason: client_RscEdit
		{
			idc = 1402;
			autocomplete = "";
			text = "";
			x = 0.455333 * safezoneW + safezoneX;
			y = 0.466127 * safezoneH + safezoneY;
			w = 0.0899698 * safezoneW;
			h = 0.0307939 * safezoneH;
		};
	};
};