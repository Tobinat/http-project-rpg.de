// phone center [0.34, 0.183, 0.312, 0.618]; 

class client_PhoneCallPP_Menu 
{    
	idd = 5337;
	name= "client_callPP";
	onLoad = "";
	movingEnable = 0;
	enableSimulation = 1;
	fadein = 1;
	fadeout = 1;

	class controls
	{

		class phoneMain: RscPicture
		{
			idc = 85441;
			text = "\np_dialogs1\Images\anonphonepng.paa";
			style = 2096;
			x = 0;
			y = 0;
			w = 1;
			h = 1;
		};

		class PlayerListCall : client_RscListBoxClear
		{
			idc = 5338;
			text = "";
			sizeEx = 0.05;
			x = 0.35;
			y = 0.175;
			w = 0.301;
			h = 0.45;
						ColorBackground[] = {0, 0, 0, 0.5};
		};	

		class CallButton : client_RscButtonMenu {

			idc = -1;
			text = "Call";
			colorBackground[] = {0,0.535294117647059,0.2725490196078431,0.7};
			onButtonClick = "[1] spawn client_fnc_CallSomebody;";
			x = 0.52;
			y = 0.75;
			w = 0.1;
			h = 0.05;
		};
	};
};



class client_PhoneCall_Menu 
{    
	idd = 5337;
	name= "client_call";
	onLoad = "uiNamespace setVariable [""phonemenu"", _this select 0]; [""nobg""] spawn client_fnc_fadephone;";
	movingEnable = 0;
	enableSimulation = 1;
	fadein = 1;
	fadeout = 1;

	class controls
	{

		class phoneMain: RscPicture
		{
			idc = 85441;
			text = "\cg_phone\Images\bgblack.paa";
			style = 2096;
			x = 0;
			y = 0;
			w = 1;
			h = 1;
		};

		class gohome: RscButtonSilent
		{
			idc = 5989;
			text = "";
			x = 0.45;
			y = 0.82;
			w = 0.1;
			h = 0.1;
			action = "closedialog 0; createdialog ""phoneHUD"" ";
		};

		class PlayerListCall : client_RscListBoxClear
		{
			idc = 5338;
			text = "";
			sizeEx = 0.05;
			x = 0.35;
			y = 0.175;
			w = 0.301;
			h = 0.52;
		};	

		class CallButton : client_RscButtonMenu {

			idc = -1;
			text = "Call";
			colorBackground[] = {0,0.535294117647059,0.2725490196078431,0.7};
			onButtonClick = "[0] spawn client_fnc_CallSomebody;";
			x = 0.52;
			y = 0.75;
			w = 0.1;
			h = 0.05;
		};

		class CTRL_PHONE_BG: RscStructuredText
		{    
			idc = 5017;
			text = "";
			x = 0.35;
			y = 0.175;
			w = 0.301;
			h = 0.635;
			ColorBackground[] = {0, 0, 0, 1};
		}; 

		class phoneglare: RscPicture
		{
			idc = 88889;
			text = "\cg_phone\Images\phoneglare.paa";
			style = 2096;
			x = 0;
			y = 0;
			w = 1;
			h = 1;
		};


	};
};


