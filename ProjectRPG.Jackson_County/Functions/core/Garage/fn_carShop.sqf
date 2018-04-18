 disableSerialization;

_whatdo = _this select 0;

_textures = ["airforceblue", "aliceblue", "alizarincrimson", "almond", "amaranth", "amber", "americanrose", "amethyst", "androidgreen", "antiflashwhite", "antiquebrass", "antiquefuchsia", "antiquewhite", "ao", "applegreen", "apricot", "aqua", "aquamarine", "armygreen", "arylideyellow", "ashgrey", "asparagus", "atomictangerine", "auburn", "aureolin", "aurometalsaurus", "awesome", "azure", "azuremist", "babyblue", "babyblueeyes", "babypink", "ballblue", "bananamania", "bananayellow", "battleshipgrey", "bazaar", "beaublue", "beaver", "beige", "bisque", "bistre", "bittersweet", "black", "blanchedalmond", "bleudefrance", "blizzardblue", "blond", "blue", "bluebell", "bluegray", "bluegreen", "bluepurple", "blueviolet", "blush", "bole", "bondiblue", "bone", "bostonuniversityred", "bottlegreen", "boysenberry", "brandeisblue", "brass", "brickred", "brightcerulean", "brightgreen", "brightlavender", "brightmaroon", "brightpink", "brightturquoise", "brightube", "brilliantlavender", "brilliantrose", "brinkpink", "britishracinggreen", "bronze", "brown", "bubblegum", "bubbles", "buff", "bulgarianrose", "burgundy", "burlywood", "burntorange", "burntsienna", "burntumber", "byzantine", "byzantium", "cgblue", "cgred", "cadet", "cadetblue", "cadetgrey", "cadmiumgreen", "cadmiumorange", "cadmiumred", "cadmiumyellow", "cafeaulait", "cafenoir", "calpolypomonagreen", "cambridgeblue", "camel", "camouflagegreen", "canary", "canaryyellow", "candyapplered", "candypink", "capri", "caputmortuum", "cardinal", "caribbeangreen", "carmine", "carminepink", "carminered", "carnationpink", "carnelian", "carolinablue", "carrotorange", "celadon", "celeste", "celestialblue", "cerise", "cerisepink", "cerulean", "ceruleanblue", "chamoisee", "champagne", "charcoal", "chartreuse", "cherry", "cherryblossompink", "chestnut", "chocolate", "chromeyellow", "cinereous", "cinnabar", "cinnamon", "citrine", "classicrose", "cobalt", "cocoabrown", "coffee", "columbiablue", "coolblack", "coolgrey", "copper", "copperrose", "coquelicot", "coral", "coralpink", "coralred", "cordovan", "corn", "cornellred", "cornflower", "cornflowerblue", "cornsilk", "cosmiclatte", "cottoncandy", "cream", "crimson", "crimsonred", "crimsonglory", "cyan", "daffodil", "dandelion", "darkblue", "darkbrown", "darkbyzantium", "darkcandyapplered", "darkcerulean", "darkchestnut", "darkcoral", "darkcyan", "darkelectricblue", "darkgoldenrod", "darkgray", "darkgreen", "darkjunglegreen", "darkkhaki", "darklava", "darklavender", "darkmagenta", "darkmidnightblue", "darkolivegreen", "darkorange", "darkorchid", "darkpastelblue", "darkpastelgreen", "darkpastelpurple", "darkpastelred", "darkpink", "darkpowderblue", "darkraspberry", "darkred", "darksalmon", "darkscarlet", "darkseagreen", "darksienna", "darkslateblue", "darkslategray", "darkspringgreen", "darktan", "darktangerine", "darktaupe", "darkterracotta", "darkturquoise", "darkviolet", "dartmouthgreen", "davygrey", "debianred", "deepcarmine", "deepcarminepink", "deepcarrotorange", "deepcerise", "deepchampagne", "deepchestnut", "deepcoffee", "deepfuchsia", "deepjunglegreen", "deeplilac", "deepmagenta", "deeppeach", "deeppink", "deepsaffron", "deepskyblue", "denim", "desert", "desertsand", "dimgray", "dodgerblue", "dogwoodrose", "dollarbill", "drab", "dukeblue", "earthyellow", "ecru", "eggplant", "eggshell", "egyptianblue", "electricblue", "electriccrimson", "electriccyan", "electricgreen", "electricindigo", "electriclavender", "electriclime", "electricpurple", "electricultramarine", "electricviolet", "electricyellow", "emerald", "etonblue", "fallow", "falured", "famous", "fandango", "fashionfuchsia", "fawn", "feldgrau", "fern", "ferngreen", "ferrarired", "fielddrab", "fireenginered", "firebrick", "flame", "flamingopink", "flavescent", "flax", "floralwhite", "fluorescentorange", "fluorescentpink", "fluorescentyellow", "folly", "forestgreen", "frenchbeige", "frenchblue", "frenchlilac", "frenchrose", "fuchsia", "fuchsiapink", "fulvous", "fuzzywuzzy", "gainsboro", "gamboge", "ghostwhite", "ginger", "glaucous", "glitter", "gold", "goldenbrown", "goldenpoppy", "goldenyellow", "goldenrod", "grannysmithapple", "gray", "grayasparagus", "green", "greenblue", "greenyellow", "grullo", "guppiegreen", "halayaube", "hanblue", "hanpurple", "hansayellow", "harlequin", "harvardcrimson", "harvestgold", "heartgold", "heliotrope", "hollywoodcerise", "honeydew", "hookergreen", "hotmagenta", "hotpink", "huntergreen", "icterine", "inchworm", "indiagreen", "indianred", "indianyellow", "indigo", "internationalkleinblue", "internationalorange", "iris", "isabelline", "islamicgreen", "ivory", "jade", "jasmine", "jasper", "jazzberryjam", "jonquil", "junebud", "junglegreen", "kucrimson", "kellygreen", "khaki", "lasallegreen", "languidlavender", "lapislazuli", "laserlemon", "laurelgreen", "lava", "lavender", "lavenderblue", "lavenderblush", "lavendergray", "lavenderindigo", "lavendermagenta", "lavendermist", "lavenderpink", "lavenderpurple", "lavenderrose", "lawngreen", "lemon", "lemonyellow", "lemonchiffon", "lemonlime", "lightcrimson", "lightthulianpink", "lightapricot", "lightblue", "lightbrown", "lightcarminepink", "lightcoral", "lightcornflowerblue", "lightcyan", "lightfuchsiapink", "lightgoldenrodyellow", "lightgray", "lightgreen", "lightkhaki", "lightpastelpurple", "lightpink", "lightsalmon", "lightsalmonpink", "lightseagreen", "lightskyblue", "lightslategray", "lighttaupe", "lightyellow", "lilac", "lime", "limegreen", "lincolngreen", "linen", "lion", "liver", "lust", "msugreen", "macaroniandcheese", "magenta", "magicmint", "magnolia", "mahogany", "maize", "majorelleblue", "malachite", "manatee", "mangotango", "mantis", "maroon", "mauve", "mauvetaupe", "mauvelous", "mayablue", "meatbrown", "mediumpersianblue", "mediumaquamarine", "mediumblue", "mediumcandyapplered", "mediumcarmine", "mediumchampagne", "mediumelectricblue", "mediumjunglegreen", "mediumlavendermagenta", "mediumorchid", "mediumpurple", "mediumredviolet", "mediumseagreen", "mediumslateblue", "mediumspringbud", "mediumspringgreen", "mediumtaupe", "mediumtealblue", "mediumturquoise", "mediumvioletred", "melon", "midnightblue", "midnightgreen", "mikadoyellow", "mint", "mintcream", "mintgreen", "mistyrose", "moccasin", "modebeige", "moonstoneblue", "mordantred19", "mossgreen", "mountainmeadow", "mountbattenpink", "mulberry", "munsell", "mustard", "myrtle", "nadeshikopink", "napiergreen", "naplesyellow", "navajowhite", "navyblue", "neoncarrot", "neonfuchsia", "neongreen", "non-photoblue", "northtexasgreen", "oceanboatblue", "ochre", "officegreen", "oldgold", "oldlace", "oldlavender", "oldmauve", "oldrose", "olive", "olivedrab", "olivegreen", "olivine", "onyx", "operamauve", "orange", "orangeyellow", "orangepeel", "orangered", "orchid", "otterbrown", "outerspace", "outrageousorange", "oxfordblue", "pacificblue", "pakistangreen", "palatinateblue", "palatinatepurple", "paleaqua", "paleblue", "palebrown", "palecarmine", "palecerulean", "palechestnut", "palecopper", "palecornflowerblue", "palegold", "palegoldenrod", "palegreen", "palelavender", "palemagenta", "palepink", "paleplum", "paleredviolet", "palerobineggblue", "palesilver", "palespringbud", "paletaupe", "palevioletred", "pansypurple", "papayawhip", "parisgreen", "pastelblue", "pastelbrown", "pastelgray", "pastelgreen", "pastelmagenta", "pastelorange", "pastelpink", "pastelpurple", "pastelred", "pastelviolet", "pastelyellow", "patriarch", "paynegrey", "peach", "peachpuff", "peachyellow", "pear", "pearl", "pearlaqua", "peridot", "periwinkle", "persianblue", "persianindigo", "persianorange", "persianpink", "persianplum", "persianred", "persianrose", "phlox", "phthaloblue", "phthalogreen", "piggypink", "pinegreen", "pink", "pinkflamingo", "pinksherbet", "pinkpearl", "pistachio", "platinum", "plum", "portlandorange", "powderblue", "princetonorange", "prussianblue", "psychedelicpurple", "puce", "pumpkin", "purple", "purpleheart", "purplemountain'smajesty", "purplemountainmajesty", "purplepizzazz", "purpletaupe", "rackley", "radicalred", "raspberry", "raspberryglace", "raspberrypink", "raspberryrose", "rawsienna", "razzledazzlerose", "razzmatazz", "red", "redorange", "redbrown", "redviolet", "richblack", "richcarmine", "richelectricblue", "richlilac", "richmaroon", "riflegreen", "robin'seggblue", "rose", "rosebonbon", "roseebony", "rosegold", "rosemadder", "rosepink", "rosequartz", "rosetaupe", "rosevale", "rosewood", "rossocorsa", "rosybrown", "royalazure", "royalblue", "royalfuchsia", "royalpurple", "ruby", "ruddy", "ruddybrown", "ruddypink", "rufous", "russet", "rust", "sacramentostategreen", "saddlebrown", "safetyorange", "saffron", "saintpatrickblue", "salmon", "salmonpink", "sand", "sanddune", "sandstorm", "sandybrown", "sandytaupe", "sapgreen", "sapphire", "satinsheengold", "scarlet", "schoolbusyellow", "screamingreen", "seablue", "seagreen", "sealbrown", "seashell", "selectiveyellow", "sepia", "shadow", "shamrock", "shamrockgreen", "shockingpink", "sienna", "silver", "sinopia", "skobeloff", "skyblue", "skymagenta", "slateblue", "slategray", "smalt", "smokeytopaz", "smokyblack", "snow", "spirodiscoball", "springbud", "springgreen", "steelblue", "stildegrainyellow", "stizza", "stormcloud", "straw", "sunglow", "sunset", "sunsetorange", "tan", "tangelo", "tangerine", "tangerineyellow", "taupe", "taupegray", "tawny", "teagreen", "tearose", "teal", "tealblue", "tealgreen", "terracotta", "thistle", "thulianpink", "ticklemepink", "tiffanyblue", "tigereye", "timberwolf", "titaniumyellow", "tomato", "toolbox", "topaz", "tractorred", "trolleygrey", "tropicalrainforest", "trueblue", "tuftsblue", "tumbleweed", "turkishrose", "turquoise", "turquoiseblue", "turquoisegreen", "tuscanred", "twilightlavender", "tyrianpurple", "uablue", "uared", "uclablue", "uclagold", "ufogreen", "upforestgreen", "upmaroon", "usccardinal", "uscgold", "ube", "ultrapink", "ultramarine", "ultramarineblue", "umber", "unitednationsblue", "universityofcaliforniagold", "unmellowyellow", "upsdellred", "urobilin", "utahcrimson", "vanilla", "vegasgold", "venetianred", "verdigris", "vermilion", "veronica", "violet", "violetblue", "violetred", "viridian", "vividauburn", "vividburgundy", "vividcerise", "vividtangerine", "vividviolet", "warmblack", "waterspout", "wenge", "wheat", "white", "whitesmoke", "wildstrawberry", "wildwatermelon", "wildblueyonder", "wine", "wisteria", "xanadu", "yaleblue", "yellow", "yelloworange", "yellowgreen", "zaffre", "zinnwalditebrown"];

