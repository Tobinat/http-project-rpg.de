class medicHUD
{    
	idd = 919191;
	name= "client_medic_hud";
	movingEnable = 0;
	enableSimulation = 1;
	fadein = 1;
	fadeout = 1;

	class controlsBackground {
		class client_RscTitleBackground:client_RscText {
			colorBackground[] = {0.1058823529411765,0.1058823529411765,0.1058823529411765,0.7};
			idc = -1;
			x = -0.1;
			y = -0.1;
			w = 1.2;
			h = 1.25;
		};
	};


	class controls
	{

		class Title : client_RscTitle {
			colorBackground[] = {0, 0, 0, 0};
			idc = 1336;
<<<<<<< HEAD
			text = "Vitaldatenmonitor";
=======
			text = "Medzinischer Monitor";
>>>>>>> f36961c47e99d47525bba1e03c6a6b7c89d594a1
			x = -0.05;
			y = -0.05;
			w = 1;
			h = (1 / 25);
		};

		class medicBASE
		{    

			shadow = 0;
			type = 0;
			style = 2096;
			sizeEx = 0.023;
			font = "PuristaMedium";
			colorBackground[] = {};
			colorText[] = {};
			tooltipColorText[] = {1,1,1,1};
			tooltipColorBox[] = {1,1,1,1};
			tooltipColorShade[] = {0,0,0,0.65};
			idc = 191911;
			text = "cg_mission_files\medic\medicBASE.paa";
			x = -0.08;
			y = 0;
			w = 1;
			h = 1;
		};  

		class medicHEAD
		{    

			shadow = 0;
			type = 0;
			style = 2096;
			sizeEx = 0.023;
			font = "PuristaMedium";
			colorBackground[] = {};
			colorText[] = {};
			tooltipColorText[] = {1,1,1,1};
			tooltipColorBox[] = {1,1,1,1};
			tooltipColorShade[] = {0,0,0,0.65};
			idc = 105;
			text = "cg_mission_files\medic\medicHEAD.paa";
			x = -0.08;
			y = 0;
			w = 1;
			h = 1;
		};  


		class medicBODY
		{    

			shadow = 0;
			type = 0;
			style = 2096;
			sizeEx = 0.023;
			font = "PuristaMedium";
			colorBackground[] = {};
			colorText[] = {};
			tooltipColorText[] = {1,1,1,1};
			tooltipColorBox[] = {1,1,1,1};
			tooltipColorShade[] = {0,0,0,0.65};
			idc = 106;
			text = "cg_mission_files\medic\medicBODY.paa";
			x = -0.08;
			y = 0;
			w = 1;
			h = 1;
		};  

		class medicNECK
		{    

			shadow = 0;
			type = 0;
			style = 2096;
			sizeEx = 0.023;
			font = "PuristaMedium";
			colorBackground[] = {};
			colorText[] = {};
			tooltipColorText[] = {1,1,1,1};
			tooltipColorBox[] = {1,1,1,1};
			tooltipColorShade[] = {0,0,0,0.65};
			idc = 107;
			text = "cg_mission_files\medic\medicNECK.paa";
			x = -0.08;
			y = 0;
			w = 1;
			h = 1;
		}; 

		class medicSPINE
		{    

			shadow = 0;
			type = 0;
			style = 2096;
			sizeEx = 0.023;
			font = "PuristaMedium";
			colorBackground[] = {};
			colorText[] = {};
			tooltipColorText[] = {1,1,1,1};
			tooltipColorBox[] = {1,1,1,1};
			tooltipColorShade[] = {0,0,0,0.65};
			idc = 108;
			text = "cg_mission_files\medic\medicSPINE.paa";
			x = -0.08;
			y = 0;
			w = 1;
			h = 1;
		};  

		class medicARMS
		{    

			shadow = 0;
			type = 0;
			style = 2096;
			sizeEx = 0.023;
			font = "PuristaMedium";
			colorBackground[] = {};
			colorText[] = {};
			tooltipColorText[] = {1,1,1,1};
			tooltipColorBox[] = {1,1,1,1};
			tooltipColorShade[] = {0,0,0,0.65};
			idc = 109;
			text = "cg_mission_files\medic\medicARMS.paa";
			x = -0.08;
			y = 0;
			w = 1;
			h = 1;
		};  

		class medicPELVIS
		{    

			shadow = 0;
			type = 0;
			style = 2096;
			sizeEx = 0.023;
			font = "PuristaMedium";
			colorBackground[] = {};
			colorText[] = {};
			tooltipColorText[] = {1,1,1,1};
			tooltipColorBox[] = {1,1,1,1};
			tooltipColorShade[] = {0,0,0,0.65};
			idc = 110;
			text = "cg_mission_files\medic\medicPELVIS.paa";
			x = -0.08;
			y = 0;
			w = 1;
			h = 1;
		}; 

		class medicFACE
		{    

			shadow = 0;
			type = 0;
			style = 2096;
			sizeEx = 0.023;
			font = "PuristaMedium";
			colorBackground[] = {};
			colorText[] = {};
			tooltipColorText[] = {1,1,1,1};
			tooltipColorBox[] = {1,1,1,1};
			tooltipColorShade[] = {0,0,0,0.65};
			idc = 111;
			text = "cg_mission_files\medic\medicFACE.paa";
			x = -0.08;
			y = 0;
			w = 1;
			h = 1;
		}; 

		class medicHANDS
		{    

			shadow = 0;
			type = 0;
			style = 2096;
			sizeEx = 0.023;
			font = "PuristaMedium";
			colorBackground[] = {};
			colorText[] = {};
			tooltipColorText[] = {1,1,1,1};
			tooltipColorBox[] = {1,1,1,1};
			tooltipColorShade[] = {0,0,0,0.65};
			idc = 112;
			text = "cg_mission_files\medic\medicHANDS.paa";
			x = -0.08;
			y = 0;
			w = 1;
			h = 1;
		}; 

		class medicLEGS
		{    

			shadow = 0;
			type = 0;
			style = 2096;
			sizeEx = 0.023;
			font = "PuristaMedium";
			colorBackground[] = {};
			colorText[] = {};
			tooltipColorText[] = {1,1,1,1};
			tooltipColorBox[] = {1,1,1,1};
			tooltipColorShade[] = {0,0,0,0.65};
			idc = 113;
			text = "cg_mission_files\medic\medicLEGS.paa";
			x = -0.08;
			y = 0;
			w = 1;
			h = 1;
		};  

		class medicORGANS
		{    

			shadow = 0;
			type = 0;
			style = 2096;
			sizeEx = 0.023;
			font = "PuristaMedium";
			colorBackground[] = {};
			colorText[] = {};
			tooltipColorText[] = {1,1,1,1};
			tooltipColorBox[] = {1,1,1,1};
			tooltipColorShade[] = {0,0,0,0.65};
			idc = 114;
			text = "cg_mission_files\medic\medicORGANS.paa";
			x = -0.08;
			y = 0;
			w = 1;
			h = 1;
		}; 

		class medicDISEASE
		{    

			shadow = 0;
			type = 0;
			style = 2096;
			sizeEx = 0.023;
			font = "PuristaMedium";
			colorBackground[] = {};
			colorText[] = {};
			tooltipColorText[] = {1,1,1,1};
			tooltipColorBox[] = {1,1,1,1};
			tooltipColorShade[] = {0,0,0,0.65};
			idc = 115;
			text = "cg_mission_files\medic\medicDISEASE.paa";
			x = -0.08;
			y = 0;
			w = 1;
			h = 1;
		}; 



		class HeadText : client_RscTitle {
			colorBackground[] = {0, 0, 0, 0};
			idc = 5;
<<<<<<< HEAD
			text = "Kopfverletzung";
=======
			text = "Kopfverletzungen";
>>>>>>> f36961c47e99d47525bba1e03c6a6b7c89d594a1
			x = 0.45; 
			y = -0.05;
			w = 0.55; 
			h = 0.05;
		};

		class HeadText1: RscButtonMedicSystem
		{
			idc = 6;
<<<<<<< HEAD
			text = "Keine Wunden / Verletzungen";
=======
			text = "Keinerlei verletzungen";
>>>>>>> f36961c47e99d47525bba1e03c6a6b7c89d594a1
			x = 0.45; 
			y = 0;
			w = 0.55; 
			h = 0.05;
		};

		class NeckText: client_RscTitle {
			colorBackground[] = {0, 0, 0, 0};
			idc = 7;
			text = "Nackenverletzungen";
			x = 0.45; 
			y = 0.05;
			w = 0.55; 
			h = 0.05;
		};

		class NeckText1: RscButtonMedicSystem 
		{
			idc = 8;
<<<<<<< HEAD
			text = "Keine Wunden / Verletzungen";
=======
			text = "Keinerlei verletzungen";
>>>>>>> f36961c47e99d47525bba1e03c6a6b7c89d594a1
			x = 0.45; 
			y = 0.1;
			w = 0.55; 
			h = 0.05;
		};

		class BodyText: client_RscTitle {
			colorBackground[] = {0, 0, 0, 0};
			idc = 9;
<<<<<<< HEAD
			text = "Torsoverletzungen";
=======
			text = "Torsowunden";
>>>>>>> f36961c47e99d47525bba1e03c6a6b7c89d594a1
			x = 0.45; 
			y = 0.15;
			w = 0.55; 
			h = 0.05;
		};


		class BodyText1: RscButtonMedicSystem 
		{
			idc = 10;
<<<<<<< HEAD
			text = "Keine Wunden / Verletzungen";
=======
			text = "Keinerlei verletzungen";
>>>>>>> f36961c47e99d47525bba1e03c6a6b7c89d594a1
			x = 0.45; 
			y = 0.2;
			w = 0.55; 
			h = 0.05;
		};

		class SpinalText: client_RscTitle {
			colorBackground[] = {0, 0, 0, 0};
			idc = 11;
<<<<<<< HEAD
			text = "Rueckenmarksverletzungen";
=======
			text = "Rückenmarksverletzungen";
>>>>>>> f36961c47e99d47525bba1e03c6a6b7c89d594a1
			x = 0.45; 
			y = 0.25;
			w = 0.55; 
			h = 0.05;
		};


		class SpineText1: RscButtonMedicSystem 
		{
			idc = 12;
<<<<<<< HEAD
			text = "Keine Wunden / Verletzungen";
=======
			text = "Keinerlei verletzungen";
>>>>>>> f36961c47e99d47525bba1e03c6a6b7c89d594a1
			x = 0.45; 
			y = 0.3;
			w = 0.55; 
			h = 0.05;
		};


		class ArmText: client_RscTitle {
			colorBackground[] = {0, 0, 0, 0};
			idc = 13;
<<<<<<< HEAD
			text = "Handverletzungen";
=======
			text = "Armverltzungen";
>>>>>>> f36961c47e99d47525bba1e03c6a6b7c89d594a1
			x = 0.45; 
			y = 0.35;
			w = 0.55; 
			h = 0.05;
		};


		class ArmText1: RscButtonMedicSystem 
		{
			idc = 14;
<<<<<<< HEAD
			text = "Keine Wunden / Verletzungen";
=======
			text = "Keinerlei verletzungen";
>>>>>>> f36961c47e99d47525bba1e03c6a6b7c89d594a1
			x = 0.45; 
			y = 0.4;
			w = 0.55; 
			h = 0.05;
		};


		class LegText: client_RscTitle {
			colorBackground[] = {0, 0, 0, 0};
			idc = 15;
<<<<<<< HEAD
			text = "Handverletzung";
=======
			text = "Beinverletzungen";
>>>>>>> f36961c47e99d47525bba1e03c6a6b7c89d594a1
			x = 0.45; 
			y = 0.45;
			w = 0.55; 
			h = 0.05;
		};

		class LegText1: RscButtonMedicSystem 
		{
			idc = 16;
<<<<<<< HEAD
			text = "Keine Wunden / Verletzungen";
=======
			text = "Keinerlei verletzungen";
>>>>>>> f36961c47e99d47525bba1e03c6a6b7c89d594a1
			x = 0.45; 
			y = 0.5;
			w = 0.55; 
			h = 0.05;
		};

		class PelvisText: client_RscTitle {
			colorBackground[] = {0, 0, 0, 0};
			idc = 17;
			text = "Beckenverletzungen";
			x = 0.45; 
			y = 0.55;
			w = 0.55; 
			h = 0.05;
		};

		class PelvisText1: RscButtonMedicSystem 
		{
			idc = 18;
<<<<<<< HEAD
			text = "Keine Wunden / Verletzungen";
=======
			text = "Keinerlei verletzungen";
>>>>>>> f36961c47e99d47525bba1e03c6a6b7c89d594a1
			x = 0.45; 
			y = 0.6;
			w = 0.55; 
			h = 0.05;
		};

		class FacialText: client_RscTitle {
			colorBackground[] = {0, 0, 0, 0};
			idc = 19;
<<<<<<< HEAD
			text = "Gesichtsverletzungen";
=======
			text = "Gesichtswunden";
>>>>>>> f36961c47e99d47525bba1e03c6a6b7c89d594a1
			x = 0.45; 
			y = 0.65;
			w = 0.55; 
			h = 0.05;
		};

		class FacialText1: RscButtonMedicSystem 
		{
			idc = 20;
<<<<<<< HEAD
			text = "Keine Wunden / Verletzungen";
=======
			text = "Keinerlei verletzungen";
>>>>>>> f36961c47e99d47525bba1e03c6a6b7c89d594a1
			x = 0.45; 
			y = 0.7;
			w = 0.55; 
			h = 0.05;
		};

		class LegsText: client_RscTitle {
			colorBackground[] = {0, 0, 0, 0};
			idc = 21;
			text = "Beinwunden";
			x = 0.45; 
			y = 0.75;
			w = 0.55; 
			h = 0.05;
		};

		class LegsText1: RscButtonMedicSystem 
		{
			idc = 22;
<<<<<<< HEAD
			text = "Keine Wunden / Verletzungen";
=======
			text = "Keinerlei verletzungen";
>>>>>>> f36961c47e99d47525bba1e03c6a6b7c89d594a1
			x = 0.45; 
			y = 0.8;
			w = 0.55; 
			h = 0.05;
		};

		class OrganText: client_RscTitle {
			colorBackground[] = {0, 0, 0, 0};
			idc = 23;
<<<<<<< HEAD
			text = "Organverletzungen";
=======
			text = "Organschäden";
>>>>>>> f36961c47e99d47525bba1e03c6a6b7c89d594a1
			x = 0.45; 
			y = 0.85;
			w = 0.55; 
			h = 0.05;
		};

		class OrganText1: RscButtonMedicSystem 
		{
			idc = 24;
<<<<<<< HEAD
			text = "Keine Wunden / Verletzungen";
=======
			text = "Keinerlei verletzungen";
>>>>>>> f36961c47e99d47525bba1e03c6a6b7c89d594a1
			x = 0.45; 
			y = 0.9;
			w = 0.55; 
			h = 0.05;
		};

		class diseaseText: client_RscTitle {
			colorBackground[] = {0, 0, 0, 0};
			idc = 25;
			text = "Krankheiten";
			x = 0.45; 
			y = 0.95;
			w = 0.55; 
			h = 0.05;
		};

		class diseaseText1: RscButtonMedicSystem 
		{
			idc = 26;
			text = "Keine Krankheiten";
			x = 0.45; 
			y = 1;
			w = 0.55; 
			h = 0.05;
		};

		class healplayer1: RscButtonMedicSystem 
		{
			idc = 27;
			text = "Heilen";
			onButtonClick = "[] spawn client_fnc_bandagetarget;";
			x = 0.45; 
			y = 1.05;
			w = 0.55; 
			h = 0.05;
		};

	};
};

