class vehicle_colors {
	idd = 70001;
	name= "vehicle_colors";
	movingEnable = 0;
	enableSimulation = 1;
	class controls {
		class title: RscStructuredText 
		{
			idc = -1;
			align = "center";
			valign = "top";
			text = "Farbwechsel";
			x = 0.265538 * safezoneW + safezoneX;
            y = 0.370589 * safezoneH + safezoneY;
            w = 0.463583 * safezoneW;
            h = 0.023663 * safezoneH;
			colorBackground[] = {"(profilenamespace getvariable ['GUI_BCG_RGB_R',0.3843])", "(profilenamespace getvariable ['GUI_BCG_RGB_G',0.7019])", "(profilenamespace getvariable ['GUI_BCG_RGB_B',0.8862])", 0.7};
		};
		class title_finish: RscStructuredText 
		{
			idc = -1;
			align = "center";
			valign = "top";
			text = "Lack Typ";
			x = 0.408451 * safezoneW + safezoneX;
            y = 0.396973 * safezoneH + safezoneY;
            w = 0.174632 * safezoneW;
            h = 0.022154 * safezoneH;
			colorBackground[] = {0,0,0,0.7};
		};
		class title_lights: RscStructuredText 
		{
			idc = -1;
			align = "center";
			valign = "top";
			text = "Lampen";
			x = 0.408451 * safezoneW + safezoneX;
            y = 0.529903 * safezoneH + safezoneY;
            w = 0.174632 * safezoneW;
            h = 0.023607 * safezoneH;
			colorBackground[] = {0,0,0,0.7};
		};
		class title_windows: RscStructuredText 
		{
			idc = -1;
			align = "center";
			valign = "top";
			text = "Glas tönung";
			x = 0.408451 * safezoneW + safezoneX;
            y = 0.585 * safezoneH + safezoneY;
            w = 0.174632 * safezoneW;
            h = 0.023607 * safezoneH;
			colorBackground[] = {0,0,0,0.7};
		};
		class title_rims: RscStructuredText 
		{
			idc = -1;
			align = "center";
			valign = "top";
			text = "Felgenfarbe"; //--- ToDo: Localize;
			x = 0.592011 * safezoneW + safezoneX;
            y = 0.396973 * safezoneH + safezoneY;
            w = 0.137243 * safezoneW;
            h = 0.022154 * safezoneH;
			colorBackground[] = {0,0,0,0.7};
		};
		class title_color: RscStructuredText 
		{
			idc = -1;
			align = "center";
			valign = "top";
			text = "Farbe";
			x = 0.265152 * safezoneW + safezoneX;
            y = 0.396973 * safezoneH + safezoneY;
            w = 0.137243 * safezoneW;
            h = 0.022154 * safezoneH;
			colorBackground[] = {0,0,0,0.7};
		};
		class title_price: RscStructuredText 
		{
			idc = 1001;
			align = "center";
			valign = "top";
			text = "Preis: $1000"; //--- ToDo: Localize;
			x = 0.408451 * safezoneW + safezoneX;
            y = 0.639769 * safezoneH + safezoneY;
            w = 0.174632 * safezoneW;
            h = 0.027058 * safezoneH;
			colorBackground[] = {0,0,0,0.7};
		};
		class listbox_colors: RscListbox
		{
			idc = 1501;
			 x = 0.265152 * safezoneW + safezoneX;
            y = 0.419 * safezoneH + safezoneY;
            w = 0.137243 * safezoneW;
            h = 0.250871 * safezoneH;
			colorBackground[] = {0,0,0,0.5};
			onLBSelChanged = "[] spawn client_fnc_vehChangeColorOnLbChange;";
		};
		class listbox_finish: RscListbox
		{
			idc = 1502;
			 x = 0.408451 * safezoneW + safezoneX;
            y = 0.419 * safezoneH + safezoneY;
            w = 0.174632 * safezoneW;
            h = 0.098191 * safezoneH;
			colorBackground[] = {0,0,0,0.5};
			onLBSelChanged = "[] spawn client_fnc_vehChangeColorOnLbChange;";
		};
		class combo_lights: RscCombo
		{
			idc = 1503;
			x = 0.408451 * safezoneW + safezoneX;
            y = 0.555 * safezoneH + safezoneY;
            w = 0.174632 * safezoneW;
            h = 0.023607 * safezoneH;
			colorBackground[] = {0,0,0,0.5};
			onLBSelChanged = "[] spawn client_fnc_vehChangeColorOnLbChange;";
		};
		class combo_windows: RscCombo
		{
			idc = 1504;
			x = 0.408451 * safezoneW + safezoneX;
            y = 0.61 * safezoneH + safezoneY;
            w = 0.174632 * safezoneW;
            h = 0.023607 * safezoneH;
			colorBackground[] = {0,0,0,0.5};
			onLBSelChanged = "[] spawn client_fnc_vehChangeColorOnLbChange;";
		};
		class listbox_rims: RscListbox
		{
			idc = 1505;
			x = 0.592011 * safezoneW + safezoneX;
            y = 0.419 * safezoneH + safezoneY;
            w = 0.137243 * safezoneW;
            h = 0.250871 * safezoneH;
			colorBackground[] = {0,0,0,0.5};
			onLBSelChanged = "[] spawn client_fnc_vehChangeColorOnLbChange;";
		};
		class button_confirm: client_RscButtonMenu
		{
			idc = 1601;
			text = "Bestätigen";
			x = 0.408451 * safezoneW + safezoneX;
            y = 0.673637 * safezoneH + safezoneY;
            w = 0.066881 * safezoneW;
            h = 0.027058 * safezoneH;
			colorBackground[] = {"(profilenamespace getvariable ['GUI_BCG_RGB_R',0.3843])", "(profilenamespace getvariable ['GUI_BCG_RGB_G',0.7019])", "(profilenamespace getvariable ['GUI_BCG_RGB_B',0.8862])", 0.7};
			action = "[] spawn client_fnc_vehChangeColorButtonAccept; closeDialog 0; ";
		};
		class button_cancel: client_RscButtonMenu
		{
			idc = 1602;
			text = "Abbruch"; //--- ToDo: Localize;
			x = 0.478262 * safezoneW + safezoneX;
            y = 0.673637 * safezoneH + safezoneY;
            w = 0.066881 * safezoneW;
            h = 0.027058 * safezoneH;
			colorBackground[] = {0,0,0,0.7};
			action = "[] spawn client_fnc_resetColor; closeDialog 0;";
		};
	};
};