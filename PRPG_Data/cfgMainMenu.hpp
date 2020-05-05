class RscStandardDisplay;
class RscActiveText;
class RscControlsGroup;
class RscPicture;
class RscButtonMenuMain;
class RscButton;


class RscDisplayMain: RscStandardDisplay
{
	enableDisplay=0;
	class Spotlight
	{
	};
	class controls
	{
		class Spotlight1
		{
		};
		class Spotlight2
		{
		};
		class Spotlight3
		{
		};
		class BackgroundSpotlightRight
		{
		};
		class BackgroundSpotlightLeft
		{
		};
		class BackgroundSpotlight
		{
		};
		class SpotlightPrev
		{
		};
		class SpotlightNext
		{
		};
		/*
		class TitleSingleplayer
		{
		};
		class TitleIconSingleplayer
		{
		};
		class GroupSingleplayer
		{
		};
		class JoinPRPG: RscButton
		{
			idc=99999999999;
			text="Join PRPG";
			size="1.25 * 	(pixelH * pixelGrid * 2)";
			style="0x02 + 0xC0";
			colorBackground[]={0,0,0,0};
			colorBackground2[]={1,1,1,1};
			class Attributes
			{
				align="center";
				color="#ffffff";
				font="PuristaLight";
				shadow=0;
				size=1;
			};
			class TextPos
			{
				left="0.1 * 		2 * 	(pixelW * pixelGrid * 2)";
				top="0.18 * 		2 * 	(pixelH * pixelGrid * 2)";
				right="0.1 * 		2 * 	(pixelW * pixelGrid * 2)";
				bottom="0.18 * 		2 * 	(pixelH * pixelGrid * 2)";
			};
			x="0.5 - (	5 + 2 * 	10) * 	(pixelW * pixelGrid * 2)";
			y="safezoneY + 2 * 	(pixelH * pixelGrid * 2)";
			w="10 * 	(pixelW * pixelGrid * 2)";
			h="2 * 	(pixelH * pixelGrid * 2)";
		};
		*/
	};
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