_finishes = [["Glossy",0], ["Metallic",500], ["Matte",2500], ["Chrome",5000]];

_farmingVehicles = ["ADM_GMC_Vandura","Jonzie_Transit","ADM_Ford_F100","Jonzie_Raptor"];
_doughnuts = player getVariable ["doughnutsLevel", 0];
//remember to use this array in the mafia selling script & ALSO THE CAR UPDATE SCRIPT.
_civilianVehicle = [
	["Jonzie_XB",1900],
	["ADM_1969_Camaro",2200],
	["Jonzie_Mini_Cooper",2300],
	["Jonzie_Ceed",2400],
	["ADM_1964_Impala",2500],
	["ivory_190e",2600],
	["vvv_Chevrolet_Cone0",3000],
	["jonzie_30CSL",3200],
	["ADM_1969_Charger",3500],
	["vvv_Abarth_695",4000],
	["ADM_GMC_Vandura",5100], // can farm
	["ivory_gti",6000],	
	["Jonzie_Transit",6400], //can farm
	["vvv_Chevrolet_Bel_Air",7000],
	["vvv_Abarth_500",7000],
	["vvv_Alfa_Romeo_Spider_Duetto",8000],
	["vvv_Chevrolet_Camaro_RS",9000],
	["Jonzie_Mini_Cooper_r_spec",9000],	
	["ADM_Ford_F100",9500], // can farm	
	["nopixel_GMC_Campervan",9999],	
	["nopixel_Box_Default",9999],	
	["vvv_Chevrolet_Blazer",10000],
	["vvv_Alfa_Romeo_59", 10000],
	["vvv_Chevrolet_Impala",10000],
	["ivory_e36",12000],
	["Jonzie_Raptor",12000], // can farm	
	["Jonzie_Escalade",12000],
	["ivory_gt500",12000],
	["vvv_Chevrolet_Corvette_Cone",12000],
	["ivory_rs4",15000],
	["vvv_Cadillac_Eldorado",15000],
	["ivory_evox",18000],	
	["ivory_supra",19000],	
	["ivory_r34",22000],
	["vvv_Cadillac_CTSV",25000],
	["ivory_m3",25000],
	["ivory_wrx",27000],
	["vvv_Cadillac_Escalade",30000],
	["vvv_Audi_A4",30000],
	["ivory_elise",30000],		
	["ivory_isf",35000],		
	["Jonzie_Viper",39999],
	["vvv_Audi_RS6_Avant_C6",40000],
	["vvv_Audi_Q7",50000],
	["vvv_Audi_Q7",50000],
	["ivory_c",75000],
	["vvv_Cadillac_DTS",75000],
	["ivory_lfa",85000],
	["ivory_mp4",95000],
	["vvv_Cadillac_XLR_V",95000],
	["ivory_911",100000],
	["ivory_r8", 120000],
	["vvv_Aston_Martin_DB9", 120000],
	["vvv_audi_r8", 120000],
	["ivory_r8_spyder", 140000],
	["vvv_Audi_TT_RS_Coupe", 150000],
	["vvv_Aston_Martin_Rapide", 150000],
	["ivory_lp560", 170000],
	["ivory_rev", 220000],
	["ivory_ccx", 240000],
	["ivory_f1",250000],
	["ivory_veyron",300000],
	["red_beetle_66_black",14000],
	["red_cvpi_06_black",25000],
	["red_f350_08_black",120000],
	["red_towtruck_08_black",45000],
	["sl_taurus_10_black",90000],
	["sl_panamera_10_black",350000],
	["sl_camaro_12_black",250000],
	["sl_charger_12_black",300000],
	["sl_xkrs_12_black",450000],
	["sl_s65_12_black",200000],
	["sl_porsche_12_black",400000],
	["sl_vanquish_13_black",600000],
	["sl_gs350_13_black",105000],
	["sl_corvette_14_black",800000],
	["sl_suburban_15_black",350000],
	["sl_charger_15_black",400000],
	["red_explorer_16_black",250000],
	["C_Quadbike_01_F",5000],
	["C_SUV_01_F",25000]
];
_harleys = [
	["Acj_Harley_Davidson_Sons_Of_Anarchy",15000],
	["Acj_HarleyDavidson_Sholvehead",20000],
	["vvv_HarleyDavidson_CustomBobber1",25000],
	["Acj_BMWR_75",35000]
];
_civilianVehicle = _civilianVehicle + _harleys;


