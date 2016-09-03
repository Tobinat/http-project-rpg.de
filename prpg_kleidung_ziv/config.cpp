#define private		0
#define protected		1
#define public		2

enum {
	 //  = 2,	// Error parsing: Empty enum name
	DESTRUCTENGINE = 2,
	DESTRUCTDEFAULT = 6,
	DESTRUCTWRECK = 7,
	DESTRUCTTREE = 3,
	DESTRUCTTENT = 4,
	STABILIZEDINAXISX = 1,
	STABILIZEDINAXESXYZ = 4,
	STABILIZEDINAXISY = 2,
	STABILIZEDINAXESBOTH = 3,
	DESTRUCTNO = 0,
	STABILIZEDINAXESNONE = 0,
	DESTRUCTMAN = 5,
	DESTRUCTBUILDING = 1,
};

class CfgPatches {
	class A3L_civ3 {
		units[] = {"C_man_1"};
		weapons[] = {};
		requiredVersion = 0.1;
		requiredAddons[] = {"A3_Characters_F"};
	};
};

class CfgVehicles {
	class C_man_1;	// External class reference
	class cg_awesome : C_man_1 {
		_generalMacro = "C_man_1";
		scope = public;
		nakedUniform = "U_BasicBody";
		uniformClass = "cg_awesome1";
		hiddenSelections[] = {"Camo"};
		hiddenSelectionsTextures[] = {"prpg_kleidung_ziv\Data\cg_awesome.paa"};
		displayName = "PRPG Awesome";
		author = "Koil";
	};

	class cg_dad : C_man_1 {
		_generalMacro = "C_man_1";
		scope = public;
		nakedUniform = "U_BasicBody";
		uniformClass = "cg_dad1";
		hiddenSelections[] = {"Camo"};
		hiddenSelectionsTextures[] = {"prpg_kleidung_ziv\Data\cg_dad.paa"};
		displayName = "PRPG Dad";
		author = "Koil";
	};

	class cg_deeznuts : C_man_1 {
		_generalMacro = "C_man_1";
		scope = public;
		nakedUniform = "U_BasicBody";
		uniformClass = "cg_deeznuts1";
		hiddenSelections[] = {"Camo"};
		hiddenSelectionsTextures[] = {"prpg_kleidung_ziv\Data\cg_deeznuts.paa"};
		displayName = "PRPG Deez Nuts";
		author = "Koil";
	};
	

	class cg_evolution : C_man_1 {
		_generalMacro = "C_man_1";
		scope = public;
		nakedUniform = "U_BasicBody";
		uniformClass = "cg_evolution1";
		hiddenSelections[] = {"Camo"};
		hiddenSelectionsTextures[] = {"prpg_kleidung_ziv\Data\cg_evolution.paa"};
		displayName = "PRPG Evolution";
		author = "Koil";
	};

	class cg_hearts : C_man_1 {
		_generalMacro = "C_man_1";
		scope = public;
		nakedUniform = "U_BasicBody";
		uniformClass = "cg_hearts1";
		hiddenSelections[] = {"Camo"};
		hiddenSelectionsTextures[] = {"prpg_kleidung_ziv\Data\cg_hearts.paa"};
		displayName = "PRPG Hearts";
		author = "Koil";
	};

	class cg_loading : C_man_1 {
		_generalMacro = "C_man_1";
		scope = public;
		nakedUniform = "U_BasicBody";
		uniformClass = "cg_loading1";
		hiddenSelections[] = {"Camo"};
		hiddenSelectionsTextures[] = {"prpg_kleidung_ziv\Data\cg_loading.paa"};
		displayName = "PRPG Loading";
		author = "Koil";
	};

	class cg_mayan : C_man_1 {
		_generalMacro = "C_man_1";
		scope = public;
		nakedUniform = "U_BasicBody";
		uniformClass = "cg_mayan1";
		hiddenSelections[] = {"Camo"};
		hiddenSelectionsTextures[] = {"prpg_kleidung_ziv\Data\cg_mayan.paa"};
		displayName = "PRPG Mayan";
		author = "Koil";
	};
	class cg_strippers : C_man_1 {
		_generalMacro = "C_man_1";
		scope = public;
		nakedUniform = "U_BasicBody";
		uniformClass = "cg_strippers1";
		hiddenSelections[] = {"Camo"};
		hiddenSelectionsTextures[] = {"prpg_kleidung_ziv\Data\cg_strippers.paa"};
		displayName = "PRPG Strippers";
		author = "Koil";
	};


	class cg_beats : C_man_1 {
		_generalMacro = "C_man_1";
		scope = public;
		nakedUniform = "U_BasicBody";
		uniformClass = "cg_beats1";
		hiddenSelections[] = {"Camo"};
		hiddenSelectionsTextures[] = {"prpg_kleidung_ziv\Data\cg_beats.paa"};
		displayName = "PRPG Beats";
		author = "Koil";
	};
	class cg_burgerking : C_man_1 {
		_generalMacro = "C_man_1";
		scope = public;
		nakedUniform = "U_BasicBody";
		uniformClass = "cg_burgerking1";
		hiddenSelections[] = {"Camo"};
		hiddenSelectionsTextures[] = {"prpg_kleidung_ziv\Data\cg_burgerking.paa"};
		displayName = "PRPG Burgerking";
		author = "Koil";
	};
	class cg_lego : C_man_1 {
		_generalMacro = "C_man_1";
		scope = public;
		nakedUniform = "U_BasicBody";
		uniformClass = "cg_lego1";
		hiddenSelections[] = {"Camo"};
		hiddenSelectionsTextures[] = {"prpg_kleidung_ziv\Data\cg_lego.paa"};
		displayName = "PRPG Lego";
		author = "Koil";
	};
	class cg_mario : C_man_1 {
		_generalMacro = "C_man_1";
		scope = public;
		nakedUniform = "U_BasicBody";
		uniformClass = "cg_mario1";
		hiddenSelections[] = {"Camo"};
		hiddenSelectionsTextures[] = {"prpg_kleidung_ziv\Data\cg_mario.paa"};
		displayName = "PRPG Mario";
		author = "Koil";
	};
	class cg_pepsi : C_man_1 {
		_generalMacro = "C_man_1";
		scope = public;
		nakedUniform = "U_BasicBody";
		uniformClass = "cg_pepsi1";
		hiddenSelections[] = {"Camo"};
		hiddenSelectionsTextures[] = {"prpg_kleidung_ziv\Data\cg_pepsi.paa"};
		displayName = "PRPG Pepsi";
		author = "Koil";
	};
	class cg_ea : C_man_1 {
		_generalMacro = "C_man_1";
		scope = public;
		nakedUniform = "U_BasicBody";
		uniformClass = "cg_ea1";
		hiddenSelections[] = {"Camo"};
		hiddenSelectionsTextures[] = {"prpg_kleidung_ziv\Data\cg_ea.paa"};
		displayName = "PRPG EA";
		author = "Koil";
	};
	class cg_ferrari : C_man_1 {
		_generalMacro = "C_man_1";
		scope = public;
		nakedUniform = "U_BasicBody";
		uniformClass = "cg_ferrari1";
		hiddenSelections[] = {"Camo"};
		hiddenSelectionsTextures[] = {"prpg_kleidung_ziv\Data\cg_ferrari.paa"};
		displayName = "PRPG Ferrari";
		author = "Koil";
	};
	class cg_fightclub : C_man_1 {
		_generalMacro = "C_man_1";
		scope = public;
		nakedUniform = "U_BasicBody";
		uniformClass = "cg_fightclub1";
		hiddenSelections[] = {"Camo"};
		hiddenSelectionsTextures[] = {"prpg_kleidung_ziv\Data\cg_fightclub.paa"};
		displayName = "PRPG Fightclub";
		author = "Koil";
	};
	class cg_gameover : C_man_1 {
		_generalMacro = "C_man_1";
		scope = public;
		nakedUniform = "U_BasicBody";
		uniformClass = "cg_gameover1";
		hiddenSelections[] = {"Camo"};
		hiddenSelectionsTextures[] = {"prpg_kleidung_ziv\Data\cg_gameover.paa"};
		displayName = "PRPG Game Over";
		author = "Koil";
	};
	class cg_gamerepeat : C_man_1 {
		_generalMacro = "C_man_1";
		scope = public;
		nakedUniform = "U_BasicBody";
		uniformClass = "cg_gamerepeat1";
		hiddenSelections[] = {"Camo"};
		hiddenSelectionsTextures[] = {"prpg_kleidung_ziv\Data\cg_gamerepeat.paa"};
		displayName = "PRPG Game Repeat";
		author = "Koil";
	};
	class cg_homer : C_man_1 {
		_generalMacro = "C_man_1";
		scope = public;
		nakedUniform = "U_BasicBody";
		uniformClass = "cg_homer1";
		hiddenSelections[] = {"Camo"};
		hiddenSelectionsTextures[] = {"prpg_kleidung_ziv\Data\cg_homer.paa"};
		displayName = "PRPG Homer";
		author = "Koil";
	};

