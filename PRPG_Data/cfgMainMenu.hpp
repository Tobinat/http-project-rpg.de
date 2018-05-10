class RscStandardDisplay;
class RscPicture;
class RscPictureKeepAspect;
class RscDisplayStart: RscStandardDisplay
{
	onLoad = "[""onLoad"",_this,""RscDisplayLoading"",'Loading'] call compile preprocessfilelinenumbers ""A3\ui_f\scripts\initDisplay.sqf"";";
	onUnload = "[""onUnload"",_this,""RscDisplayLoading"",'Loading'] call compile preprocessfilelinenumbers ""A3\ui_f\scripts\initDisplay.sqf"";";
	class controls
	{
		class Logo: RscPicture
		{
			idc = 1200;
			text = "\PRPG_Data\textures\loading\logo.paa";
			x = "0.350469 * safezoneW + safezoneX";
			y = "0.247 * safezoneH + safezoneY";
			w = "0.299062 * safezoneW";
			h = "0.462 * safezoneH";
		};
	};
};
class RscDisplayLoading
{
	class Variants
	{
		class LoadingOne
		{
			idd = -1;
			movingEnable = 0;
			class controls
			{
				class LoadingPic: RscPicture
				{
					text = "\PRPG_Data\textures\loading\logo.paa";
					x = "0.350469 * safezoneW + safezoneX";
					y = "0.247 * safezoneH + safezoneY";
					w = "0.299062 * safezoneW";
					h = "0.462 * safezoneH";
				};
			};
		};
	};
};
class RscDisplayMain: RscStandardDisplay
{
	class controlsBackground
	{
		class CA_ARMA2: RscPicture
		{
			text = "\PRPG_Data\textures\loading\logo.paa";
			x = "0.350469 * safezoneW + safezoneX";
			y = "0.247 * safezoneH + safezoneY";
			w = "0.299062 * safezoneW";
			h = "0.462 * safezoneH";
		};
	};
};