if(_doughnuts > 0) then {
	_ret = [
		["1967_Shelby_Mustang_GT500", 20000],
		["ADM_Monte_Carlo", 15000],
		["VVV_Aston_Martin_1964_DB5", 40000]
	];
	_civilianVehicle = _civilianVehicle + _ret;
};
if(_doughnuts > 1) then {
	_ret = [
		["vvv_man_obras_negro", 35000],
		["shounka_buggy", 35000],
		["vvv_man_obras_negro", 35000],
		["VVV_cazafantasmas_civ", 35000]
	];
	_civilianVehicle = _civilianVehicle + _ret;
};
if(_doughnuts > 2) then {
	_ret = [
		["devon_gtx", 50000],
		["vvv_DOD_RamSRT_civ", 25000],
		["vvv_dumper", 50000],
		["Jonzie_Forklift", 25000],
		["sl_genesis_16_black",150000]
	];
	_civilianVehicle = _civilianVehicle + _ret;
};
if(_doughnuts > 3) then {
	_ret = [
		["vvv_formula1", 100000],
		["C_Offroad_02_unarmed_F", 50000],
		["sl_venomgt_11_black",400000]
	];
	_civilianVehicle = _civilianVehicle + _ret;
};
if(_doughnuts > 4) then {
	_ret = [
		["New_Holland_TC590_civ", 25000],
		["vvv_Ponsse_Buffalo_Forwarder_civ", 30000],
		["B_T_LSV_01_unarmed_F", 100000],
		["O_T_LSV_02_unarmed_F",150000],
		["vvv_SeatLeon_2014_font", 100000],
		["shelbycobra_car_azul", 100000],
		["ivory_supra_topsecret", 100000],
		["vvv_steyrmulti_civ", 25000],
		["1967_Shelby_Mustang_GT500", 20000],
		["ADM_Monte_Carlo", 15000],
		["VVV_Aston_Martin_1964_DB5", 40000]
	];
	_civilianVehicle = _civilianVehicle + _ret;
};
// police "C_Boat_Civil_01_F"
//boatshop
if(str CurrentCursorTarget find "embarcadero" > -1) then {
	_type = "BOAT";
	_civilianVehicle = [
		["B_Boat_Transport_01_F",15000],
		["Lexx_Jetboat_H",30000],
		["POP_Speed_yatch",70000],
		["vvv_NewYacht",200000],
		["Mattaust_Fisher",350000]
	];
};
if((typeOF cursorTarget) find "Hangar_F" > -1) then {
	_type = "PLANE";
	_civilianVehicle = [
		["sab_albatrosb2_civ",150000],
		["sab_albatrosd2",160000],
		["C_Plane_Civil_01_F", 200000],
		//["sab_piper", 200000],
		["Sab_an22", 300000],
		["sab_do228", 600000],
		["Sab_an22", 600000],
		["Sab_an12",700000],
		["sab_falcon", 1000000],
		["B_T_VTOL_01_infantry_F", 2000000]
	];
};