	class cg_kfc : C_man_1 {
		_generalMacro = "C_man_1";
		scope = public;
		nakedUniform = "U_BasicBody";
		uniformClass = "cg_kfc1";
		hiddenSelections[] = {"Camo"};
		hiddenSelectionsTextures[] = {"prpg_kleidung_ziv\Data\cg_kfc.paa"};
		displayName = "PRPG KFC";
		author = "Koil";
	};
	class cg_lambo : C_man_1 {
		_generalMacro = "C_man_1";
		scope = public;
		nakedUniform = "U_BasicBody";
		uniformClass = "cg_lambo1";
		hiddenSelections[] = {"Camo"};
		hiddenSelectionsTextures[] = {"prpg_kleidung_ziv\Data\cg_lambo.paa"};
		displayName = "PRPG Lambo";
		author = "Koil";
	};
	class cg_lsd : C_man_1 {
		_generalMacro = "C_man_1";
		scope = public;
		nakedUniform = "U_BasicBody";
		uniformClass = "cg_lsd1";
		hiddenSelections[] = {"Camo"};
		hiddenSelectionsTextures[] = {"prpg_kleidung_ziv\Data\cg_lsd.paa"};
		displayName = "PRPG LSD";
		author = "Koil";
	};
	class cg_masterrace : C_man_1 {
		_generalMacro = "C_man_1";
		scope = public;
		nakedUniform = "U_BasicBody";
		uniformClass = "cg_masterrace1";
		hiddenSelections[] = {"Camo"};
		hiddenSelectionsTextures[] = {"prpg_kleidung_ziv\Data\cg_masterrace.paa"};
		displayName = "PRPG PC Master Race";
		author = "Koil";
	};
	class cg_pika : C_man_1 {
		_generalMacro = "C_man_1";
		scope = public;
		nakedUniform = "U_BasicBody";
		uniformClass = "cg_pika1";
		hiddenSelections[] = {"Camo"};
		hiddenSelectionsTextures[] = {"prpg_kleidung_ziv\Data\cg_pika.paa"};
		displayName = "PRPG Pikachu";
		author = "Koil";
	};
	class cg_turtles : C_man_1 {
		_generalMacro = "C_man_1";
		scope = public;
		nakedUniform = "U_BasicBody";
		uniformClass = "cg_turtles1";
		hiddenSelections[] = {"Camo"};
		hiddenSelectionsTextures[] = {"prpg_kleidung_ziv\Data\cg_turtles.paa"};
		displayName = "PRPG Ninja Turtles";
		author = "Koil";
	};
	//class C_man_1;	// External class reference

	class cg_chickens : C_man_1 {
		_generalMacro = "C_man_1";
		scope = public;
		nakedUniform = "U_BasicBody";
		uniformClass = "cg_chickens1";
		hiddenSelections[] = {"Camo"};
		hiddenSelectionsTextures[] = {"prpg_kleidung_ziv\Data\cg_chickens.paa"};
		displayName = "PRPG Chickens";
		author = "Koil";
	};
	class cg_et : C_man_1 {
		_generalMacro = "C_man_1";
		scope = public;
		nakedUniform = "U_BasicBody";
		uniformClass = "cg_et1";
		hiddenSelections[] = {"Camo"};
		hiddenSelectionsTextures[] = {"prpg_kleidung_ziv\Data\cg_et.paa"};
		displayName = "PRPG ET";
		author = "Koil";
	};
	class cg_hand : C_man_1 {
		_generalMacro = "C_man_1";
		scope = public;
		nakedUniform = "U_BasicBody";
		uniformClass = "cg_hand1";
		hiddenSelections[] = {"Camo"};
		hiddenSelectionsTextures[] = {"prpg_kleidung_ziv\Data\cg_hand.paa"};
		displayName = "PRPG Hand";
		author = "Koil";
	};
	class cg_illuminati : C_man_1 {
		_generalMacro = "C_man_1";
		scope = public;
		nakedUniform = "U_BasicBody";
		uniformClass = "cg_illuminati1";
		hiddenSelections[] = {"Camo"};
		hiddenSelectionsTextures[] = {"prpg_kleidung_ziv\Data\cg_illuminati.paa"};
		displayName = "PRPG Illuminati";
		author = "Koil";
	};
	class cg_steam : C_man_1 {
		_generalMacro = "C_man_1";
		scope = public;
		nakedUniform = "U_BasicBody";
		uniformClass = "cg_steam1";
		hiddenSelections[] = {"Camo"};
		hiddenSelectionsTextures[] = {"prpg_kleidung_ziv\Data\cg_steam.paa"};
		displayName = "PRPG Steam";
		author = "Koil";
	};
	class cg_stoned : C_man_1 {
		_generalMacro = "C_man_1";
		scope = public;
		nakedUniform = "U_BasicBody";
		uniformClass = "cg_stoned1";
		hiddenSelections[] = {"Camo"};
		hiddenSelectionsTextures[] = {"prpg_kleidung_ziv\Data\cg_stoned.paa"};
		displayName = "PRPG Stoned";
		author = "Koil";
	};

	class cg_taylorswift : C_man_1 {
		_generalMacro = "C_man_1";
		scope = public;
		nakedUniform = "U_BasicBody";
		uniformClass = "cg_taylorswift1";
		hiddenSelections[] = {"Camo"};
		hiddenSelectionsTextures[] = {"prpg_kleidung_ziv\Data\cg_taylorswift.paa"};
		displayName = "PRPG Taylow Swift";
		author = "Koil";
	};

	class cg_upyours : C_man_1 {
		_generalMacro = "C_man_1";
		scope = public;
		nakedUniform = "U_BasicBody";
		uniformClass = "cg_upyours1";
		hiddenSelections[] = {"Camo"};
		hiddenSelectionsTextures[] = {"prpg_kleidung_ziv\Data\cg_upyours.paa"};
		displayName = "PRPG Up Yours";
		author = "Koil";
	};
	class cg_woods : C_man_1 {
		_generalMacro = "C_man_1";
		scope = public;
		nakedUniform = "U_BasicBody";
		uniformClass = "cg_woods1";
		hiddenSelections[] = {"Camo"};
		hiddenSelectionsTextures[] = {"prpg_kleidung_ziv\Data\cg_woods.paa"};
		displayName = "PRPG 2TW";
		author = "Koil";
	};
	
	class cg_got : C_man_1 {
		_generalMacro = "C_man_1";
		scope = public;
		nakedUniform = "U_BasicBody";
		uniformClass = "cg_got1";
		hiddenSelections[] = {"Camo"};
		hiddenSelectionsTextures[] = {"prpg_kleidung_ziv\Data\cg_got.paa"};
		displayName = "PRPG GOT";
		author = "Koil";
	};

	class cg_wow : C_man_1 {
		_generalMacro = "C_man_1";
		scope = public;
		nakedUniform = "U_BasicBody";
		uniformClass = "cg_wow1";
		hiddenSelections[] = {"Camo"};
		hiddenSelectionsTextures[] = {"prpg_kleidung_ziv\Data\cg_wow.paa"};
		displayName = "PRPG WoW";
		author = "Koil";
	};


