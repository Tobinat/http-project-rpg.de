class vehicle_colors {
    idd = 70001;
    name = "vehicle_colors";
    onLoad = "";
    onUnLoad = "[] spawn client_fnc_resetColor;";
    movingEnable = false;
    enableSimulation = true;

    class controlsBackground {
    };
    class controls {
        class title: client_RscText
        {
            idc = -1;
            text = "Lackierer";
            x = 0.265538 * safezoneW + safezoneX;
            y = 0.370589 * safezoneH + safezoneY;
            w = 0.463583 * safezoneW;
            h = 0.023663 * safezoneH;
            colorBackground[] = {"(profilenamespace getvariable ['GUI_BCG_RGB_R',0.3843])", "(profilenamespace getvariable ['GUI_BCG_RGB_G',0.7019])", "(profilenamespace getvariable ['GUI_BCG_RGB_B',0.8862])", 0.7};
            ColorText[] = {0.933333,0.964705,1,1};
        };
        class listbox_rims: RscListbox
        {
            idc = 1505;
            onLBSelChanged = "[] spawn client_fnc_vehChangeColorOnLbChange;";
            x = 0.592011 * safezoneW + safezoneX;
            y = 0.419 * safezoneH + safezoneY;
            w = 0.137243 * safezoneW;
            h = 0.250871 * safezoneH;
            colorBackground[] = {0,0,0,0.5};
            ColorText[] = {1,1,1,1};
            colorSelectBackground[] = {0,0,0,1};
            colorSelect[] = {0,1,1,1};
        };
        class listbox_colors: RscListbox
        {
            idc = 1501;
            onLBSelChanged = "[] spawn client_fnc_vehChangeColorOnLbChange;";
            x = 0.265152 * safezoneW + safezoneX;
            y = 0.419 * safezoneH + safezoneY;
            w = 0.137243 * safezoneW;
            h = 0.250871 * safezoneH;
            colorBackground[] = {0,0,0,0.5};
            ColorText[] = {0.933333,1,1,1};
            colorSelectBackground[] = {0,0,0,1};
            colorSelect[] = {0,1,1,1};
        };
        class title_color: client_RscText
        {
            idc = -1;
            text = "Farbe";
            x = 0.265152 * safezoneW + safezoneX;
            y = 0.396973 * safezoneH + safezoneY;
            w = 0.137243 * safezoneW;
            h = 0.022154 * safezoneH;
            colorBackground[] = {0,0,0,0.7};
            ColorText[] = {1,1,1,1};
        };
        class title_rims: client_RscText
        {
            idc = -1;
            text = "Felgenfarbe";
            x = 0.592011 * safezoneW + safezoneX;
            y = 0.396973 * safezoneH + safezoneY;
            w = 0.137243 * safezoneW;
            h = 0.022154 * safezoneH;
            colorBackground[] = {0,0,0,0.7};
            ColorText[] = {1,1,1,1};
        };
        class listbox_finish: RscListbox
        {
            idc = 1502;
            onLBSelChanged = "[] spawn client_fnc_vehChangeColorOnLbChange;";
            x = 0.408451 * safezoneW + safezoneX;
            y = 0.419 * safezoneH + safezoneY;
            w = 0.174632 * safezoneW;
            h = 0.098191 * safezoneH;
            colorBackground[] = {0,0,0,0.5};
            ColorText[] = {1,1,1,1};
            colorSelectBackground[] = {0,0,0,1};
            colorSelect[] = {0,1,1,1};
        };
        /*
        class title_lights: client_RscText
        {
            idc = -1;
            text = "Scheinwerfer";
            x = 0.408451 * safezoneW + safezoneX;
            y = 0.529903 * safezoneH + safezoneY;
            w = 0.174632 * safezoneW;
            h = 0.023607 * safezoneH;
            colorBackground[] = {0,0,0,0.7};
            ColorText[] = {1,1,1,1};
        };
        class title_windows: client_RscText
        {
            idc = -1;
            text = "Scheiben tönung";
            x = 0.408451 * safezoneW + safezoneX;
            y = 0.585 * safezoneH + safezoneY;
            w = 0.174632 * safezoneW;
            h = 0.023607 * safezoneH;
            colorBackground[] = {0,0,0,0.7};
            ColorText[] = {1,1,1,1};
        };
        class combo_lights: RscCombo
        {
            idc = 1503;
            onLBSelChanged = "[] spawn client_fnc_vehChangeColorOnLbChange;";
            x = 0.408451 * safezoneW + safezoneX;
            y = 0.555 * safezoneH + safezoneY;
            w = 0.174632 * safezoneW;
            h = 0.023607 * safezoneH;
            colorBackground[] = {0,0,0,0.5};
            ColorText[] = {1,1,1,1};
            colorSelectBackground[] = {0,0,0,1};
            colorSelect[] = {0,1,1,1};
        };
        */
        class title_finish: client_RscText
        {
            idc = -1;
            text = "Lack Typ";
            x = 0.408451 * safezoneW + safezoneX;
            y = 0.396973 * safezoneH + safezoneY;
            w = 0.174632 * safezoneW;
            h = 0.022154 * safezoneH;
            colorBackground[] = {0,0,0,0.7};
            ColorText[] = {1,1,1,1};
        };
        class title_price: client_RscText
        {
            idc = 1001;
            text = "Preis: 1000$";
            x = 0.408451 * safezoneW + safezoneX;
            y = 0.639769 * safezoneH + safezoneY;
            w = 0.174632 * safezoneW;
            h = 0.027058 * safezoneH;
            colorBackground[] = {0,0,0,0.7};
            ColorText[] = {1,1,1,1};
        };
        /*
        class combo_windows: RscCombo
        {
            idc = 1504;
            onLBSelChanged = "[] spawn client_fnc_vehChangeColorOnLbChange;";
            x = 0.408451 * safezoneW + safezoneX;
            y = 0.61 * safezoneH + safezoneY;
            w = 0.174632 * safezoneW;
            h = 0.023607 * safezoneH;
            colorBackground[] = {0,0,0,0.5};
            ColorText[] = {1,1,1,1};
            colorSelectBackground[] = {0,0,0,1};
            colorSelect[] = {0,1,1,1};
        };
        */
        class button_confirm: RscButton
        {
            idc = 1601;
            text = "Bestätigen";
            action = "[] spawn client_fnc_vehChangeColorButtonAccept;";
            x = 0.408451 * safezoneW + safezoneX;
            y = 0.673637 * safezoneH + safezoneY;
            w = 0.046881 * safezoneW;
            h = 0.027058 * safezoneH;
            colorBackground[] = {"(profilenamespace getvariable ['GUI_BCG_RGB_R',0.3843])", "(profilenamespace getvariable ['GUI_BCG_RGB_G',0.7019])", "(profilenamespace getvariable ['GUI_BCG_RGB_B',0.8862])", 0.7};
            ColorText[] = {1,1,1,1};
            colorFocused[] = {0,1,1,1};
            colorDisabled[] = {1,1,1,1};
        };
        class button_cancel: RscButton
        {
            idc = 1602;
            text = "Abbruch";
			action = "[] spawn client_fnc_resetColor; closeDialog 0;";
            x = 0.458262 * safezoneW + safezoneX;
            y = 0.673637 * safezoneH + safezoneY;
            w = 0.046881 * safezoneW;
            h = 0.027058 * safezoneH;
            colorBackground[] = {0,0,0,0.7};
            ColorText[] = {1,1,1,1};
            colorFocused[] = {0,0,0,1};
            colorDisabled[] = {0,0,0,1};
        };
    };
};


