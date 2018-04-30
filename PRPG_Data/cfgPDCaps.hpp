class H_Cap_blk;
	class kif_police_black: H_Cap_blk
	{
		scope=2;
		weaponPoolAvailable=1;
		displayName="Black Police Cap";
		picture="\PRPG_Data\textures\icons\sl_logo.paa";
		model="\a3\characters_f\Common\capb";
		hiddenSelections[]=
		{
			"camo"
		};
		hiddenSelectionsTextures[]=
		{
			"\PRPG_Data\textures\clothing\caps\police_black.paa"
		};
		class ItemInfo: HeadgearItem
		{
			mass=20;
			uniformModel="\a3\characters_f\Common\capb";
			modelSides[]={3,1};
			armor=5;
			passThrough=0.2;
			hiddenSelections[]=
			{
				"camo"
			};
		};
	};
    class kif_police_blue: kif_police_black
    {
        displayName="Black Police Cap";
        hiddenSelectionsTextures[]=
		{
			"\PRPG_Data\textures\clothing\caps\police_blue.paa"
		};
    };
    class kif_police_green: kif_police_black
    {
        displayName="Green Police Cap";
        hiddenSelectionsTextures[]=
		{
			"\PRPG_Data\textures\clothing\caps\police_green.paa"
		};
    };