	class cg_bb : C_man_1 {
		_generalMacro = "C_man_1";
		scope = public;
		nakedUniform = "U_BasicBody";
		uniformClass = "cg_bb1";
		hiddenSelections[] = {"Camo"};
		hiddenSelectionsTextures[] = {"prpg_kleidung_ziv\Data\cg_bb.paa"};
		displayName = "PRPG BB";
		author = "Koil";
	};
	class cg_bipolar : C_man_1 {
		_generalMacro = "C_man_1";
		scope = public;
		nakedUniform = "U_BasicBody";
		uniformClass = "cg_bipolar1";
		hiddenSelections[] = {"Camo"};
		hiddenSelectionsTextures[] = {"prpg_kleidung_ziv\Data\cg_bipolar.paa"};
		displayName = "PRPG Bipolar";
		author = "Koil";
	};
	class cg_catvideos : C_man_1 {
		_generalMacro = "C_man_1";
		scope = public;
		nakedUniform = "U_BasicBody";
		uniformClass = "cg_catvideos1";
		hiddenSelections[] = {"Camo"};
		hiddenSelectionsTextures[] = {"prpg_kleidung_ziv\Data\cg_catvideos.paa"};
		displayName = "PRPG Cat Videos";
		author = "Koil";
	};
	class cg_condoms : C_man_1 {
		_generalMacro = "C_man_1";
		scope = public;
		nakedUniform = "U_BasicBody";
		uniformClass = "cg_condoms1";
		hiddenSelections[] = {"Camo"};
		hiddenSelectionsTextures[] = {"prpg_kleidung_ziv\Data\cg_condoms.paa"};
		displayName = "PRPG Condoms";
		author = "Koil";
	};
	class cg_csgo : C_man_1 {
		_generalMacro = "C_man_1";
		scope = public;
		nakedUniform = "U_BasicBody";
		uniformClass = "cg_csgo1";
		hiddenSelections[] = {"Camo"};
		hiddenSelectionsTextures[] = {"prpg_kleidung_ziv\Data\cg_csgo.paa"};
		displayName = "PRPG CSGO";
		author = "Koil";
	};
	class cg_jason : C_man_1 {
		_generalMacro = "C_man_1";
		scope = public;
		nakedUniform = "U_BasicBody";
		uniformClass = "cg_jason1";
		hiddenSelections[] = {"Camo"};
		hiddenSelectionsTextures[] = {"prpg_kleidung_ziv\Data\cg_jason.paa"};
		displayName = "PRPG Jason";
		author = "Koil";
	};
	class cg_joker : C_man_1 {
		_generalMacro = "C_man_1";
		scope = public;
		nakedUniform = "U_BasicBody";
		uniformClass = "cg_joker1";
		hiddenSelections[] = {"Camo"};
		hiddenSelectionsTextures[] = {"prpg_kleidung_ziv\Data\cg_joker.paa"};
		displayName = "PRPG Joker";
		author = "Koil";
	};

