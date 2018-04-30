class RscStandardDisplay;
class RscDisplayMain: RscStandardDisplay
{
	class Spotlight
	{
		delete Bootcamp;
		delete EastWind;
		delete ApexProtocol;
		class StanLakeside
		{
			text = "WILLKOMMEN BEI PRPG";
			textIsQuote = 0;
			//picture = "\PRPG_Data\textures\loading\main_screen.paa";
			video = "";
			action = "_display = ctrlparent(_this select 0); ctrlactivate ((_display) displayctrl 105); _display = findDisplay 8; _control = _display displayctrl 159; ctrlActivate _control;_titleControl = _display displayCtrl 1000;_titleControl ctrlSetText 'Witaj na StanLakeside.pl!';";
			actionText = "WILLKOMMEN BEI PRPG";
			condition = "(getstatvalue 'BCFirstDeployment' == 0)";
		};
	};
	class controls {
			delete Spotlight1;
			//delete Spotlight2;
			delete Spotlight3;
			delete BackgroundSpotlightRight;
			delete BackgroundSpotlightLeft;
			delete BackgroundSpotlight;
		};
};