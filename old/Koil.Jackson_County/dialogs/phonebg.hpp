
class phonebg {
	idd = 537;
	name= "phoneBG";
	onLoad = "[] spawn client_fnc_loadBG; [] spawn client_fnc_loadSkin; uiNamespace setVariable [""phonemenu"", _this select 0]; [""nobg""] spawn client_fnc_fadephone;";	
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

		class phonebg1: RscPicture
		{
			idc = 80001;
			text = "\cg_phone\Images\80001.paa";
			style = 2096;
			x = 0.4;
			y = 0;
			w = 1;
			h = 1;
		};

		class phoneMain2: RscPicture
		{
			idc = 85442;
			text = "\cg_phone\Images\bg1.paa";
			style = 2096;
			x = 0.4;
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
			action = "closedialog 0;";
		};

		class BackgroundTypes : client_RscListBoxClear
		{
			idc = 911;
			text = "";
			sizeEx = 0.05;
			onLBSelChanged = "[] spawn client_fnc_updateBG;";
			x = 0.35;
			y = 0.175;
			w = 0.301;
			h = 0.25;
		};

		class SaveSelected : client_RscButtonMenu {
			idc = 1115;
			text = "Save BG";
			onButtonClick = "[] spawn client_fnc_saveBG;";
			x = 0.4;
			y = 0.45;
			w = 0.15;
			h = 0.05;
		};	


		class skinTypes : client_RscListBoxClear
		{
			idc = 912;
			text = "";
			sizeEx = 0.05;
			onLBSelChanged = "[] spawn client_fnc_updateSkin;";
			x = 0.35;
			y = 0.5;
			w = 0.301;
			h = 0.2;
		};

		class SaveSelectedSkin : client_RscButtonMenu {
			idc = 1176;
			text = "Save Skin";
			onButtonClick = "[] spawn client_fnc_saveSkin;";
			x = 0.4;
			y = 0.74;
			w = 0.15;
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