if(_whatdo == "NEW") then {
	_display = findDisplay 1444;
	_list = _display displayCtrl 1500;

	lbClear _list;

	{
		_class = _x select 0;
		_cost = _x select 1;
		_vehicleName = [(_x select 0)] call Client_fnc_getVehicleName;

		_addedprice = (_cost / 100) * taxRate;
		_addedprice = round (_addedprice);
		_cost = _addedprice + _cost;

		if(_class IN _farmingvehicles) then { 
			_list lbAdd format["$%2 (Tax %%3): %1 (Auto Refine)",_vehicleName,_cost,taxRate]; 
		} else { 
			_list lbAdd format["$%2 (Tax %%3): %1",_vehicleName,_cost,taxRate]; 
		};



		_list lbSetdata [(lbSize _list)-1,str([_class, _cost])];
	} foreach _civilianVehicle;

	_list = _display displayCtrl 1501;
	lbClear _list;
	{
		_TextureDisplayName = getText(configFile >> "CfgIvoryTextures" >> _x >> "displayName");
		_list lbAdd format["%1",_TextureDisplayName];
		_list lbSetdata [(lbSize _list)-1,str(_x)];
	} foreach _textures;

	_list = _display displayCtrl 1502;
	lbClear _list;
	{
		_class = _x select 0;
		_cost = _x select 1;	
		_FinishDisplayName = getText(configFile >> "CfgIvoryMaterials" >> _class >> "displayName");
		_list lbAdd format["Cena: $%2 - %1",_FinishDisplayName,_cost];
		_list lbSetdata [(lbSize _list)-1,str([_class, _cost])];
	} foreach _finishes;

	lbSetCurSel [1500, 0];
	lbSetCurSel [1501, 0];
	lbSetCurSel [1502, 0];

};

