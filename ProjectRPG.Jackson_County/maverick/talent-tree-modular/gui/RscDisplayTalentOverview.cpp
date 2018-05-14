class TTM_GUI_RscDisplayTalentOverview {
    idd = 6600;
    movingEnable = 0;
    enableSimulation = 1;
    scriptPath = "maverick\talent-tree-modular\gui\RscDisplayTalentOverview.sqf";
    onLoad = "[_this, 'onLoad'] spawn TTM_GUI_master_script;";

    class controls {
		class RscText_1000: RscText
		{
			idc = 1000;
			x = 0.5 * GUI_GRID_W + GUI_GRID_X;
			y = 3 * GUI_GRID_H + GUI_GRID_Y;
			w = 39 * GUI_GRID_W;
			h = 21.5 * GUI_GRID_H;
			colorBackground[] = {0.12,0.14,0.16,0.8};
		};
		class RscText_1001: RscText
		{
			idc = 1001;
			x = 0.5 * GUI_GRID_W + GUI_GRID_X;
			y = 0.5 * GUI_GRID_H + GUI_GRID_Y;
			w = 4 * GUI_GRID_W;
			h = 3 * GUI_GRID_H;
			colorBackground[] = {0.99,0.49,0,1};
		};
		class RscText_1003: RscText
{
	idc = 1002;
	x = 4.5 * GUI_GRID_W + GUI_GRID_X;
	y = 3 * GUI_GRID_H + GUI_GRID_Y;
	w = 35 * GUI_GRID_W;
	h = 0.5 * GUI_GRID_H;
	colorBackground[] = {1,1,1,1};
};
		class textCurrentRank: RscStructuredText
		{
			idc = 3;

			x = 0 * GUI_GRID_W + GUI_GRID_X;
			y = -2 * GUI_GRID_H + GUI_GRID_Y;
			w = 5 * GUI_GRID_W;
			h = 4 * GUI_GRID_H;
			sizeEx = 2.7 * 0.04 * (0.04) * (0.04) * GUI_GRID_H;
		};
		class RscText_1002: RscText
		{
			idc = 1003;
			x = 4.5 * GUI_GRID_W + GUI_GRID_X;
			y = 0.5 * GUI_GRID_H + GUI_GRID_Y;
			w = 35 * GUI_GRID_W;
			h = 3 * GUI_GRID_H;
			colorBackground[] = {1,1,1,0.5};
		};
		class textRankName: RscText
		{
			idc = 4;
			shadow = 0;

			x = 5 * GUI_GRID_W + GUI_GRID_X;
			y = 0.5 * GUI_GRID_H + GUI_GRID_Y;
			w = 19.197 * GUI_GRID_W;
			h = 1 * GUI_GRID_H;
			sizeEx = 1.5 * 0.04 * 	(0.04) * GUI_GRID_H;
		};
		class textStatusInfo: RscText
		{
			idc = 5;
			shadow = 0;

			x = 5.12 * GUI_GRID_W + GUI_GRID_X;
			y = -0.5 * GUI_GRID_H + GUI_GRID_Y;
			w = 31.5 * GUI_GRID_W;
			h = 2.5 * GUI_GRID_H;
		};
		class RscText_1700: RscText
		{
			idc = 1006;
			x = 4.5 * GUI_GRID_W + GUI_GRID_X;
			y = 3 * GUI_GRID_H + GUI_GRID_Y;
			w = 35 * GUI_GRID_W;
			h = 0.5 * GUI_GRID_H;
			colorBackground[] = {1,1,1,1};
		};
		class progressRankProgress: RscProgress
		{
			idc = 6;
			colorBar[] = {0.99,0.49,0,1};

			x = 4.5 * GUI_GRID_W + GUI_GRID_X;
			y = 2.5 * GUI_GRID_H + GUI_GRID_Y;
			w = 35 * GUI_GRID_W;
			h = 0.5 * GUI_GRID_H;
		};
		class treeSkillsOverview: RscText
		{
			onTreeSelChanged = "[_this, 'onTreeSelectionChanged'] spawn TTM_GUI_master_script;";
			idc = 7;
			type = 12;
			default = 0;
			style = 2;
			blinkingPeriod = 0;
			picture = "";
			colorPicture[] = {1,1,1,1};
			colorPictureSelected[] = {1,1,1,1};
			colorPictureDisabled[] = {1,1,1,1};
			colorPictureRight[] = {1,1,1,1};
			colorPictureRightSelected[] = {1,1,1,1};
			colorPictureRightDisabled[] = {1,1,1,1};
			colorPictureLeft[] = {1,1,1,1};
			colorPictureLeftSelected[] = {1,1,1,1};
			colorPictureLeftDisabled[] = {1,1,1,1};
			font = "RobotoCondensed";
			rowHeight = 0.0439091;
			color[] = {1,1,1,1};
			colorSelect[] = {0.7,0.7,0.7,1};
			colorSelectBackground[] = {0,0,0,0.5};
			colorBorder[] = {0,0,0,0};
			borderSize = 0;
			colorMarked[] = {1,0.5,0,0.5};
			colorMarkedSelected[] = {1,0.5,0,1};
			colorSelectText[] = {1,1,1,1};
			colorMarkedText[] = {1,1,1,1};
			tooltipColorShade[] = {0,0,0,1};
			tooltipColorText[] = {1,1,1,1};
			tooltipColorBox[] = {1,1,1,1};
			multiselectEnabled = 1;
			expandOnDoubleclick = 1;
			hiddenTexture = "\A3\ui_f\data\gui\rsccommon\rsctree\hiddenTexture_ca.paa";
			expandedTexture = "\A3\ui_f\data\gui\rsccommon\rsctree\expandedTexture_ca.paa";
			maxHistoryDelay = 1;
			colorDisabled[] = {0,0,0,0};
			colorArrow[] = {0,0,0,0};

			x = 1 * GUI_GRID_W + GUI_GRID_X;
			y = 4 * GUI_GRID_H + GUI_GRID_Y;
			w = 17.5 * GUI_GRID_W;
			h = 20 * GUI_GRID_H;
			colorText[] = {1,1,1,1};
			colorBackground[] = {0,0,0,0.2};
			tooltip = "CT_TREE"; //--- ToDo: Localize;
		};
		
		
class textPerkName: RscText
{
	idc = 8;
	shadow = 2;

	text = "PERK NAME"; //--- ToDo: Localize;
	x = 19.5 * GUI_GRID_W + GUI_GRID_X;
	y = 5.5 * GUI_GRID_H + GUI_GRID_Y;
	w = 21.3788 * GUI_GRID_W;
	h = 1.5 * GUI_GRID_H;
	sizeEx = 2 * 0.04 * (0.04)*(0.04)*(0.04)*(0.04)* GUI_GRID_H;
};
class textPerkSubtitle: RscText
{
	idc = 9;
	shadow = 2;

	text = "PERK SUBTITLE"; //--- ToDo: Localize;
	x = 19.5 * GUI_GRID_W + GUI_GRID_X;
	y = 3 * GUI_GRID_H + GUI_GRID_Y;
	w = 16 * GUI_GRID_W;
	h = 2.5 * GUI_GRID_H;
};
		class textPerkDescription: RscStructuredText
		{
			idc = 11;
			shadow = 2;

			x = 19.5 * GUI_GRID_W + GUI_GRID_X;
			y = 7.5 * GUI_GRID_H + GUI_GRID_Y;
			w = 19.5 * GUI_GRID_W;
			h = 15 * GUI_GRID_H;
		};
		
		class RscButton_1600: RscButtonMenu
		{
			idc = 10;
			onButtonClick = "[_this, 'onButtonPurchaseClick'] spawn TTM_GUI_master_script;";
			enabled = 0;

			text = "PURCHASE"; //--- ToDo: Localize;
			x = 30.5 * GUI_GRID_W + GUI_GRID_X;
			y = 23 * GUI_GRID_H + GUI_GRID_Y;
			w = 8.5 * GUI_GRID_W;
			h = 1 * GUI_GRID_H;
			colorBackground[] = {0.12,0.14,0.16,1};
			class Attributes {
				align = "center";
			};
		
		
		};
    };
};