	class cg_mtv : C_man_1 {
		_generalMacro = "C_man_1";
		scope = public;
		nakedUniform = "U_BasicBody";
		uniformClass = "cg_mtv1";
		hiddenSelections[] = {"Camo"};
		hiddenSelectionsTextures[] = {"prpg_kleidung_ziv\Data\cg_mtv.paa"};
		displayName = "PRPG MTV";
		author = "Koil";
	};
	class cg_nike : C_man_1 {
		_generalMacro = "C_man_1";
		scope = public;
		nakedUniform = "U_BasicBody";
		uniformClass = "cg_nike1";
		hiddenSelections[] = {"Camo"};
		hiddenSelectionsTextures[] = {"prpg_kleidung_ziv\Data\cg_nike.paa"};
		displayName = "PRPG Nike";
		author = "Koil";
	};
	class cg_peanut : C_man_1 {
		_generalMacro = "C_man_1";
		scope = public;
		nakedUniform = "U_BasicBody";
		uniformClass = "cg_peanut1";
		hiddenSelections[] = {"Camo"};
		hiddenSelectionsTextures[] = {"prpg_kleidung_ziv\Data\cg_peanut.paa"};
		displayName = "PRPG Peanut";
		author = "Koil";
	};
	class cg_superman : C_man_1 {
		_generalMacro = "C_man_1";
		scope = public;
		nakedUniform = "U_BasicBody";
		uniformClass = "cg_superman1";
		hiddenSelections[] = {"Camo"};
		hiddenSelectionsTextures[] = {"prpg_kleidung_ziv\Data\cg_superman.paa"};
		displayName = "PRPG Superman";
		author = "Koil";
	};
	class cg_tupac : C_man_1 {
		_generalMacro = "C_man_1";
		scope = public;
		nakedUniform = "U_BasicBody";
		uniformClass = "cg_tupac1";
		hiddenSelections[] = {"Camo"};
		hiddenSelectionsTextures[] = {"prpg_kleidung_ziv\Data\cg_tupac.paa"};
		displayName = "PRPG Tupac";
		author = "Koil";
	};
	class A3L_Civ2: C_man_1
	{
		_generalMacro = "C_man_1";
		scope = 2;
		nakedUniform = "U_BasicBody";
		uniformClass = "Caiden69";
		hiddenSelections[] = {"Camo"};
		hiddenSelectionsTextures[] = {"prpg_kleidung_ziv\Data\A3L_Civ2.paa"};
		displayName = "PRPG I'm W/ Zannaza";
		author = "Kurt420";
	};
	class A3L_Civ3: C_man_1
	{
		_generalMacro = "C_man_1";
		scope = 2;
		nakedUniform = "U_BasicBody";
		uniformClass = "RastaCiv";
		hiddenSelections[] = {"Camo"};
		hiddenSelectionsTextures[] = {"prpg_kleidung_ziv\Data\A3L_RastaCiv.paa"};
		displayName = "PRPG Rasta Civilian";
		author = "Kurt420";
	};
	class A3L_Civ5: C_man_1
	{
		_generalMacro = "C_man_1";
		scope = 2;
		nakedUniform = "U_BasicBody";
		uniformClass = "RFShirt";
		hiddenSelections[] = {"Camo"};
		hiddenSelectionsTextures[] = {"prpg_kleidung_ziv\Data\RF_civ_co.paa"};
		displayName = "PRPG Red Faction (Shirt) Civilian";
		author = "Kurt420";
	};
	class A3L_Civ16: C_man_1
	{
		_generalMacro = "C_man_1";
		scope = 2;
		nakedUniform = "U_BasicBody";
		uniformClass = "BreakingBad";
		hiddenSelections[] = {"Camo"};
		hiddenSelectionsTextures[] = {"prpg_kleidung_ziv\Data\A3L_Civ16.paa"};
		displayName = "PRPG Breaking Bad";
		author = "Kurt420";
	};
	class A3L_Civ18: C_man_1
	{
		_generalMacro = "C_man_1";
		scope = 2;
		nakedUniform = "U_BasicBody";
		uniformClass = "norway";
		hiddenSelections[] = {"Camo"};
		hiddenSelectionsTextures[] = {"prpg_kleidung_ziv\Data\norway.paa"};
		displayName = "PRPG Norway w/ Shorts";
		author = "Kurt420";
	};
	class A3L_Civ19: C_man_1
	{
		_generalMacro = "C_man_1";
		scope = 2;
		nakedUniform = "U_BasicBody";
		uniformClass = "PH";
		hiddenSelections[] = {"Camo"};
		hiddenSelectionsTextures[] = {"prpg_kleidung_ziv\Data\PH.paa"};
		displayName = "PRPG Philippines w/ Shorts";
		author = "Kurt420";
	};
	class A3L_Civ20: C_man_1
	{
		_generalMacro = "C_man_1";
		scope = 2;
		nakedUniform = "U_BasicBody";
		uniformClass = "HI1";
		hiddenSelections[] = {"Camo"};
		hiddenSelectionsTextures[] = {"prpg_kleidung_ziv\Data\hawaiian1.paa"};
		displayName = "PRPG Hawaiian shirt w/ Shorts";
		author = "Kurt420";
	};
	class A3L_Civ21: C_man_1
	{
		_generalMacro = "C_man_1";
		scope = 2;
		nakedUniform = "U_BasicBody";
		uniformClass = "A3L_SkullBlack";
		hiddenSelections[] = {"Camo"};
		hiddenSelectionsTextures[] = {"prpg_kleidung_ziv\Data\A3LSkull.paa"};
		displayName = "PRPG Skull (Black)";
		author = "Kurt420";
	};
	class A3L_Civ23: C_man_1
	{
		_generalMacro = "C_man_1";
		scope = 2;
		nakedUniform = "U_BasicBody";
		uniformClass = "A3L_SkidRow";
		hiddenSelections[] = {"Camo"};
		hiddenSelectionsTextures[] = {"prpg_kleidung_ziv\Data\SkidRow.paa"};
		displayName = "PRPG Skid Row";
		author = "Kurt420";
	};
	class B_Competitor_F;
	class A3L_Civ4: B_Competitor_F
	{
		_generalMacro = "B_Competitor_F";
		scope = 2;
		nakedUniform = "U_BasicBody";
		uniformClass = "A3LShirt";
		hiddenSelections[] = {"Camo"};
		hiddenSelectionsTextures[] = {"prpg_kleidung_ziv\Data\A3L_Default.paa"};
		displayName = "PRPG Default Clothing (BETA)";
		author = "A3L - Kurt";
		UnitInfoType = "Just some magic to remove the Default Hud - Ignore this :D";
		hideUnitInfo = "true";
		hideWeaponsCargo = "true";
		hideWeaponsCommander = "true";
		hideWeaponsDriver = "true";
		hideWeaponsGunner = "true";
	};
	class PRPG_Halo: B_Competitor_F
	{
		_generalMacro = "B_Competitor_F";
		scope = 2;
		nakedUniform = "U_BasicBody";
		uniformClass = "PrpgHalo";
		hiddenSelections[] = {"Camo"};
		hiddenSelectionsTextures[] = {"prpg_kleidung_ziv\Data\PRPG_Halo.paa"};
		displayName = "PRPG Halloween";
		author = "Kevin Otte";
		UnitInfoType = "Just some magic to remove the Default Hud - Ignore this :D";
		hideUnitInfo = "true";
		hideWeaponsCargo = "true";
		hideWeaponsCommander = "true";
		hideWeaponsDriver = "true";
		hideWeaponsGunner = "true";
	};
	
	
	class PRPG_Halo2: B_Competitor_F
	{
		_generalMacro = "B_Competitor_F";
		scope = 2;
		nakedUniform = "U_BasicBody";
		uniformClass = "PrpgHalo2";
		hiddenSelections[] = {"Camo"};
		hiddenSelectionsTextures[] = {"prpg_kleidung_ziv\Data\PRPG_Halo2.paa"};
		displayName = "PRPG Halloween";
		author = "Kevin Otte";
		UnitInfoType = "Just some magic to remove the Default Hud - Ignore this :D";
		hideUnitInfo = "true";
		hideWeaponsCargo = "true";
		hideWeaponsCommander = "true";
		hideWeaponsDriver = "true";
		hideWeaponsGunner = "true";
	};
	class PRPG_Halo3: B_Competitor_F
	{
		_generalMacro = "B_Competitor_F";
		scope = 2;
		nakedUniform = "U_BasicBody";
		uniformClass = "PrpgHalo3";
		hiddenSelections[] = {"Camo"};
		hiddenSelectionsTextures[] = {"prpg_kleidung_ziv\Data\PRPG_Halo3.paa"};
		displayName = "PRPG Halloween";
		author = "Kevin Otte";
		UnitInfoType = "Just some magic to remove the Default Hud - Ignore this :D";
		hideUnitInfo = "true";
		hideWeaponsCargo = "true";
		hideWeaponsCommander = "true";
		hideWeaponsDriver = "true";
		hideWeaponsGunner = "true";
	};
	class A3L_academic: B_Competitor_F
	{
		_generalMacro = "B_Competitor_F";
		scope = 2;
		nakedUniform = "U_BasicBody";
		uniformClass = "hanacd";
		hiddenSelections[] = {"Camo"};
		hiddenSelectionsTextures[] = {"prpg_kleidung_ziv\Data\academy.paa"};
		displayName = "PRPG Hannes Academy";
		author = "Kurt420";
	};
	class A3L_nvidia: B_Competitor_F
	{
		_generalMacro = "B_Competitor_F";
		scope = 2;
		nakedUniform = "U_BasicBody";
		uniformClass = "nvidia";
		hiddenSelections[] = {"Camo"};
		hiddenSelectionsTextures[] = {"prpg_kleidung_ziv\Data\nvidia.paa"};
		displayName = "PRPG Nvidia Enthusiast";
		author = "Kurt420";
	};
	class A3L_ati: B_Competitor_F
	{
		_generalMacro = "B_Competitor_F";
		scope = 2;
		nakedUniform = "U_BasicBody";
		uniformClass = "ATI";
		hiddenSelections[] = {"Camo"};
		hiddenSelectionsTextures[] = {"prpg_kleidung_ziv\Data\ati.paa"};
		displayName = "PRPG ATI Enthusiast";
		author = "Kurt420";
	};
	class A3L_A3: B_Competitor_F
	{
		_generalMacro = "B_Competitor_F";
		scope = 2;
		nakedUniform = "U_BasicBody";
		uniformClass = "arma3";
		hiddenSelections[] = {"Camo"};
		hiddenSelectionsTextures[] = {"prpg_kleidung_ziv\Data\ArmA3.paa"};
		displayName = "PRPG ArmA 3 Polo";
		author = "Kurt420";
	};
	class A3L_walkingdead: B_Competitor_F
	{
		_generalMacro = "B_Competitor_F";
		scope = 2;
		nakedUniform = "U_BasicBody";
		uniformClass = "walkingdead";
		hiddenSelections[] = {"Camo"};
		hiddenSelectionsTextures[] = {"prpg_kleidung_ziv\Data\walkingdead.paa"};
		displayName = "PRPG The Walking Dead";
		author = "Kurt420";
	};
	class A3L_A3blk: B_Competitor_F
	{
		_generalMacro = "B_Competitor_F";
		scope = 2;
		nakedUniform = "U_BasicBody";
		uniformClass = "arma3black";
		hiddenSelections[] = {"Camo"};
		hiddenSelectionsTextures[] = {"prpg_kleidung_ziv\Data\ArmA3Black.paa"};
		displayName = "PRPG ArmA 3 Polo (Black)";
		author = "Kurt420";
	};
	class A3L_taco: B_Competitor_F
	{
		_generalMacro = "B_Competitor_F";
		scope = 2;
		nakedUniform = "U_BasicBody";
		uniformClass = "tacobell";
		hiddenSelections[] = {"Camo"};
		hiddenSelectionsTextures[] = {"prpg_kleidung_ziv\Data\Taco.paa"};
		displayName = "PRPG Delgado Shirt";
		author = "Kurt420";
	};
	class A3L_sfgiant: B_Competitor_F
	{
		_generalMacro = "B_Competitor_F";
		scope = 2;
		nakedUniform = "U_BasicBody";
		uniformClass = "SFG";
		hiddenSelections[] = {"Camo"};
		hiddenSelectionsTextures[] = {"prpg_kleidung_ziv\Data\SFGiants.paa"};
		displayName = "PRPG SF Giants Shirt";
		author = "Kurt420";
	};
	class A3L_dutch: B_Competitor_F
	{
		_generalMacro = "B_Competitor_F";
		scope = 2;
		nakedUniform = "U_BasicBody";
		uniformClass = "dutch";
		hiddenSelections[] = {"Camo"};
		hiddenSelectionsTextures[] = {"prpg_kleidung_ziv\Data\dutch.paa"};
		displayName = "PRPG Dutch Shirt";
		author = "Kurt420";
	};
	class A3L_Phelps: B_Competitor_F
	{
		_generalMacro = "B_Competitor_F";
		scope = 2;
		nakedUniform = "U_BasicBody";
		uniformClass = "phalps";
		hiddenSelections[] = {"Camo"};
		hiddenSelectionsTextures[] = {"prpg_kleidung_ziv\Data\Phelps.paa"};
		displayName = "PRPG Phelps Shirt";
		author = "Kurt420";
	};
	class A3L_A3Logo: B_Competitor_F
	{
		_generalMacro = "B_Competitor_F";
		scope = 2;
		nakedUniform = "U_BasicBody";
		uniformClass = "A3L_A3LogoPants";
		hiddenSelections[] = {"Camo"};
		hiddenSelectionsTextures[] = {"prpg_kleidung_ziv\Data\A3LogoPants.paa"};
		displayName = "PRPG Logo Pants";
		author = "Kurt420";
	};
	class A3L_Poo2day: B_Competitor_F
	{
		_generalMacro = "B_Competitor_F";
		scope = 2;
		nakedUniform = "U_BasicBody";
		uniformClass = "A3L_Poop2day";
		hiddenSelections[] = {"Camo"};
		hiddenSelectionsTextures[] = {"prpg_kleidung_ziv\Data\A3L_Poop2Day.paa"};
		displayName = "PRPG I Pooped Today Shirt";
		author = "A3l - Bossnix";
	};
};

class cfgWeapons {
	class Uniform_Base;	// External class reference
	class UniformItem;	// External class reference

	class cg_beats1 : Uniform_Base {
		scope = public;
		displayName = "PRPG Beats";
		picture = "prpg_kleidung_ziv\Data\ui\withcaiden.paa";
		model = "\A3\Characters_F\Common\Suitpacks\suitpack_blufor_diver";
		