_index = lbCurSel (1500);
_status = lbData[1500, _index];
_SELECTEDVEHICLE = call compile format["%1", _status];
_selectedvehicle = _selectedvehicle select 0;

_index = lbCurSel (1501);
_status = lbData[1501, _index];
_SELECTEDCOLOR = call compile format["%1", _status];
_SELECTEDCOLOR = getText(configfile >> "CfgIvoryTextures" >> _SELECTEDCOLOR >> "texture");

_index = lbCurSel (1502);
_status = lbData[1502, _index];
_SELECTEDFINISH = call compile format["%1", _status];
_SELECTEDFINISH = _SELECTEDFINISH select 0;
_SELECTEDFINISH = getText(configfile >> "CfgIvoryMaterials" >> _SELECTEDFINISH >> "material");

if(_whatdo == "CAR" || isNil "spawnedvehicle") then {
	if(!isNil "spawnedvehicle") then {
		deletevehicle spawnedvehicle;
	};

	player allowdamage false;
	_dir = 180;

	if(_SELECTEDVEHICLE iskindof "car") then {
		spawnedvehicle = _SELECTEDVEHICLE createvehiclelocal [7079.13,2425.9,0.3];
		spawnedvehicle setpos [7079.13,2425.9,0.3];
		spawnedvehicle setdir _dir;
	};

	if(_SELECTEDVEHICLE iskindof "ship") then {
		spawnedvehicle = _SELECTEDVEHICLE createvehiclelocal [696.876,416.723,3.13335];
		spawnedvehicle setpos [696.876,419.723,3.13335];
		_dir = 180;
		spawnedvehicle setdir _dir;
	};

	if(_SELECTEDVEHICLE iskindof "air") then {
		spawnedvehicle = _SELECTEDVEHICLE createvehiclelocal [2879.1,892.441,0.01];
		spawnedvehicle setpos [2879.1,892.441,0.01];
		_dir = 180;
		spawnedvehicle setdir _dir;
	};
	
	client_kcCamera camSetTarget spawnedvehicle;
	client_kcCamera camSetRelPos [2.7,1,0.25];
	client_kcCamera camSetFOV .99;
	client_kcCamera camCommit 0;

	spawnedVehicle setObjectTexture	[0, _SELECTEDCOLOR];
	spawnedVehicle setObjectMaterial [0, _SELECTEDFINISH];
	player disableCollisionWith spawnedvehicle;
	player allowdamage true;
};

