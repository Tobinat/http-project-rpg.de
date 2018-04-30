class sl_billboard_1: Building
	{
		model = "\PRPG_Data\models\billboard\billboard.p3d";
		scope = 2;
		displayName = "Billboard 1";
		vehicleclass = "kif_client";
		placement = "vertical";
                hiddenSelections[] = {"camo1"};
                hiddenSelectionsTextures[]={"\PRPG_Data\models\billboard\texture\1.paa"};
                class Reflectors
		{
			class L01
			{
				color[] = {3000,3000,3000};
				ambient[] = {5,5,5};
				position = "L01";
				direction = "L01_end";
				hitpoint = "L01";
				selection = "L01";
				size = 1;
				innerAngle = 0;
				outerAngle = 120;
				coneFadeCoef = 10;
				intensity = 0.5;
				useFlare = "true";
				dayLight = "false";
				flareSize = 1;
				class Attenuation
				{
					start = 50;
					constant = 0;
					linear = 0;
					quadratic = 1;
					hardLimitStart = 5;
					hardLimitEnd = 10;
				};
			};
			class L02
			{
				color[] = {3000,3000,3000};
				ambient[] = {5,5,5};
				position = "L02";
				direction = "L02_end";
				hitpoint = "L02";
				selection = "L02";
				size = 1;
				innerAngle = 0;
				outerAngle = 120;
				coneFadeCoef = 10;
				intensity = 1.6;
				useFlare = "true";
				dayLight = "false";
				flareSize = 1;
				class Attenuation
				{
					start = 50;
					constant = 0;
					linear = 0;
					quadratic = 1;
					hardLimitStart = 5;
					hardLimitEnd = 10;
				};
			};
			class L03
			{
				color[] = {3000,3000,3000};
				ambient[] = {5,5,5};
				position = "L03";
				direction = "L03_end";
				hitpoint = "L03";
				selection = "L03";
				size = 1;
				innerAngle = 0;
				outerAngle = 120;
				coneFadeCoef = 10;
				intensity = 1.6;
				useFlare = "true";
				dayLight = "false";
				flareSize = 1;
				class Attenuation
				{
					start = 50;
					constant = 0;
					linear = 0;
					quadratic = 1;
					hardLimitStart = 5;
					hardLimitEnd = 10;
				};
			};
			class L04
			{
				color[] = {3000,3000,3000};
				ambient[] = {5,5,5};
				position = "L04";
				direction = "L04_end";
				hitpoint = "L04";
				selection = "L04";
				size = 1;
				innerAngle = 0;
				outerAngle = 120;
				coneFadeCoef = 10;
				intensity = 1.6;
				useFlare = "true";
				dayLight = "false";
				flareSize = 1;
				class Attenuation
				{
					start = 50;
					constant = 0;
					linear = 0;
					quadratic = 1;
					hardLimitStart = 5;
					hardLimitEnd = 10;
				};
			};
			class L05
			{
				color[] = {3000,3000,3000};
				ambient[] = {5,5,5};
				position = "L05";
				direction = "L05_end";
				hitpoint = "L05";
				selection = "L05";
				size = 1;
				innerAngle = 0;
				outerAngle = 120;
				coneFadeCoef = 10;
				intensity = 1.6;
				useFlare = "true";
				dayLight = "false";
				flareSize = 1;
				class Attenuation
				{
					start = 50;
					constant = 0;
					linear = 0;
					quadratic = 1;
					hardLimitStart = 5;
					hardLimitEnd = 10;
				};
			};
		};
	};
class sl_billboard_2: sl_billboard_1
{
		displayName = "Billboard 2";
		vehicleclass = "kif_client";
		placement = "vertical";
                hiddenSelections[] = {"camo1"};
                hiddenSelectionsTextures[]={"\PRPG_Data\models\billboard\texture\2.paa"};
};



class kif_speedcam: Building
	{
		model = "\PRPG_Data\models\speedcam\speedcam.p3d";
		scope = 2;
		displayName = "Speed Camera";
		vehicleclass = "kif_client";
		placement = "vertical";
		/*class Reflectors
		{
			class Flash
			{
				color[] = {3000,3000,3000};
				ambient[] = {5,5,5};
				position = "flash_start";
				direction = "flash_end";
				hitpoint = "flash";
				selection = "flash";
				size = 1;
				innerAngle = 100;
				outerAngle = 179;
				coneFadeCoef = 10;
				intensity = 1.6;
				useFlare = "true";
				dayLight = "true";
				flareSize = 1;
				class Attenuation
				{
					start = 50;
					constant = 0;
					linear = 0;
					quadratic = 1;
					hardLimitStart = 100;
					hardLimitEnd = 200;
				};
			};
		};*/
	};