		class ItemInfo : UniformItem {
			uniformModel = "-";
			uniformClass = "cg_beats";
			containerClass = "Supply100";
			mass = 2;
		};
	};
	class cg_burgerking1 : Uniform_Base {
		scope = public;
		displayName = "PRPG Burgerking";
		picture = "prpg_kleidung_ziv\Data\ui\withcaiden.paa";
		model = "\A3\Characters_F\Common\Suitpacks\suitpack_blufor_diver";
		
		class ItemInfo : UniformItem {
			uniformModel = "-";
			uniformClass = "cg_burgerking";
			containerClass = "Supply100";
			mass = 2;
		};
	};

	class cg_lego1 : Uniform_Base {
		scope = public;
		displayName = "PRPG Lego";
		picture = "prpg_kleidung_ziv\Data\ui\withcaiden.paa";
		model = "\A3\Characters_F\Common\Suitpacks\suitpack_blufor_diver";
		
		class ItemInfo : UniformItem {
			uniformModel = "-";
			uniformClass = "cg_lego";
			containerClass = "Supply100";
			mass = 2;
		};
	};

	class cg_mario1 : Uniform_Base {
		scope = public;
		displayName = "PRPG Mario";
		picture = "prpg_kleidung_ziv\Data\ui\withcaiden.paa";
		model = "\A3\Characters_F\Common\Suitpacks\suitpack_blufor_diver";
		
		class ItemInfo : UniformItem {
			uniformModel = "-";
			uniformClass = "cg_mario";
			containerClass = "Supply100";
			mass = 2;
		};
	};

	class cg_pepsi1 : Uniform_Base {
		scope = public;
		displayName = "PRPG Pepsi";
		picture = "prpg_kleidung_ziv\Data\ui\withcaiden.paa";
		model = "\A3\Characters_F\Common\Suitpacks\suitpack_blufor_diver";
		
		class ItemInfo : UniformItem {
			uniformModel = "-";
			uniformClass = "cg_pepsi";
			containerClass = "Supply100";
			mass = 2;
		};
	};

	class cg_ea1 : Uniform_Base {
		scope = public;
		displayName = "PRPG EA";
		picture = "prpg_kleidung_ziv\Data\ui\withcaiden.paa";
		model = "\A3\Characters_F\Common\Suitpacks\suitpack_blufor_diver";
		
		class ItemInfo : UniformItem {
			uniformModel = "-";
			uniformClass = "cg_ea";
			containerClass = "Supply100";
			mass = 2;
		};
	};

	class cg_ferrari1 : Uniform_Base {
		scope = public;
		displayName = "PRPG Ferrari";
		picture = "prpg_kleidung_ziv\Data\ui\withcaiden.paa";
		model = "\A3\Characters_F\Common\Suitpacks\suitpack_blufor_diver";
		
		class ItemInfo : UniformItem {
			uniformModel = "-";
			uniformClass = "cg_ferrari";
			containerClass = "Supply100";
			mass = 2;
		};
	};


	class cg_fightclub1 : Uniform_Base {
		scope = public;
		displayName = "PRPG Fight Club";
		picture = "prpg_kleidung_ziv\Data\ui\withcaiden.paa";
		model = "\A3\Characters_F\Common\Suitpacks\suitpack_blufor_diver";
		
		class ItemInfo : UniformItem {
			uniformModel = "-";
			uniformClass = "cg_fightclub";
			containerClass = "Supply100";
			mass = 2;
		};
	};

	class cg_gameover1 : Uniform_Base {
		scope = public;
		displayName = "PRPG Game Over";
		picture = "prpg_kleidung_ziv\Data\ui\withcaiden.paa";
		model = "\A3\Characters_F\Common\Suitpacks\suitpack_blufor_diver";
		
		class ItemInfo : UniformItem {
			uniformModel = "-";
			uniformClass = "cg_gameover";
			containerClass = "Supply100";
			mass = 2;
		};
	};

	class cg_gamerepeat1 : Uniform_Base {
		scope = public;
		displayName = "PRPG Game Repeat";
		picture = "prpg_kleidung_ziv\Data\ui\withcaiden.paa";
		model = "\A3\Characters_F\Common\Suitpacks\suitpack_blufor_diver";
		
		class ItemInfo : UniformItem {
			uniformModel = "-";
			uniformClass = "cg_gamerepeat";
			containerClass = "Supply100";
			mass = 2;
		};
	};

	class cg_homer1 : Uniform_Base {
		scope = public;
		displayName = "PRPG Homer";
		picture = "prpg_kleidung_ziv\Data\ui\withcaiden.paa";
		model = "\A3\Characters_F\Common\Suitpacks\suitpack_blufor_diver";
		
		class ItemInfo : UniformItem {
			uniformModel = "-";
			uniformClass = "cg_homer";
			containerClass = "Supply100";
			mass = 2;
		};
	};
	class cg_kfc1 : Uniform_Base {
		scope = public;
		displayName = "PRPG KFC";
		picture = "prpg_kleidung_ziv\Data\ui\withcaiden.paa";
		model = "\A3\Characters_F\Common\Suitpacks\suitpack_blufor_diver";
		
		class ItemInfo : UniformItem {
			uniformModel = "-";
			uniformClass = "cg_kfc";
			containerClass = "Supply100";
			mass = 2;
		};
	};
	class cg_lambo1 : Uniform_Base {
		scope = public;
		displayName = "PRPG Lambo";
		picture = "prpg_kleidung_ziv\Data\ui\withcaiden.paa";
		model = "\A3\Characters_F\Common\Suitpacks\suitpack_blufor_diver";
		
		class ItemInfo : UniformItem {
			uniformModel = "-";
			uniformClass = "cg_lambo";
			containerClass = "Supply100";
			mass = 2;
		};
	};
	class cg_lsd1 : Uniform_Base {
		scope = public;
		displayName = "PRPG LSD";
		picture = "prpg_kleidung_ziv\Data\ui\withcaiden.paa";
		model = "\A3\Characters_F\Common\Suitpacks\suitpack_blufor_diver";
		
		class ItemInfo : UniformItem {
			uniformModel = "-";
			uniformClass = "cg_lsd";
			containerClass = "Supply100";
			mass = 2;
		};
	};

	class cg_masterrace1 : Uniform_Base {
		scope = public;
		displayName = "PRPG PC Master Race";
		picture = "prpg_kleidung_ziv\Data\ui\withcaiden.paa";
		model = "\A3\Characters_F\Common\Suitpacks\suitpack_blufor_diver";
		
		class ItemInfo : UniformItem {
			uniformModel = "-";
			uniformClass = "cg_masterrace";
			containerClass = "Supply100";
			mass = 2;
		};
	};

	class cg_pika1 : Uniform_Base {
		scope = public;
		displayName = "PRPG Pika";
		picture = "prpg_kleidung_ziv\Data\ui\withcaiden.paa";
		model = "\A3\Characters_F\Common\Suitpacks\suitpack_blufor_diver";
		
		class ItemInfo : UniformItem {
			uniformModel = "-";
			uniformClass = "cg_pika";
			containerClass = "Supply100";
			mass = 2;
		};
	};
	class cg_turtles1 : Uniform_Base {
		scope = public;
		displayName = "PRPG Turtles";
		picture = "prpg_kleidung_ziv\Data\ui\withcaiden.paa";
		model = "\A3\Characters_F\Common\Suitpacks\suitpack_blufor_diver";
		
		class ItemInfo : UniformItem {
			uniformModel = "-";
			uniformClass = "cg_turtles";
			containerClass = "Supply100";
			mass = 2;
		};
	};



	class cg_awesome1 : Uniform_Base {
		scope = public;
		displayName = "PRPG Awesome";
		picture = "prpg_kleidung_ziv\Data\ui\withcaiden.paa";
		model = "\A3\Characters_F\Common\Suitpacks\suitpack_blufor_diver";
		
		class ItemInfo : UniformItem {
			uniformModel = "-";
			uniformClass = "cg_awesome";
			containerClass = "Supply100";
			mass = 2;
		};
	};

	class cg_dad1 : Uniform_Base {
		scope = public;
		displayName = "PRPG Dad";
		picture = "prpg_kleidung_ziv\Data\ui\withcaiden.paa";
		model = "\A3\Characters_F\Common\Suitpacks\suitpack_blufor_diver";
		