if(spawnedvehicle iskindof "car" && !isNil "spawnedvehicle") then {
	spawnedVehicle setObjectMaterial [0, _SELECTEDFINISH];

	spawnedVehicle setObjectTexture	[0, _SELECTEDCOLOR];
};

















_medicVehicles = [
"Jonzie_ambluance",
"ivory_evox_ems"
];

_policeVehicle = [

"ivory_suburban_marked",

"ivory_rs4_marked",
"ivory_wrx_marked",
"ivory_evox_marked",
"ivory_isf_marked",

"ivory_suburban_unmarked",
"ivory_rs4_unmarked",
"ivory_wrx_unmarked",
"ivory_evox_unmarked",
"ivory_isf_unmarked",

"ivory_suburban_slicktop",
"ivory_rs4_slicktop",
"ivory_wrx_slicktop",
"ivory_evox_slicktop",
"ivory_isf_slicktop"

];


_specialVehicleList = [

//buggys no colors

"shounka_buggy",
"shounka_buggy_bleufonce",
"shounka_buggy_grise",
"shounka_buggy_jaune",
"shounka_buggy_noir",
"shounka_buggy_orange",
"shounka_buggy_rose",
"shounka_buggy_rouge",
"shounka_buggy_violet",

//utility

"Jonzie_flatbed_roadtrain",
"Jonzie_flatbed",
"Jonzie_curtain_roadtrain",
"Jonzie_Curtain",

"Jonzie_Log_Truck",
"Jonzie_Tanker_Truck",
"Jonzie_Tow_Truck",

"ivory_190e_taxi",
"ivory_rs4_taxi",
"Jonzie_Forklift",
"Jonzie_Transit",

//racing F1
"vvv_formula1_tmac",
"vvv_formula1_sayeed",
"vvv_formula1_Ciggy",
"vvv_formula1_Doge",
"vvv_formula1_ferrari",
"vvv_formula1_mario",
"vvv_formula1_marvel",
"vvv_formula1_mclaren",
"vvv_formula1_mingsucks",
"vvv_formula1_netflix1",
"vvv_formula1_netflix2",
"vvv_formula1_fb",
"vvv_formula1_andy",
"vvv_formula1_redbull",
"vvv_formula1_thad",
"vvv_formula1_twitch",

"vvv_seatleon_2014_arruabarrena",
"vvv_seatleon_2014_baus",
"vvv_seatleon_2014_briche_blue",
"vvv_seatleon_2014_carbonell",
"vvv_seatleon_2014_comini",
"vvv_seatleon_2014_dediego",
"vvv_seatleon_2014_font",
"vvv_seatleon_2014_giao",
"vvv_seatleon_2014_grise",
"vvv_seatleon_2014_hernandez",
"vvv_seatleon_2014_mourgues",
"vvv_seatleon_2014_oriola",
"vvv_seatleon_2014_rueda",
"vvv_seatleon_2014_schmarl",
"vvv_seatleon_2014_veglia",
"vvv_seatleon_2014_vinyes",
"vvv_seatleon_2014_weber"

];



















