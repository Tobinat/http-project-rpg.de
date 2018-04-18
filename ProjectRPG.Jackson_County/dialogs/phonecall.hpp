// phone center [0.34, 0.183, 0.312, 0.618]; 

class phoneTapMenu {
	idd = 1111;
	name= "phoneTapMenu";
	movingEnable = 0;
	enableSimulation = 1;

	class controlsBackground {
	
		class MainBackground: client_RscText {
			colorBackground[] = {0.1058823529411765,0.1058823529411765,0.1058823529411765,0.8};
			idc = -1;
			x = 0.05; 
			y = 0.05;
			w = 0.50; 
			h = 0.6;
		};
	};


	class controls {
		
		class Title : client_RscTitle {

			idc = 1112;
			text = "Select player to tap into!";
			x = 0.05;
			y = 0.05;
			w = 0.6;
			h = (1 / 25);
		};
		

		class CraftList : client_RscListBox 
		{
			idc = 1113;
			text = "";
			sizeEx = 0.05;
			x = 0.10; 
			y = 0.10;
			w = 0.25; 
			h = 0.5;
		};

		class HomeOption : client_RscButtonMenu {
			idc = 1115;
			text = "Select";
			onButtonClick = "[] spawn client_fnc_requestCurrentCall;";
			x = -0.06 + (6.25 / 40) + (1 / 250 / (safezoneW / safezoneH));
			y = 0.65;
			w = (6.25 / 40);
			h = (1 / 25);
		};	

		class CraftOption : client_RscButtonMenu {
			idc = 1116;
			text = "Close";
			onButtonClick = "closedialog 0;";
			x = -0.06 + (13.25 / 40) + (1 / 250 / (safezoneW / safezoneH));
			y = 0.65;
			w = (6.25 / 40);
			h = (1 / 25);
		};	
	};
};


class client_CurrentPhoneCall_Menu
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
			text = "\cg_phone\Images\bg1.paa";
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
			x = 0.34;
			y = 0.183;
			w = 0.312;
			h = 0.518;
		};	

		class CallButton : client_RscButtonMenu {

			idc = -1;
			text = "Add";
			colorBackground[] = {0,0.535294117647059,0.2725490196078431,0.7};
			onButtonClick = "[] spawn client_fnc_CallMenu;";
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