		class ItemInfo : UniformItem {
			uniformModel = "-";
			uniformClass = "cg_dad";
			containerClass = "Supply100";
			mass = 2;
		};
	};
	class cg_deeznuts1 : Uniform_Base {
		scope = public;
		displayName = "PRPG Deez Nuts";
		picture = "prpg_kleidung_ziv\Data\ui\withcaiden.paa";
		model = "\A3\Characters_F\Common\Suitpacks\suitpack_blufor_diver";
		
		class ItemInfo : UniformItem {
			uniformModel = "-";
			uniformClass = "cg_deeznuts";
			containerClass = "Supply100";
			mass = 2;
		};
	};

	class cg_evolution1 : Uniform_Base {
		scope = public;
		displayName = "PRPG Evolution";
		picture = "prpg_kleidung_ziv\Data\ui\withcaiden.paa";
		model = "\A3\Characters_F\Common\Suitpacks\suitpack_blufor_diver";
		
		class ItemInfo : UniformItem {
			uniformModel = "-";
			uniformClass = "cg_evolution";
			containerClass = "Supply100";
			mass = 2;
		};
	};

	class cg_hearts1 : Uniform_Base {
		scope = public;
		displayName = "PRPG Hearts";
		picture = "prpg_kleidung_ziv\Data\ui\withcaiden.paa";
		model = "\A3\Characters_F\Common\Suitpacks\suitpack_blufor_diver";
		
		class ItemInfo : UniformItem {
			uniformModel = "-";
			uniformClass = "cg_hearts";
			containerClass = "Supply100";
			mass = 2;
		};
	};


	class cg_loading1 : Uniform_Base {
		scope = public;
		displayName = "PRPG Loading";
		picture = "prpg_kleidung_ziv\Data\ui\withcaiden.paa";
		model = "\A3\Characters_F\Common\Suitpacks\suitpack_blufor_diver";
		
		class ItemInfo : UniformItem {
			uniformModel = "-";
			uniformClass = "cg_loading";
			containerClass = "Supply100";
			mass = 2;
		};
	};


	class cg_mayan1 : Uniform_Base {
		scope = public;
		displayName = "PRPG Mayan";
		picture = "prpg_kleidung_ziv\Data\ui\withcaiden.paa";
		model = "\A3\Characters_F\Common\Suitpacks\suitpack_blufor_diver";
		
		class ItemInfo : UniformItem {
			uniformModel = "-";
			uniformClass = "cg_mayan";
			containerClass = "Supply100";
			mass = 2;
		};
	};
	class cg_strippers1 : Uniform_Base {
		scope = public;
		displayName = "PRPG Strippers";
		picture = "prpg_kleidung_ziv\Data\ui\withcaiden.paa";
		model = "\A3\Characters_F\Common\Suitpacks\suitpack_blufor_diver";
		
		class ItemInfo : UniformItem {
			uniformModel = "-";
			uniformClass = "cg_strippers";
			containerClass = "Supply100";
			mass = 2;
		};
	};
	class cg_chickens1 : Uniform_Base {
		scope = public;
		displayName = "PRPG Chickens";
		picture = "prpg_kleidung_ziv\Data\ui\withcaiden.paa";
		model = "\A3\Characters_F\Common\Suitpacks\suitpack_blufor_diver";
		
		class ItemInfo : UniformItem {
			uniformModel = "-";
			uniformClass = "cg_chickens";
			containerClass = "Supply100";
			mass = 2;
		};
	};

	class cg_et1 : Uniform_Base {
		scope = public;
		displayName = "PRPG ET";
		picture = "prpg_kleidung_ziv\Data\ui\withcaiden.paa";
		model = "\A3\Characters_F\Common\Suitpacks\suitpack_blufor_diver";
		
		class ItemInfo : UniformItem {
			uniformModel = "-";
			uniformClass = "cg_et";
			containerClass = "Supply100";
			mass = 2;
		};
	};
	class cg_hand1 : Uniform_Base {
		scope = public;
		displayName = "PRPG Hand";
		picture = "prpg_kleidung_ziv\Data\ui\withcaiden.paa";
		model = "\A3\Characters_F\Common\Suitpacks\suitpack_blufor_diver";
		
		class ItemInfo : UniformItem {
			uniformModel = "-";
			uniformClass = "cg_hand";
			containerClass = "Supply100";
			mass = 2;
		};
	};
	class cg_illuminati1 : Uniform_Base {
		scope = public;
		displayName = "PRPG Illuminati";
		picture = "prpg_kleidung_ziv\Data\ui\withcaiden.paa";
		model = "\A3\Characters_F\Common\Suitpacks\suitpack_blufor_diver";
		
		class ItemInfo : UniformItem {
			uniformModel = "-";
			uniformClass = "cg_illuminati";
			containerClass = "Supply100";
			mass = 2;
		};
	};
	class cg_steam1 : Uniform_Base {
		scope = public;
		displayName = "PRPG Steam";
		picture = "prpg_kleidung_ziv\Data\ui\withcaiden.paa";
		model = "\A3\Characters_F\Common\Suitpacks\suitpack_blufor_diver";
		
		class ItemInfo : UniformItem {
			uniformModel = "-";
			uniformClass = "cg_steam";
			containerClass = "Supply100";
			mass = 2;
		};
	};
	class cg_stoned1 : Uniform_Base {
		scope = public;
		displayName = "PRPG Stoned";
		picture = "prpg_kleidung_ziv\Data\ui\withcaiden.paa";
		model = "\A3\Characters_F\Common\Suitpacks\suitpack_blufor_diver";
		
		class ItemInfo : UniformItem {
			uniformModel = "-";
			uniformClass = "cg_stoned";
			containerClass = "Supply100";
			mass = 2;
		};
	};
	class cg_taylorswift1 : Uniform_Base {
		scope = public;
		displayName = "PRPG Taylor Swift";
		picture = "prpg_kleidung_ziv\Data\ui\withcaiden.paa";
		model = "\A3\Characters_F\Common\Suitpacks\suitpack_blufor_diver";
		
		class ItemInfo : UniformItem {
			uniformModel = "-";
			uniformClass = "cg_taylorswift";
			containerClass = "Supply100";
			mass = 2;
		};
	};
	class cg_upyours1 : Uniform_Base {
		scope = public;
		displayName = "PRPG Up Yours";
		picture = "prpg_kleidung_ziv\Data\ui\withcaiden.paa";
		model = "\A3\Characters_F\Common\Suitpacks\suitpack_blufor_diver";
		
		class ItemInfo : UniformItem {
			uniformModel = "-";
			uniformClass = "cg_upyours";
			containerClass = "Supply100";
			mass = 2;
		};
	};
	class cg_woods1 : Uniform_Base {
		scope = public;
		displayName = "PRPG Woods";
		picture = "prpg_kleidung_ziv\Data\ui\withcaiden.paa";
		model = "\A3\Characters_F\Common\Suitpacks\suitpack_blufor_diver";
		
		class ItemInfo : UniformItem {
			uniformModel = "-";
			uniformClass = "cg_woods";
			containerClass = "Supply100";
			mass = 2;
		};
	};
	class cg_bb1 : Uniform_Base {
		scope = public;
		displayName = "PRPG BB";
		picture = "prpg_kleidung_ziv\Data\ui\withcaiden.paa";
		model = "\A3\Characters_F\Common\Suitpacks\suitpack_blufor_diver";
		
		class ItemInfo : UniformItem {
			uniformModel = "-";
			uniformClass = "cg_bb";
			containerClass = "Supply100";
			mass = 2;
		};
	};
	class cg_bipolar1 : Uniform_Base {
		scope = public;
		displayName = "PRPG Bipolar";
		picture = "prpg_kleidung_ziv\Data\ui\withcaiden.paa";
		model = "\A3\Characters_F\Common\Suitpacks\suitpack_blufor_diver";
		
		class ItemInfo : UniformItem {
			uniformModel = "-";
			uniformClass = "cg_bipolar";
			containerClass = "Supply100";
			mass = 2;
		};
	};

	class cg_catvideos1 : Uniform_Base {
		scope = public;
		displayName = "PRPG Cat Videos";
		picture = "prpg_kleidung_ziv\Data\ui\withcaiden.paa";
		model = "\A3\Characters_F\Common\Suitpacks\suitpack_blufor_diver";
		
		class ItemInfo : UniformItem {
			uniformModel = "-";
			uniformClass = "cg_catvideos";
			containerClass = "Supply100";
			mass = 2;
		};
	};

