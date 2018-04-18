// phone center [0.34, 0.183, 0.312, 0.618]; 

class phoneHUD
{    
	idd = 12198;
	name= "client_phone_hud";
	onLoad = "uiNamespace setVariable [""phonemenu"", _this select 0]; [""baseload""] spawn client_fnc_fadephone;";
	movingEnable = 0;
	enableSimulation = 1;
	fadein = 1;
	fadeout = 1;


	class controls
	{


		class phonebg1: RscPicture
		{
			idc = 80001;
			text = "\cg_phone\Images\80001.paa";
			style = 2096;
			x = 0;
			y = 0;
			w = 1;
			h = 1;
		};

		class phoneMain: RscPicture
		{
			idc = 85441;
			text = "\cg_phone\Images\bg1.paa";
			style = 2096;
			x = 0;
			y = 0;
			w = 1;
			h = 1;
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


		class phonebookbutton: RscButtonSilent
		{
			idc = 5101;
			text = "";
			x = 0.35;
			y = 0.2;
			w = 0.1;
			h = 0.1;
			action = "closedialog 0; createdialog ""phoneBook"" ";
		};

		class backgroundbutton: RscButtonSilent
		{
			idc = 5201;
			text = "";
			x = 0.45;
			y = 0.2;
			w = 0.1;
			h = 0.1;
			action = "closedialog 0; createdialog ""phoneBG""; ";
		};

		class smsbutton: RscButtonSilent
		{
			idc = 5001;
			text = "";
			x = 0.55;
			y = 0.2;
			w = 0.1;
			h = 0.1;
			action = "closedialog 0; [] spawn client_fnc_openMessages";
		};

		class volup: RscButtonSilent
		{                                    
			idc = 4001;
			text = "";
			x = 0.45;
			y = 0.3;
			w = 0.1;
			h = 0.1;
			action = "[] spawn client_fnc_iVol;";
		};

		class voldown: RscButtonSilent
		{
			idc = 4101;
			text = "";
			x = 0.55;
			y = 0.3;
			w = 0.1;
			h = 0.1;
			action = "[] spawn client_fnc_dVol;";
		};

		class Call: RscButtonSilent
		{
			idc = 5002;
			text = "";
			x = 0.35;
			y = 0.7;
			w = 0.1;
			h = 0.1;
			action = "closedialog 0; [] spawn client_fnc_trycall;";
		};

		class Hangup: RscButtonSilent
		{
			idc = 5003;
			text = "";
			x = 0.45;
			y = 0.7;
			w = 0.1;
			h = 0.1;
			action = "closedialog 0; [] spawn client_fnc_tryhangup;";
		};


		class Disable: RscButtonSilent
		{
			idc = 5004;
			text = "";
			x = 0.55;
			y = 0.7;
			w = 0.1;
			h = 0.1;
			action = "closedialog 0; [] spawn client_fnc_phoneDisabled;";
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


