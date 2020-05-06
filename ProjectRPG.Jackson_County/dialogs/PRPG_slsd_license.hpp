class prpg_slsd_license
{
	idd = 9010;
	class controls
	{
				
		class RscFrame_1800: RscText
		{
			idc = 1800;

			x = 10.67 * GUI_GRID_W + GUI_GRID_X;
			y = 5 * GUI_GRID_H + GUI_GRID_Y;
			w = 18.6667 * GUI_GRID_W;
			h = 13.9945 * GUI_GRID_H;
			colorBackground[] = {0,0,0,0.8};
		};
		class RscText_1000: RscText
		{
			idc = 1000;

			text = "Fahrzeugnummer"; //--- ToDo: Localize;
			x = 12 * GUI_GRID_W + GUI_GRID_X;
			y = 5 * GUI_GRID_H + GUI_GRID_Y;
			w = 4 * GUI_GRID_W;
			h = 3.5 * GUI_GRID_H;
		};
		class RscButton_1600: RscButton
		{
			idc = 1600;
			action = "[currentcursortarget] call Client_fnc_prpg_police_license";

			text = "Setzen"; //--- ToDo: Localize;
			x = 23.33 * GUI_GRID_W + GUI_GRID_X;
			y = 16 * GUI_GRID_H + GUI_GRID_Y;
			w = 5.33333 * GUI_GRID_W;
			h = 2.49903 * GUI_GRID_H;
		};
		class RscEdit_1401: RscEdit
		{
			idc = 1401;

			x = 12 * GUI_GRID_W + GUI_GRID_X;
			y = 8 * GUI_GRID_H + GUI_GRID_Y;
			w = 16 * GUI_GRID_W;
			h = 1.49941 * GUI_GRID_H;
		};
	};
};