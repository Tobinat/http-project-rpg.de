class vehicle_colors {
	idd = 70001;
	name= "vehicle_colors";
	movingEnable = 0;
	enableSimulation = 1;
	class controls {
		class title: RscText
		{
			idc = -1;
			text = "Zmiana koloru";
			x = 0.298906 * safezoneW + safezoneX;
			y = 0.2448 * safezoneH + safezoneY;
			w = 0.350625 * safezoneW;
			h = 0.022 * safezoneH;
			colorBackground[] = {"(profilenamespace getvariable ['GUI_BCG_RGB_R',0.3843])", "(profilenamespace getvariable ['GUI_BCG_RGB_G',0.7019])", "(profilenamespace getvariable ['GUI_BCG_RGB_B',0.8862])", 0.7};
		};
		class title_finish: RscText
		{
			idc = -1;
			text = "Wykończenie";
			x = 0.4175 * safezoneW + safezoneX;
			y = 0.269 * safezoneH + safezoneY;
			w = 0.113437 * safezoneW;
			h = 0.022 * safezoneH;
			colorBackground[] = {0,0,0,0.7};
		};
		class title_lights: RscText
		{
			idc = -1;
			text = "Światła";
			x = 0.4175 * safezoneW + safezoneX;
			y = 0.39 * safezoneH + safezoneY;
			w = 0.113437 * safezoneW;
			h = 0.022 * safezoneH;
			colorBackground[] = {0,0,0,0.7};
		};
		class title_windows: RscText
		{
			idc = -1;
			text = "Przyciemnienie szyb";
			x = 0.4175 * safezoneW + safezoneX;
			y = 0.445 * safezoneH + safezoneY;
			w = 0.113437 * safezoneW;
			h = 0.022 * safezoneH;
			colorBackground[] = {0,0,0,0.7};
		};
		class title_rims: RscText
		{
			idc = -1;
			text = "Kolor felg"; //--- ToDo: Localize;
			x = 0.536094 * safezoneW + safezoneX;
			y = 0.269 * safezoneH + safezoneY;
			w = 0.113437 * safezoneW;
			h = 0.022 * safezoneH;
			colorBackground[] = {0,0,0,0.7};
		};
		class title_color: RscText
		{
			idc = -1;
			text = "Kolor";
			x = 0.298906 * safezoneW + safezoneX;
			y = 0.269 * safezoneH + safezoneY;
			w = 0.113437 * safezoneW;
			h = 0.022 * safezoneH;
			colorBackground[] = {0,0,0,0.7};
		};
		class title_price: RscText
		{
			idc = 1001;
			text = "Cena: $1000"; //--- ToDo: Localize;
			x = 0.298906 * safezoneW + safezoneX;
			y = 0.4934 * safezoneH + safezoneY;
			w = 0.201094 * safezoneW;
			h = 0.033 * safezoneH;
			colorBackground[] = {0,0,0,0.7};
		};
		class listbox_colors: RscListbox
		{
			idc = 1501;
			x = 0.298906 * safezoneW + safezoneX;
			y = 0.291 * safezoneH + safezoneY;
			w = 0.113437 * safezoneW;
			h = 0.198 * safezoneH;
			colorBackground[] = {0,0,0,0.5};
			onLBSelChanged = "[] spawn client_fnc_vehChangeColorOnLbChange;";
		};
		class listbox_finish: RscListbox
		{
			idc = 1502;
			x = 0.4175 * safezoneW + safezoneX;
			y = 0.291 * safezoneH + safezoneY;
			w = 0.113437 * safezoneW;
			h = 0.088 * safezoneH;
			colorBackground[] = {0,0,0,0.5};
			onLBSelChanged = "[] spawn client_fnc_vehChangeColorOnLbChange;";
		};
		class combo_lights: RscCombo
		{
			idc = 1503;
			x = 0.4175 * safezoneW + safezoneX;
			y = 0.412 * safezoneH + safezoneY;
			w = 0.113437 * safezoneW;
			h = 0.022 * safezoneH;
			colorBackground[] = {0,0,0,0.5};
			onLBSelChanged = "[] spawn client_fnc_vehChangeColorOnLbChange;";
		};
		class combo_windows: RscCombo
		{
			idc = 1504;
			x = 0.4175 * safezoneW + safezoneX;
			y = 0.467 * safezoneH + safezoneY;
			w = 0.113437 * safezoneW;
			h = 0.022 * safezoneH;
			colorBackground[] = {0,0,0,0.5};
			onLBSelChanged = "[] spawn client_fnc_vehChangeColorOnLbChange;";
		};
		class listbox_rims: RscListbox
		{
			idc = 1505;
			x = 0.536094 * safezoneW + safezoneX;
			y = 0.291 * safezoneH + safezoneY;
			w = 0.113437 * safezoneW;
			h = 0.198 * safezoneH;
			colorBackground[] = {0,0,0,0.5};
			onLBSelChanged = "[] spawn client_fnc_vehChangeColorOnLbChange;";
		};
		class button_confirm: client_RscButtonMenu
		{
			idc = 1601;
			text = "Zatwierdź";
			x = 0.505157 * safezoneW + safezoneX;
			y = 0.4934 * safezoneH + safezoneY;
			w = 0.0928125 * safezoneW;
			h = 0.033 * safezoneH;
			colorBackground[] = {"(profilenamespace getvariable ['GUI_BCG_RGB_R',0.3843])", "(profilenamespace getvariable ['GUI_BCG_RGB_G',0.7019])", "(profilenamespace getvariable ['GUI_BCG_RGB_B',0.8862])", 0.7};
			action = "[] spawn client_fnc_vehChangeColorButtonAccept; closeDialog 0; ";
		};
		class button_cancel: client_RscButtonMenu
		{
			idc = 1602;
			text = "Anuluj"; //--- ToDo: Localize;
			x = 0.603125 * safezoneW + safezoneX;
			y = 0.4934 * safezoneH + safezoneY;
			w = 0.0464062 * safezoneW;
			h = 0.033 * safezoneH;
			colorBackground[] = {0,0,0,0.7};
			action = "[] spawn client_fnc_resetColor; closeDialog 0;";
		};
	};
};