class cop_vehicle_colors {
    idd = 70002;
    name = "cop_vehicle_colors";
    onLoad = "";
    onUnLoad = ""; //[] spawn client_fnc_resetColor;
    movingEnable = false;
    enableSimulation = true;

    class controlsBackground {
    };
    class controls {
        class title: client_RscText
        {
            idc = -1;
            text = "Lackierer";
            x = 0.265538 * safezoneW + safezoneX;
            y = 0.370589 * safezoneH + safezoneY;
            w = 0.463583 * safezoneW;
            h = 0.023663 * safezoneH;
            colorBackground[] = {"(profilenamespace getvariable ['GUI_BCG_RGB_R',0.3843])", "(profilenamespace getvariable ['GUI_BCG_RGB_G',0.7019])", "(profilenamespace getvariable ['GUI_BCG_RGB_B',0.8862])", 0.7};
            ColorText[] = {0.933333,0.964705,1,1};
        };
        class listbox_colors: RscListbox
        {
            idc = 1501;
            onLBSelChanged = "[] spawn client_fnc_copcolorOnLbChange;";
            x = 0.265152 * safezoneW + safezoneX;
            y = 0.419 * safezoneH + safezoneY;
            w = 0.137243 * safezoneW;
            h = 0.250871 * safezoneH;
            colorBackground[] = {0,0,0,0.5};
            ColorText[] = {0.933333,1,1,1};
            colorSelectBackground[] = {0,0,0,1};
            colorSelect[] = {0,1,1,1};
        };
        class title_color: client_RscText
        {
            idc = -1;
            text = "Farbe";
            x = 0.265152 * safezoneW + safezoneX;
            y = 0.396973 * safezoneH + safezoneY;
            w = 0.137243 * safezoneW;
            h = 0.022154 * safezoneH;
            colorBackground[] = {0,0,0,0.7};
            ColorText[] = {1,1,1,1};
        };
        class listbox_finish: RscListbox
        {
            idc = 1502;
            onLBSelChanged = "[] spawn client_fnc_copcolorOnLbChange;";
            x = 0.408451 * safezoneW + safezoneX;
            y = 0.419 * safezoneH + safezoneY;
            w = 0.174632 * safezoneW;
            h = 0.098191 * safezoneH;
            colorBackground[] = {0,0,0,0.5};
            ColorText[] = {1,1,1,1};
            colorSelectBackground[] = {0,0,0,1};
            colorSelect[] = {0,1,1,1};
        };
        class title_finish: client_RscText
        {
            idc = -1;
            text = "Lack Typ";
            x = 0.408451 * safezoneW + safezoneX;
            y = 0.396973 * safezoneH + safezoneY;
            w = 0.174632 * safezoneW;
            h = 0.022154 * safezoneH;
            colorBackground[] = {0,0,0,0.7};
            ColorText[] = {1,1,1,1};
        };
        class button_confirm: RscButton
        {
            idc = 1601;
            text = "Bestätigen";
            action = "[] spawn client_fnc_copColorButtonAccept;";
            x = 0.408451 * safezoneW + safezoneX;
            y = 0.673637 * safezoneH + safezoneY;
            w = 0.046881 * safezoneW;
            h = 0.027058 * safezoneH;
            colorBackground[] = {"(profilenamespace getvariable ['GUI_BCG_RGB_R',0.3843])", "(profilenamespace getvariable ['GUI_BCG_RGB_G',0.7019])", "(profilenamespace getvariable ['GUI_BCG_RGB_B',0.8862])", 0.7};
            ColorText[] = {1,1,1,1};
            colorFocused[] = {0,1,1,1};
            colorDisabled[] = {1,1,1,1};
        };
    };
};