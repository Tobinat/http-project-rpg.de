class promotion {
	idd = 5111;
	name= "promotion";
	onLoad = "";	
	movingEnable = 0;
	enableSimulation = 1;

	class controls {
		class ranks : client_RscListBoxClear
		{
			idc = 911;
			text = "";
			sizeEx = 0.05;
			onLBSelChanged = "";
			x = 0.35;
			y = 0.175;
			w = 0.301;
			h = 0.5;
			ColorBackground[] = {0, 0, 0, 0.5};
		};

		class Saveranks : client_RscButtonMenu {
			idc = 1115;
			text = "Save";
			onButtonClick = "[] call client_fnc_promote;";
			x = 0.4;
			y = 0.7;
			w = 0.15;
			h = 0.05;
		};	
	};
};