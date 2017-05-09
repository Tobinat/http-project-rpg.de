//	[_licensePlate, _class, _color, _finish, _rims, _windows, _lights, _owner, _statuses, "Add", _player] remoteExec ["Server_fnc_garageUpdate",2];

class buycar {
	idd = 1444;
	name= "buycar";
	onLoad = "[""NEW""] spawn client_fnc_carShop; client_kcCamera  = ""CAMERA"" camCreate (getPos player); showCinemaBorder true; client_kcCamera cameraEffect [""EXTERNAL"", ""BACK""];";	
	onunload = "deletevehicle spawnedvehicle; client_kcCamera cameraEffect [""TERMINATE"",""BACK""]; camDestroy client_kcCamera;";
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
			text = "\np_dialogs1\Images\carMenu.paa";
			x = 0.275605 * safezoneW + safezoneX;
			y = 0.126074 * safezoneH + safezoneY;
			w = 0.447732 * safezoneW;
			h = 0.747851 * safezoneH;
		};  


		class RscListbox_Vehicle: RscListbox
		{
			idc = 1500;
		    colorText[] = {1, 1, 1, 1};
		    colorActive[] = {0, 0, 0, 0.2};
		    colorTextSelect[] = {1, 1, 1, 0.2};
		    colorDisabled[] = {1, 1, 1, 0};
		    colorBackground[] = {0, 0, 0, 0.5};	
			x = 0.31 * safezoneW + safezoneX;
			y = 0.162 * safezoneH + safezoneY;
			w = 0.385 * safezoneW;
			h = 0.12 * safezoneH;
			onLBSelChanged = "[""CAR""] spawn client_fnc_carShop;";
		};

		class RscListbox_Color: RscListbox
		{
			idc = 1501;
		    colorText[] = {1, 1, 1, 1};
		    colorActive[] = {0, 0, 0, 0.2};
		    colorTextSelect[] = {1, 1, 1, 0.2};
		    colorDisabled[] = {1, 1, 1, 0};
		    colorBackground[] = {0, 0, 0, 0.5};				
			x = 0.307 * safezoneW + safezoneX;
			y = 0.29 * safezoneH + safezoneY;
			w = 0.192 * safezoneW;
			h = 0.085 * safezoneH;
			onLBSelChanged = "[""COLOR""] spawn client_fnc_carShop;";
		};

		class RscListbox_Finish: RscListbox
		{
			idc = 1502;
		    colorText[] = {1, 1, 1, 1};
		    colorActive[] = {0, 0, 0, 0.2};
		    colorTextSelect[] = {1, 1, 1, 0.2};
		    colorDisabled[] = {1, 1, 1, 0};
		    colorBackground[] = {0, 0, 0, 0.5};		
			x = 0.503 * safezoneW + safezoneX;
			y = 0.29 * safezoneH + safezoneY;
			w = 0.193 * safezoneW;
			h = 0.085 * safezoneH;
			onLBSelChanged = "[""FINISH""] spawn client_fnc_carShop;";
		};

		class Saveranks : client_RscButtonMenu {
			idc = 1115;
			text = "Buy Car";
			onButtonClick = "[] call client_fnc_carShopBuy;";
			x = 0.85;
			y = 0.95;
			w = 0.15;
			h = 0.05;
		};	
	};
};



class charselect {

	idd = 1444;
	name= "charselect";
	onLoad = "";	
	movingEnable = 0;
	enableSimulation = 1;

	class controls {

		class RscListbox_players: client_RscButtonMenu
		{
			idc = 1500;
			sizeEx = 0.033;
			text = "FEMALE";
			onButtonClick = "[""Female""] spawn client_fnc_playerselectFinish;";		
			x = 0.405 * safezoneW + safezoneX;
			y = 0.76 * safezoneH + safezoneY;
			w = 0.15;
			h = 0.05;
			colorBackground[] = {	0,	0,	0,	0.2 };
			colorBackgroundFocused[] = {1,	1,	1,	0.5	};
			colorBackground2[] = {	0.75,	0.75,	0.75,	0.2 };			
		};

		class RscListbox_functions: client_RscButtonMenu
		{
			idc = 1501;
			sizeEx = 0.033;
			text = "MALE";
			onButtonClick = "[""Male""] spawn client_fnc_playerselectFinish;";		
			x = 0.53 * safezoneW + safezoneX;
			y = 0.76 * safezoneH + safezoneY;
			w = 0.15;
			h = 0.05;
			colorBackground[] = {	0,	0,	0,	0.2 };
			colorBackgroundFocused[] = {1,	1,	1,	0.5	};
			colorBackground2[] = {	0.75,	0.75,	0.75,	0.2 };		
		};

	};

};



class koiladmin {

	idd = 1444;
	name= "koiladmin";
	onLoad = "[] spawn client_fnc_adminloadplayers;";	
	onunload = "client_kacCamera cameraEffect [""TERMINATE"",""BACK""]; camDestroy client_kacCamera;";
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
			text = "\np_dialogs1\Images\AdminMenu.paa";
			x = 0.275605 * safezoneW + safezoneX;
			y = 0.126074 * safezoneH + safezoneY;
			w = 0.447732 * safezoneW;
			h = 0.747851 * safezoneH;
		};  


		class RscListbox_players: RscListbox
		{
			idc = 1500;
			sizeEx = 0.033;
		    colorText[] = {1, 1, 1, 1};
		    colorActive[] = {0, 0, 0, 0.2};
		    colorTextSelect[] = {1, 1, 1, 0.2};
		    colorDisabled[] = {1, 1, 1, 0};
		    colorBackground[] = {0, 0, 0, 0.5};			
			x = 0.305 * safezoneW + safezoneX;
			y = 0.16 * safezoneH + safezoneY;
			w = 0.075 * safezoneW;
			h = 0.68 * safezoneH;
			onLBSelChanged = "[] spawn client_fnc_adminupdateplayer;";
		};

		class RscListbox_functions: RscListbox
		{
			idc = 1501;
			sizeEx = 0.033;
		    colorText[] = {1, 1, 1, 1};
		    colorActive[] = {0, 0, 0, 0.2};
		    colorTextSelect[] = {1, 1, 1, 0.2};
		    colorDisabled[] = {1, 1, 1, 0};
		    colorBackground[] = {0, 0, 0, 0.5};		
			x = 0.623 * safezoneW + safezoneX;
			y = 0.16 * safezoneH + safezoneY;
			w = 0.075 * safezoneW;
			h = 0.68 * safezoneH;
		};

		class execute : client_RscButtonMenu {
			idc = 1115;
			text = "Execute";
			onButtonClick = "[] spawn client_fnc_adminexecute;";
			x = 0.55;
			y = 0.8;
			w = 0.15;
			h = 0.05;
		};	

	};

};