	class cg_condoms1 : Uniform_Base {
		scope = public;
		displayName = "PRPG Condoms";
		picture = "prpg_kleidung_ziv\Data\ui\withcaiden.paa";
		model = "\A3\Characters_F\Common\Suitpacks\suitpack_blufor_diver";
		
		class ItemInfo : UniformItem {
			uniformModel = "-";
			uniformClass = "cg_condoms";
			containerClass = "Supply100";
			mass = 2;
		};
	};

	class cg_csgo1 : Uniform_Base {
		scope = public;
		displayName = "PRPG CSGO";
		picture = "prpg_kleidung_ziv\Data\ui\withcaiden.paa";
		model = "\A3\Characters_F\Common\Suitpacks\suitpack_blufor_diver";
		
		class ItemInfo : UniformItem {
			uniformModel = "-";
			uniformClass = "cg_csgo";
			containerClass = "Supply100";
			mass = 2;
		};
	};

	class cg_jason1 : Uniform_Base {
		scope = public;
		displayName = "PRPG Jason";
		picture = "prpg_kleidung_ziv\Data\ui\withcaiden.paa";
		model = "\A3\Characters_F\Common\Suitpacks\suitpack_blufor_diver";
		
		class ItemInfo : UniformItem {
			uniformModel = "-";
			uniformClass = "cg_jason";
			containerClass = "Supply100";
			mass = 2;
		};
	};
	class cg_joker1 : Uniform_Base {
		scope = public;
		displayName = "PRPG Joker";
		picture = "prpg_kleidung_ziv\Data\ui\withcaiden.paa";
		model = "\A3\Characters_F\Common\Suitpacks\suitpack_blufor_diver";
		
		class ItemInfo : UniformItem {
			uniformModel = "-";
			uniformClass = "cg_joker";
			containerClass = "Supply100";
			mass = 2;
		};
	};
	class cg_mtv1 : Uniform_Base {
		scope = public;
		displayName = "PRPG MTV";
		picture = "prpg_kleidung_ziv\Data\ui\withcaiden.paa";
		model = "\A3\Characters_F\Common\Suitpacks\suitpack_blufor_diver";
		
		class ItemInfo : UniformItem {
			uniformModel = "-";
			uniformClass = "cg_mtv";
			containerClass = "Supply100";
			mass = 2;
		};
	};
	class cg_nike1 : Uniform_Base {
		scope = public;
		displayName = "PRPG Nike";
		picture = "prpg_kleidung_ziv\Data\ui\withcaiden.paa";
		model = "\A3\Characters_F\Common\Suitpacks\suitpack_blufor_diver";
		
		class ItemInfo : UniformItem {
			uniformModel = "-";
			uniformClass = "cg_nike";
			containerClass = "Supply100";
			mass = 2;
		};
	};

	class cg_peanut1 : Uniform_Base {
		scope = public;
		displayName = "PRPG Peanut";
		picture = "prpg_kleidung_ziv\Data\ui\withcaiden.paa";
		model = "\A3\Characters_F\Common\Suitpacks\suitpack_blufor_diver";
		
		class ItemInfo : UniformItem {
			uniformModel = "-";
			uniformClass = "cg_peanut";
			containerClass = "Supply100";
			mass = 2;
		};
	};
	class cg_superman1 : Uniform_Base {
		scope = public;
		displayName = "PRPG Superman";
		picture = "prpg_kleidung_ziv\Data\ui\withcaiden.paa";
		model = "\A3\Characters_F\Common\Suitpacks\suitpack_blufor_diver";
		
		class ItemInfo : UniformItem {
			uniformModel = "-";
			uniformClass = "cg_superman";
			containerClass = "Supply100";
			mass = 2;
		};
	};
	class cg_tupac1 : Uniform_Base {
		scope = public;
		displayName = "PRPG Tupac";
		picture = "prpg_kleidung_ziv\Data\ui\withcaiden.paa";
		model = "\A3\Characters_F\Common\Suitpacks\suitpack_blufor_diver";
		
		class ItemInfo : UniformItem {
			uniformModel = "-";
			uniformClass = "cg_tupac";
			containerClass = "Supply100";
			mass = 2;
		};
	};

	class cg_got1 : Uniform_Base {
		scope = public;
		displayName = "PRPG GOT";
		picture = "prpg_kleidung_ziv\Data\ui\withcaiden.paa";
		model = "\A3\Characters_F\Common\Suitpacks\suitpack_blufor_diver";
		
		class ItemInfo : UniformItem {
			uniformModel = "-";
			uniformClass = "cg_got";
			containerClass = "Supply100";
			mass = 2;
		};
	};

	class cg_wow1 : Uniform_Base {
		scope = public;
		displayName = "PRPG WoW";
		picture = "prpg_kleidung_ziv\Data\ui\withcaiden.paa";
		model = "\A3\Characters_F\Common\Suitpacks\suitpack_blufor_diver";
		
		class ItemInfo : UniformItem {
			uniformModel = "-";
			uniformClass = "cg_wow";
			containerClass = "Supply100";
			mass = 2;
		};
	};
	class Caiden69: Uniform_Base
	{
		scope = 2;
		displayName = "PRPG Caiden's Shirt";
		picture = "prpg_kleidung_ziv\Data\ui\withcaiden.paa";
		model = "\A3\Characters_F\Common\Suitpacks\suitpack_blufor_diver";
		class ItemInfo: UniformItem
		{
			uniformModel = "-";
			uniformClass = "A3L_Civ2";
			containerClass = "Supply100";
			mass = 2;
		};
	};
	class RastaCiv: Uniform_Base
	{
		scope = 2;
		displayName = "PRPG Pothead Shirt";
		picture = "prpg_kleidung_ziv\Data\ui\withcaiden.paa";
		model = "\A3\Characters_F\Common\Suitpacks\suitpack_blufor_diver";
		class ItemInfo: UniformItem
		{
			uniformModel = "-";
			uniformClass = "A3L_Civ3";
			containerClass = "Supply100";
			mass = 2;
		};
	};
	class A3LShirt: Uniform_Base
	{
		scope = 2;
		displayName = "PRPG Default Clothing (BETA)";
		picture = "prpg_kleidung_ziv\Data\ui\withcaiden.paa";
		model = "\A3\Characters_F\Common\Suitpacks\suitpack_blufor_diver";
		class ItemInfo: UniformItem
		{
			uniformModel = "-";
			uniformClass = "A3L_Civ4";
			containerClass = "Supply100";
			mass = 2;
		};
	};
	
