class vehSetPrice {
	idd = 7001;
	name= "vehSetPrice";
	onLoad = "";	
	movingEnable = 0;
	enableSimulation = 1;
	class controlsBackground {
		class Life_RscTitleBackground: client_RscText {
			colorBackground[] = {"(profilenamespace getvariable ['GUI_BCG_RGB_R',0.3843])", "(profilenamespace getvariable ['GUI_BCG_RGB_G',0.7019])", "(profilenamespace getvariable ['GUI_BCG_RGB_B',0.8862])", "(profilenamespace getvariable ['GUI_BCG_RGB_A',0.7])"};
			idc = -1;
			text = "Wystaw auto";
			x = 0.3;
			y = 0.2;
			w = 0.47;
			h = (1 / 25);
		};
		
		class MainBackground: client_RscText {
			colorBackground[] = {0, 0, 0, 0.7};
			text = "";
			idc = -1;
			x = 0.3;
			y = 0.2 + (11 / 250);
			w = 0.47;
			h = 0.3 - (22 / 250);
		};
	};
	class controls {
		class Title : client_RscTitle {
			colorBackground[] = {0, 0, 0, 0};
			idc = 4201;
			text = "";
			x = 0.3;
			y = 0.2;
			w = 0.6;
			h = (1 / 25);
		};
		class moneyEdit : client_RscEdit 
		{
			idc = 4202;
			autocomplete = "";
			text = "1000";
			sizeEx = 0.030;
			x = 0.40; y = 0.30;
			w = 0.25; h = 0.03;
		};
		class setPrice: RscButton {
			idc = -1;
			text = "Ustaw cene";
			colorBackground[] = {"(profilenamespace getvariable ['GUI_BCG_RGB_R',0.3843])", "(profilenamespace getvariable ['GUI_BCG_RGB_G',0.7019])", "(profilenamespace getvariable ['GUI_BCG_RGB_B',0.8862])", 0.5};
			onButtonClick = "[] call client_fnc_vehSetPrice;";
			x = 0.45;
			y = 0.35;
			w = (6.25 / 40);
			h = (1 / 25);
		};
	};
};