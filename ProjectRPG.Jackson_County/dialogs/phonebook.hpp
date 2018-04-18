


class phoneBook {
	idd = 9999;
	name= "phoneBook";
	onLoad = "uiNamespace setVariable [""phonemenu"", _this select 0]; [player] spawn client_fnc_updatePhonebook; [""nobg""] spawn client_fnc_fadephone;";
	movingEnable = 0;
	enableSimulation = 1;

	class controls {


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

		class PhoneBookTypes : client_RscListBoxClear
		{
			idc = 9001;
			text = "";
			sizeEx = 0.05;
			onLBSelChanged = "[] spawn client_fnc_updatePhoneBookPlayers";
			x = 0.35;
			y = 0.175;
			w = 0.301;
			h = 0.52;
		};

		class PhoneBookPlayers : client_RscListBox
		{
			idc = 5338;
			text = "";
			sizeEx = 0.05;
			x = 0.75;
			y = 0.175;
			w = 0.301;
			h = 0.52;
		};

		class CallSelected : client_RscButtonMenu {
			idc = 1115;
			text = "Call Player";
			onButtonClick = "[0] spawn client_fnc_CallSomebody;";
			x = 0.75;
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
