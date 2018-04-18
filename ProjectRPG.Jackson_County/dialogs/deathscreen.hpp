class DeathScreen
{
	idd = 7300;
	name = "client_Death_Screen";
	movingEnabled = 0;
	onload = "_MedicBtn = ((findDisplay 7300) displayCtrl 7303);_MedicBtn ctrlEnable true;";
	enableSimulation = 1;
	
	class controlsBackground
	{
	};
	
	class Controls
	{

		class RespawnBtn : client_RscButtonMenu
		{
			idc = 7302;
			x = 0.511518 * safezoneW + safezoneX;
			y = 0.706043 * safezoneH + safezoneY;
			w = 0.0878542 * safezoneW;
			h = 0.0461907 * safezoneH;
			text = "Respawn";
			onButtonClick = "closeDialog 0; [] call client_fnc_startFresh;";
			colorBackground[] = {0, 0, 0, 1};
			class Attributes 
			{
				align = "center";
			};
		};
		
		class MedicBtn : client_RscButtonMenu
		{
			idc = 7303;
			x = 0.40029 * safezoneW + safezoneX;
			y = 0.706497 * safezoneH + safezoneY;
			w = 0.0867957 * safezoneW;
			h = 0.0461907 * safezoneH;
			onButtonClick = "[player] remoteExec [""server_fnc_requestMedic"",2]; _MedicBtn = ((findDisplay 7300) displayCtrl 7303); _MedicBtn ctrlEnable false; ";
			text = "Request Medic";
			colorBackground[] = {0, 0, 0, 1};
			class Attributes 
			{
				align = "center";
			};
		};
		
		class respawnTime : client_RscStructuredText
		{
			idc = 7301;
			type = 13;
			style = 0;
			text = "You are severely injured!";
			size = "(			(			(			((safezoneW / safezoneH) min 1.2) / 1.2) / 25) * 1)";
			colorText[] = {1, 1, 1, 1.0};
			class Attributes {
				font = "PuristaMedium";
				color = "#ffffff";
				align = "center";
				shadow = 1;
			};			

			sizeEx = 0.030;
			x = 0.275605 * safezoneW + safezoneX;
			y = 0.456074 * safezoneH + safezoneY;
			w = 0.447732 * safezoneW;
			h = 0.047851 * safezoneH;
			colorBackground[] = {0, 0, 0, 0};
		};

	};
};