	class PrpgHalo: Uniform_Base
	{
		scope = 2;
		displayName = "PRPG Halloween";
		picture = "prpg_kleidung_ziv\Data\ui\withcaiden.paa";
		model = "\A3\Characters_F\Common\Suitpacks\suitpack_blufor_diver";
		class ItemInfo: UniformItem
		{
			uniformModel = "-";
			uniformClass = "PRPG_Halo";
			containerClass = "Supply100";
			mass = 2;
		};
	};
	class PrpgHalo2: Uniform_Base
	{
		scope = 2;
		displayName = "PRPG Halloween";
		picture = "prpg_kleidung_ziv\Data\ui\withcaiden.paa";
		model = "\A3\Characters_F\Common\Suitpacks\suitpack_blufor_diver";
		class ItemInfo: UniformItem
		{
			uniformModel = "-";
			uniformClass = "PRPG_Halo2";
			containerClass = "Supply100";
			mass = 2;
		};
	};
	class PrpgHalo3: Uniform_Base
	{
		scope = 2;
		displayName = "PRPG Halloween";
		picture = "prpg_kleidung_ziv\Data\ui\withcaiden.paa";
		model = "\A3\Characters_F\Common\Suitpacks\suitpack_blufor_diver";
		class ItemInfo: UniformItem
		{
			uniformModel = "-";
			uniformClass = "PRPG_Halo3";
			containerClass = "Supply100";
			mass = 2;
		};
	};
	
	
	
	
	
	
	
	
	
	
	
	
	class RFShirt: Uniform_Base
	{
		scope = 2;
		displayName = "PRPG Faction Shirt";
		picture = "prpg_kleidung_ziv\Data\ui\withcaiden.paa";
		model = "\A3\Characters_F\Common\Suitpacks\suitpack_blufor_diver";
		class ItemInfo: UniformItem
		{
			uniformModel = "-";
			uniformClass = "A3L_Civ5";
			containerClass = "Supply100";
			mass = 2;
		};
	};
	class hanacd: Uniform_Base
	{
		scope = 2;
		displayName = "PRPG Hannes Academy";
		picture = "prpg_kleidung_ziv\Data\ui\withcaiden.paa";
		model = "\A3\Characters_F\Common\Suitpacks\suitpack_blufor_diver";
		class ItemInfo: UniformItem
		{
			uniformModel = "-";
			uniformClass = "A3L_academic";
			containerClass = "Supply50";
			mass = 0;
		};
	};
	class nvidia: Uniform_Base
	{
		scope = 2;
		displayName = "PRPG Nvidia Enthusiast";
		picture = "prpg_kleidung_ziv\Data\ui\withcaiden.paa";
		model = "\A3\Characters_F\Common\Suitpacks\suitpack_blufor_diver";
		class ItemInfo: UniformItem
		{
			uniformModel = "-";
			uniformClass = "A3L_nvidia";
			containerClass = "Supply50";
			mass = 0;
		};
	};
	class ATI: Uniform_Base
	{
		scope = 2;
		displayName = "PRPG ATI Enthusiast";
		picture = "prpg_kleidung_ziv\Data\ui\withcaiden.paa";
		model = "\A3\Characters_F\Common\Suitpacks\suitpack_blufor_diver";
		class ItemInfo: UniformItem
		{
			uniformModel = "-";
			uniformClass = "A3L_ati";
			containerClass = "Supply50";
			mass = 0;
		};
	};
	class arma3: Uniform_Base
	{
		scope = 2;
		displayName = "PRPG ArmA 3 Polo";
		picture = "prpg_kleidung_ziv\Data\ui\withcaiden.paa";
		model = "\A3\Characters_F\Common\Suitpacks\suitpack_blufor_diver";
		class ItemInfo: UniformItem
		{
			uniformModel = "-";
			uniformClass = "A3L_A3";
			containerClass = "Supply50";
			mass = 0;
		};
	};
	class walkingdead: Uniform_Base
	{
		scope = 2;
		displayName = "PRPG The Walking Dead";
		picture = "prpg_kleidung_ziv\Data\ui\withcaiden.paa";
		model = "\A3\Characters_F\Common\Suitpacks\suitpack_blufor_diver";
		class ItemInfo: UniformItem
		{
			uniformModel = "-";
			uniformClass = "A3L_walkingdead";
			containerClass = "Supply50";
			mass = 0;
		};
	};
	class arma3black: Uniform_Base
	{
		scope = 2;
		displayName = "PRPG ArmA 3 Polo (Black)";
		picture = "prpg_kleidung_ziv\Data\ui\withcaiden.paa";
		model = "\A3\Characters_F\Common\Suitpacks\suitpack_blufor_diver";
		class ItemInfo: UniformItem
		{
			uniformModel = "-";
			uniformClass = "A3L_A3blk";
			containerClass = "Supply50";
			mass = 0;
		};
	};
	class tacobell: Uniform_Base
	{
		scope = 2;
		displayName = "PRPG Delgado Shirt";
		picture = "prpg_kleidung_ziv\Data\ui\withcaiden.paa";
		model = "\A3\Characters_F\Common\Suitpacks\suitpack_blufor_diver";
		class ItemInfo: UniformItem
		{
			uniformModel = "-";
			uniformClass = "A3L_taco";
			containerClass = "Supply50";
			mass = 0;
		};
	};
	class SFG: Uniform_Base
	{
		scope = 2;
		displayName = "PRPG SF Giants Shirt";
		picture = "prpg_kleidung_ziv\Data\ui\withcaiden.paa";
		model = "\A3\Characters_F\Common\Suitpacks\suitpack_blufor_diver";
		class ItemInfo: UniformItem
		{
			uniformModel = "-";
			uniformClass = "A3L_sfgiant";
			containerClass = "Supply50";
			mass = 0;
		};
	};
	class dutch: Uniform_Base
	{
		scope = 2;
		displayName = "PRPG Dutch Shirt";
		picture = "prpg_kleidung_ziv\Data\ui\withcaiden.paa";
		model = "\A3\Characters_F\Common\Suitpacks\suitpack_blufor_diver";
		class ItemInfo: UniformItem
		{
			uniformModel = "-";
			uniformClass = "A3L_dutch";
			containerClass = "Supply50";
			mass = 0;
		};
	};
	class BreakingBad: Uniform_Base
	{
		scope = 2;
		displayName = "PRPG Breaking Bad";
		picture = "prpg_kleidung_ziv\Data\ui\withcaiden.paa";
		model = "\A3\Characters_F\Common\Suitpacks\suitpack_blufor_diver";
		class ItemInfo: UniformItem
		{
			uniformModel = "-";
			uniformClass = "A3L_Civ16";
			containerClass = "Supply100";
			mass = 2;
		};
	};
	class phalps: Uniform_Base
	{
		scope = 2;
		displayName = "PRPG Phelps";
		picture = "prpg_kleidung_ziv\Data\ui\withcaiden.paa";
		model = "\A3\Characters_F\Common\Suitpacks\suitpack_blufor_diver";
		class ItemInfo: UniformItem
		{
			uniformModel = "-";
			uniformClass = "A3L_Phelps";
			containerClass = "Supply100";
			mass = 2;
		};
	};
	class norway: Uniform_Base
	{
		scope = 2;
		displayName = "PRPG Norway w/ Shorts";
		picture = "prpg_kleidung_ziv\Data\ui\withcaiden.paa";
		model = "\A3\Characters_F\Common\Suitpacks\suitpack_blufor_diver";
		class ItemInfo: UniformItem
		{
			uniformModel = "-";
			uniformClass = "A3L_Civ18";
			containerClass = "Supply100";
			mass = 2;
		};
	};
	class PH: Uniform_Base
	{
		scope = 2;
		displayName = "PRPG Philippines w/ Shorts";
		picture = "prpg_kleidung_ziv\Data\ui\withcaiden.paa";
		model = "\A3\Characters_F\Common\Suitpacks\suitpack_blufor_diver";
		class ItemInfo: UniformItem
		{
			uniformModel = "-";
			uniformClass = "A3L_Civ19";
			containerClass = "Supply100";
			mass = 2;
		};
	};
	class HI1: Uniform_Base
	{
		scope = 2;
		displayName = "PRPG Hawaiian shirt w/ Shorts";
		picture = "prpg_kleidung_ziv\Data\ui\withcaiden.paa";
		model = "\A3\Characters_F\Common\Suitpacks\suitpack_blufor_diver";
		class ItemInfo: UniformItem
		{
			uniformModel = "-";
			uniformClass = "A3L_Civ20";
			containerClass = "Supply100";
			mass = 2;
		};
	};
	class A3L_SkullBlack: Uniform_Base
	{
		scope = 2;
		displayName = "PRPG Skull (Black)";
		picture = "prpg_kleidung_ziv\Data\ui\withcaiden.paa";
		model = "\A3\Characters_F\Common\Suitpacks\suitpack_blufor_diver";
		class ItemInfo: UniformItem
		{
			uniformModel = "-";
			uniformClass = "A3L_Civ21";
			containerClass = "Supply100";
			mass = 2;
		};
	};
	class A3L_A3LogoPants: Uniform_Base
	{
		scope = 2;
		displayName = "PRPG Logo Pants";
		picture = "prpg_kleidung_ziv\Data\ui\withcaiden.paa";
		model = "\A3\Characters_F\Common\Suitpacks\suitpack_blufor_diver";
		class ItemInfo: UniformItem
		{
			uniformModel = "-";
			uniformClass = "A3L_A3Logo";
			containerClass = "Supply100";
			mass = 2;
		};
	};
	class A3L_SkidRow: Uniform_Base
	{
		scope = 2;
		displayName = "PRPG Skid Row";
		picture = "prpg_kleidung_ziv\Data\ui\withcaiden.paa";
		model = "\A3\Characters_F\Common\Suitpacks\suitpack_blufor_diver";
		class ItemInfo: UniformItem
		{
			uniformModel = "-";
			uniformClass = "A3L_Civ23";
			containerClass = "Supply100";
			mass = 2;
		};
	};
	class A3L_Poop2day: Uniform_Base
	{
		scope = 2;
		displayName = "PRPG I Pooped Today Shirt";
		picture = "prpg_kleidung_ziv\Data\ui\withcaiden.paa";
		model = "\A3\Characters_F\Common\Suitpacks\suitpack_blufor_diver";
		class ItemInfo: UniformItem
		{
			uniformModel = "-";
			uniformClass = "A3L_Poo2day";
			containerClass = "Supply100";
			mass = 2;
		};
	};
};
