class kruk_slpd_ticket_give {
	idd = 666006;
	name = "kruk_slpd_ticket_give";
	movingEnable = 0;
	enableSimulation = 1;
	onLoad = "";
	class controls {
		class BASE {    
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
			idc = -1;
			text = "\sl_client\textures\scripts\SLPD\ticket.paa";
			x = 0.5 * GUI_GRID_W + GUI_GRID_X;
			y = -5.5 * GUI_GRID_H + GUI_GRID_Y;
			w = 39 * GUI_GRID_W;
			h = 34 * GUI_GRID_H;
		}; 
		class edit_amount: Client_RscEdit {
			idc = 1001;
			autocomplete = "";
			text = "0"; //--- ToDo: Localize;
			x = 13 * GUI_GRID_W + GUI_GRID_X;
			y = 4.25 * GUI_GRID_H + GUI_GRID_Y;
			w = 14 * GUI_GRID_W;
			h = 2 * GUI_GRID_H;
			colorBackground[] = {0,0,0,0.1};
			colorText[] = {0,0,0,1};
		};
		class edit_points: Client_RscEdit {
			idc = 1002;
			autocomplete = "";
			text = "0"; //--- ToDo: Localize;
			x = 13 * GUI_GRID_W + GUI_GRID_X;
			y = 8.25 * GUI_GRID_H + GUI_GRID_Y;
			w = 14 * GUI_GRID_W;
			h = 2 * GUI_GRID_H;
			colorBackground[] = {0,0,0,0.1};
			colorText[] = {0,0,0,1};
		};
		class edit_reason: Client_RscEdit {
			idc = 1003;
			autocomplete = "";
			text = ""; //--- ToDo: Localize;
			x = 13 * GUI_GRID_W + GUI_GRID_X;
			y = 12.25 * GUI_GRID_H + GUI_GRID_Y;
			w = 14 * GUI_GRID_W;
			h = 8 * GUI_GRID_H;
			colorBackground[] = {0,0,0,0.1};
			colorText[] = {0,0,0,1};
		};
		class button_accept: client_RscButtonMenu {
			idc = 1201;
			text = "Wypisz"; //--- ToDo: Localize;
			x = 13 * GUI_GRID_W + GUI_GRID_X;
			y = 21 * GUI_GRID_H + GUI_GRID_Y;
			w = 7 * GUI_GRID_W;
			h = 2 * GUI_GRID_H;
			action = "[] spawn client_fnc_slpd_ticket_give;";
			colorBackground[] = {0.325,0.906,0.235,1};
		};
		class button_close: client_RscButtonMenu {
			idc = 1202;
		    sizeEx = 0.02921;
			style = 2;
			text = "Anuluj"; //--- ToDo: Localize;
			x = 20 * GUI_GRID_W + GUI_GRID_X;
			y = 21 * GUI_GRID_H + GUI_GRID_Y;
			w = 7 * GUI_GRID_W;
			h = 2 * GUI_GRID_H;
			action = "closeDialog 0;";
			colorBackground[] = {0.7,0,0,1};
		};
		class text_reason: RscText {
			idc = -1;
			style = 2;
			text = "Powód"; //--- ToDo: Localize;
			x = 13 * GUI_GRID_W + GUI_GRID_X;
			y = 11 * GUI_GRID_H + GUI_GRID_Y;
			w = 14 * GUI_GRID_W;
			h = 1 * GUI_GRID_H;
			colorText[] = {0,0,0,1};
		};
		class text_points: RscText {
			idc = -1;
			style = 2;
			text = "Punkty"; //--- ToDo: Localize;
			x = 13 * GUI_GRID_W + GUI_GRID_X;
			y = 7 * GUI_GRID_H + GUI_GRID_Y;
			w = 14 * GUI_GRID_W;
			h = 1 * GUI_GRID_H;
			colorText[] = {0,0,0,1};
		};
		class text_amount: RscText {
			idc = -1;
			style = 2;
			text = "Kwota"; //--- ToDo: Localize;
			x = 13 * GUI_GRID_W + GUI_GRID_X;
			y = 3 * GUI_GRID_H + GUI_GRID_Y;
			w = 14 * GUI_GRID_W;
			h = 1 * GUI_GRID_H;
			colorText[] = {0,0,0,1};
		};
		class text_title: RscText {
			idc = -1;
			text = "Wystawianie mandatu"; //--- ToDo: Localize;
			x = 13 * GUI_GRID_W + GUI_GRID_X;
			y = 0.5 * GUI_GRID_H + GUI_GRID_Y;
			w = 14 * GUI_GRID_W;
			h = 2 * GUI_GRID_H;
			colorText[] = {0,0,0,1};
		};
	};
};
class kruk_slpd_ticket_receive {
	idd = 666007;
	name = "kruk_slpd_ticket_receive";
	movingEnable = 0;
	enableSimulation = 1;
	onLoad = "";
	class controls {
		class BASE {    
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
			idc = -1;
			text = "\sl_client\textures\scripts\SLPD\ticket.paa";
			x = 0.5 * GUI_GRID_W + GUI_GRID_X;
			y = -5.5 * GUI_GRID_H + GUI_GRID_Y;
			w = 39 * GUI_GRID_W;
			h = 34 * GUI_GRID_H;
		}; 
		class edit_amount: RscText {
			idc = 1001;
			style = 1;
			text = "0"; //--- ToDo: Localize;
			x = 13 * GUI_GRID_W + GUI_GRID_X;
			y = 4.25 * GUI_GRID_H + GUI_GRID_Y;
			w = 14 * GUI_GRID_W;
			h = 2 * GUI_GRID_H;
			colorBackground[] = {0,0,0,0.1};
			colorText[] = {0,0,0,1};
		};
		class edit_points: RscText {
			idc = 1002;
			text = "0"; //--- ToDo: Localize;
			style = 1;
			x = 13 * GUI_GRID_W + GUI_GRID_X;
			y = 8.25 * GUI_GRID_H + GUI_GRID_Y;
			w = 14 * GUI_GRID_W;
			h = 2 * GUI_GRID_H;
			colorBackground[] = {0,0,0,0.1};
			colorText[] = {0,0,0,1};
		};
		class edit_reason: RscText {
			idc = 1003;
			style = 16;
			text = ""; //--- ToDo: Localize;
			x = 13 * GUI_GRID_W + GUI_GRID_X;
			y = 12.25 * GUI_GRID_H + GUI_GRID_Y;
			w = 14 * GUI_GRID_W;
			h = 8 * GUI_GRID_H;
			colorBackground[] = {0,0,0,0.1};
			colorText[] = {0,0,0,1};
		};
		class button_accept: client_RscButtonMenu {
			idc = 1201;
			style = 2;
			text = "Podpisz"; //--- ToDo: Localize;
			x = 13 * GUI_GRID_W + GUI_GRID_X;
			y = 21 * GUI_GRID_H + GUI_GRID_Y;
			w = 7 * GUI_GRID_W;
			h = 2 * GUI_GRID_H;
			action = "[""accept""] spawn client_fnc_slpd_ticket_action;";
			colorBackground[] = {0.325,0.906,0.235,1};
		};
		class button_close: client_RscButtonMenu {
			idc = 1202;
		    sizeEx = 0.02921;
			style = 2;
			text = "Odrzuć"; //--- ToDo: Localize;
			x = 20 * GUI_GRID_W + GUI_GRID_X;
			y = 21 * GUI_GRID_H + GUI_GRID_Y;
			w = 7 * GUI_GRID_W;
			h = 2 * GUI_GRID_H;
			action = "[""refuse""] spawn client_fnc_slpd_ticket_action;";
			colorBackground[] = {0.7,0,0,1};
		};
		class text_reason: RscText {
			idc = -1;
			style = 2;
			text = "Powód"; //--- ToDo: Localize;
			x = 13 * GUI_GRID_W + GUI_GRID_X;
			y = 11 * GUI_GRID_H + GUI_GRID_Y;
			w = 14 * GUI_GRID_W;
			h = 1 * GUI_GRID_H;
			colorText[] = {0,0,0,1};
		};
		class text_points: RscText {
			idc = -1;
			style = 2;
			text = "Punkty"; //--- ToDo: Localize;
			x = 13 * GUI_GRID_W + GUI_GRID_X;
			y = 7 * GUI_GRID_H + GUI_GRID_Y;
			w = 14 * GUI_GRID_W;
			h = 1 * GUI_GRID_H;
			colorText[] = {0,0,0,1};
		};
		class text_amount: RscText {
			idc = -1;
			style = 2;
			text = "Kwota"; //--- ToDo: Localize;
			x = 13 * GUI_GRID_W + GUI_GRID_X;
			y = 3 * GUI_GRID_H + GUI_GRID_Y;
			w = 14 * GUI_GRID_W;
			h = 1 * GUI_GRID_H;
			colorText[] = {0,0,0,1};
		};
		class text_title: RscText {
			idc = 1301;
			text = "Wystawianie mandatu"; //--- ToDo: Localize;
			x = 13 * GUI_GRID_W + GUI_GRID_X;
			y = 0.5 * GUI_GRID_H + GUI_GRID_Y;
			w = 14 * GUI_GRID_W;
			h = 2 * GUI_GRID_H;
			colorText[] = {0,0,0,1};
		};
	};
};