_medicVehicles = [
"Jonzie_ambluance",
"ivory_evox_ems"
];

_policeVehicle = [

"ivory_suburban_marked",

"ivory_rs4_marked",
"ivory_wrx_marked",
"ivory_evox_marked",
"ivory_isf_marked",

"ivory_suburban_unmarked",
"ivory_rs4_unmarked",
"ivory_wrx_unmarked",
"ivory_evox_unmarked",
"ivory_isf_unmarked",

"ivory_suburban_slicktop",
"ivory_rs4_slicktop",
"ivory_wrx_slicktop",
"ivory_evox_slicktop",
"ivory_isf_slicktop"

];


_specialVehicleList = [

//buggys no colors

"shounka_buggy",
"shounka_buggy_bleufonce",
"shounka_buggy_grise",
"shounka_buggy_jaune",
"shounka_buggy_noir",
"shounka_buggy_orange",
"shounka_buggy_rose",
"shounka_buggy_rouge",
"shounka_buggy_violet",

//utility

"Jonzie_flatbed_roadtrain",
"Jonzie_flatbed",
"Jonzie_curtain_roadtrain",
"Jonzie_Curtain",

"Jonzie_Log_Truck",
"Jonzie_Tanker_Truck",
"Jonzie_Tow_Truck",

"ivory_190e_taxi",
"ivory_rs4_taxi",
"Jonzie_Forklift",
"Jonzie_Transit",

//racing F1
"vvv_formula1_tmac",
"vvv_formula1_sayeed",
"vvv_formula1_Ciggy",
"vvv_formula1_Doge",
"vvv_formula1_ferrari",
"vvv_formula1_mario",
"vvv_formula1_marvel",
"vvv_formula1_mclaren",
"vvv_formula1_mingsucks",
"vvv_formula1_netflix1",
"vvv_formula1_netflix2",
"vvv_formula1_fb",
"vvv_formula1_andy",
"vvv_formula1_redbull",
"vvv_formula1_thad",
"vvv_formula1_twitch",

"vvv_seatleon_2014_arruabarrena",
"vvv_seatleon_2014_baus",
"vvv_seatleon_2014_briche_blue",
"vvv_seatleon_2014_carbonell",
"vvv_seatleon_2014_comini",
"vvv_seatleon_2014_dediego",
"vvv_seatleon_2014_font",
"vvv_seatleon_2014_giao",
"vvv_seatleon_2014_grise",
"vvv_seatleon_2014_hernandez",
"vvv_seatleon_2014_mourgues",
"vvv_seatleon_2014_oriola",
"vvv_seatleon_2014_rueda",
"vvv_seatleon_2014_schmarl",
"vvv_seatleon_2014_veglia",
"vvv_seatleon_2014_vinyes",
"vvv_seatleon_2014_weber"

];
