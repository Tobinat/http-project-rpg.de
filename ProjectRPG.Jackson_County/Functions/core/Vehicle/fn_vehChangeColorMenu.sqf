/*
	Author: Kajetan "Kruk" Mruk
	For: stanlakeside.pl
	Date: 03.02.2017 (Non-retard Units)
	
	Params: none
	Description: Function that creates dialog and other functions;
	Return: nothing
*/
disableSerialization;
spawnedVehicle = CurrentCursorTarget;
createDialog "vehicle_colors";
_display = findDisplay 70001;
waitUntil{dialog};
_priceCtrl = _display displayCtrl 1001;
_colorsCtrl = _display displayCtrl 1501;
_finishCtrl = _display displayCtrl 1502;
_lightsCtrl = _display displayCtrl 1503;
_windowsCtrl = _display displayCtrl 1504;
_rimsCtrl = _display displayCtrl 1505;
_textures = ["airforceblue", "aliceblue", "alizarincrimson", "almond", "amaranth", "amber", "americanrose", "amethyst", "androidgreen", "antiflashwhite", "antiquebrass", "antiquefuchsia", "antiquewhite", "ao", "applegreen", "apricot", "aqua", "aquamarine", "armygreen", "arylideyellow", "ashgrey", "asparagus", "atomictangerine", "auburn", "aureolin", "aurometalsaurus", "awesome", "azure", "azuremist", "babyblue", "babyblueeyes", "babypink", "ballblue", "bananamania", "bananayellow", "battleshipgrey", "bazaar", "beaublue", "beaver", "beige", "bisque", "bistre", "bittersweet", "black", "blanchedalmond", "bleudefrance", "blizzardblue", "blond", "blue", "bluebell", "bluegray", "bluegreen", "bluepurple", "blueviolet", "blush", "bole", "bondiblue", "bone", "bostonuniversityred", "bottlegreen", "boysenberry", "brandeisblue", "brass", "brickred", "brightcerulean", "brightgreen", "brightlavender", "brightmaroon", "brightpink", "brightturquoise", "brightube", "brilliantlavender", "brilliantrose", "brinkpink", "britishracinggreen", "bronze", "brown", "bubblegum", "bubbles", "buff", "bulgarianrose", "burgundy", "burlywood", "burntorange", "burntsienna", "burntumber", "byzantine", "byzantium", "cgblue", "cgred", "cadet", "cadetblue", "cadetgrey", "cadmiumgreen", "cadmiumorange", "cadmiumred", "cadmiumyellow", "cafeaulait", "cafenoir", "calpolypomonagreen", "cambridgeblue", "camel", "camouflagegreen", "canary", "canaryyellow", "candyapplered", "candypink", "capri", "caputmortuum", "cardinal", "caribbeangreen", "carmine", "carminepink", "carminered", "carnationpink", "carnelian", "carolinablue", "carrotorange", "celadon", "celeste", "celestialblue", "cerise", "cerisepink", "cerulean", "ceruleanblue", "chamoisee", "champagne", "charcoal", "chartreuse", "cherry", "cherryblossompink", "chestnut", "chocolate", "chromeyellow", "cinereous", "cinnabar", "cinnamon", "citrine", "classicrose", "cobalt", "cocoabrown", "coffee", "columbiablue", "coolblack", "coolgrey", "copper", "copperrose", "coquelicot", "coral", "coralpink", "coralred", "cordovan", "corn", "cornellred", "cornflower", "cornflowerblue", "cornsilk", "cosmiclatte", "cottoncandy", "cream", "crimson", "crimsonred", "crimsonglory", "cyan", "daffodil", "dandelion", "darkblue", "darkbrown", "darkbyzantium", "darkcandyapplered", "darkcerulean", "darkchestnut", "darkcoral", "darkcyan", "darkelectricblue", "darkgoldenrod", "darkgray", "darkgreen", "darkjunglegreen", "darkkhaki", "darklava", "darklavender", "darkmagenta", "darkmidnightblue", "darkolivegreen", "darkorange", "darkorchid", "darkpastelblue", "darkpastelgreen", "darkpastelpurple", "darkpastelred", "darkpink", "darkpowderblue", "darkraspberry", "darkred", "darksalmon", "darkscarlet", "darkseagreen", "darksienna", "darkslateblue", "darkslategray", "darkspringgreen", "darktan", "darktangerine", "darktaupe", "darkterracotta", "darkturquoise", "darkviolet", "dartmouthgreen", "davygrey", "debianred", "deepcarmine", "deepcarminepink", "deepcarrotorange", "deepcerise", "deepchampagne", "deepchestnut", "deepcoffee", "deepfuchsia", "deepjunglegreen", "deeplilac", "deepmagenta", "deeppeach", "deeppink", "deepsaffron", "deepskyblue", "denim", "desert", "desertsand", "dimgray", "dodgerblue", "dogwoodrose", "dollarbill", "drab", "dukeblue", "earthyellow", "ecru", "eggplant", "eggshell", "egyptianblue", "electricblue", "electriccrimson", "electriccyan", "electricgreen", "electricindigo", "electriclavender", "electriclime", "electricpurple", "electricultramarine", "electricviolet", "electricyellow", "emerald", "etonblue", "fallow", "falured", "famous", "fandango", "fashionfuchsia", "fawn", "feldgrau", "fern", "ferngreen", "ferrarired", "fielddrab", "fireenginered", "firebrick", "flame", "flamingopink", "flavescent", "flax", "floralwhite", "fluorescentorange", "fluorescentpink", "fluorescentyellow", "folly", "forestgreen", "frenchbeige", "frenchblue", "frenchlilac", "frenchrose", "fuchsia", "fuchsiapink", "fulvous", "fuzzywuzzy", "gainsboro", "gamboge", "ghostwhite", "ginger", "glaucous", "glitter", "gold", "goldenbrown", "goldenpoppy", "goldenyellow", "goldenrod", "grannysmithapple", "gray", "grayasparagus", "green", "greenblue", "greenyellow", "grullo", "guppiegreen", "hanblue", "hanpurple", "hansayellow", "harlequin", "harvardcrimson", "harvestgold", "heartgold", "heliotrope", "hollywoodcerise", "honeydew", "hookergreen", "hotmagenta", "hotpink", "huntergreen", "icterine", "inchworm", "indiagreen", "indianred", "indianyellow", "indigo", "internationalkleinblue", "internationalorange", "iris", "isabelline", "islamicgreen", "ivory", "jade", "jasmine", "jasper", "jazzberryjam", "jonquil", "junebud", "junglegreen", "kucrimson", "kellygreen", "khaki", "lasallegreen", "languidlavender", "lapislazuli", "laserlemon", "laurelgreen", "lava", "lavender", "lavenderblue", "lavenderblush", "lavendergray", "lavenderindigo", "lavendermagenta", "lavendermist", "lavenderpink", "lavenderpurple", "lavenderrose", "lawngreen", "lemon", "lemonyellow", "lemonchiffon", "lemonlime", "lightcrimson", "lightthulianpink", "lightapricot", "lightblue", "lightbrown", "lightcarminepink", "lightcoral", "lightcornflowerblue", "lightcyan", "lightfuchsiapink", "lightgoldenrodyellow", "lightgray", "lightgreen", "lightkhaki", "lightpastelpurple", "lightpink", "lightsalmon", "lightsalmonpink", "lightseagreen", "lightskyblue", "lightslategray", "lighttaupe", "lightyellow", "lilac", "lime", "limegreen", "lincolngreen", "linen", "lion", "liver", "lust", "msugreen", "macaroniandcheese", "magenta", "magicmint", "magnolia", "mahogany", "maize", "majorelleblue", "malachite", "manatee", "mangotango", "mantis", "maroon", "mauve", "mauvetaupe", "mauvelous", "mayablue", "meatbrown", "mediumpersianblue", "mediumaquamarine", "mediumblue", "mediumcandyapplered", "mediumcarmine", "mediumchampagne", "mediumelectricblue", "mediumjunglegreen", "mediumlavendermagenta", "mediumorchid", "mediumpurple", "mediumredviolet", "mediumseagreen", "mediumslateblue", "mediumspringbud", "mediumspringgreen", "mediumtaupe", "mediumtealblue", "mediumturquoise", "mediumvioletred", "melon", "midnightblue", "midnightgreen", "mikadoyellow", "mint", "mintcream", "mintgreen", "mistyrose", "moccasin", "modebeige", "moonstoneblue", "mordantred19", "mossgreen", "mountainmeadow", "mountbattenpink", "mulberry", "munsell", "mustard", "myrtle", "nadeshikopink", "napiergreen", "naplesyellow", "navajowhite", "navyblue", "neoncarrot", "neonfuchsia", "neongreen", "northtexasgreen", "oceanboatblue", "ochre", "officegreen", "oldgold", "oldlace", "oldlavender", "oldmauve", "oldrose", "olive", "olivedrab", "olivegreen", "olivine", "onyx", "operamauve", "orange", "orangeyellow", "orangepeel", "orangered", "orchid", "otterbrown", "outerspace", "outrageousorange", "oxfordblue", "pacificblue", "pakistangreen", "palatinateblue", "palatinatepurple", "paleaqua", "paleblue", "palebrown", "palecarmine", "palecerulean", "palechestnut", "palecopper", "palecornflowerblue", "palegold", "palegoldenrod", "palegreen", "palelavender", "palemagenta", "palepink", "paleplum", "paleredviolet", "palerobineggblue", "palesilver", "palespringbud", "paletaupe", "palevioletred", "pansypurple", "papayawhip", "parisgreen", "pastelblue", "pastelbrown", "pastelgray", "pastelgreen", "pastelmagenta", "pastelorange", "pastelpink", "pastelpurple", "pastelred", "pastelviolet", "pastelyellow", "patriarch", "paynegrey", "peach", "peachpuff", "peachyellow", "pear", "pearl", "pearlaqua", "peridot", "periwinkle", "persianblue", "persianindigo", "persianorange", "persianpink", "persianplum", "persianred", "persianrose", "phlox", "phthaloblue", "phthalogreen", "piggypink", "pinegreen", "pink", "pinkflamingo", "pinksherbet", "pinkpearl", "pistachio", "platinum", "plum", "portlandorange", "powderblue", "princetonorange", "prussianblue", "psychedelicpurple", "puce", "pumpkin", "purple", "purpleheart", "purplemountainmajesty", "purplepizzazz", "purpletaupe", "rackley", "radicalred", "raspberry", "raspberryglace", "raspberrypink", "rawsienna", "razzledazzlerose", "razzmatazz", "red", "redorange", "redbrown", "redviolet", "richblack", "richcarmine", "richelectricblue", "richlilac", "richmaroon", "riflegreen", "rose", "rosebonbon", "roseebony", "rosegold", "rosemadder", "rosepink", "rosequartz", "rosetaupe", "rosevale", "rosewood", "rossocorsa", "rosybrown", "royalazure", "royalblue", "royalfuchsia", "royalpurple", "ruby", "ruddy", "ruddybrown", "ruddypink", "rufous", "russet", "rust", "sacramentostategreen", "saddlebrown", "safetyorange", "saffron", "saintpatrickblue", "salmon", "salmonpink", "sand", "sanddune", "sandstorm", "sandybrown", "sandytaupe", "sapgreen", "sapphire", "satinsheengold", "scarlet", "schoolbusyellow", "screamingreen", "seablue", "seagreen", "sealbrown", "seashell", "selectiveyellow", "sepia", "shadow", "shamrock", "shamrockgreen", "shockingpink", "sienna", "silver", "sinopia", "skobeloff", "skyblue", "skymagenta", "slateblue", "slategray", "smalt", "smokeytopaz", "smokyblack", "snow", "spirodiscoball", "springbud", "springgreen", "steelblue", "stildegrainyellow", "stizza", "stormcloud", "straw", "sunglow", "sunset", "sunsetorange", "tan", "tangelo", "tangerine", "tangerineyellow", "taupe", "taupegray", "tawny", "teagreen", "tearose", "teal", "tealblue", "tealgreen", "terracotta", "thistle", "thulianpink", "ticklemepink", "tiffanyblue", "tigereye", "timberwolf", "titaniumyellow", "tomato", "toolbox", "topaz", "tractorred", "trolleygrey", "tropicalrainforest", "trueblue", "tuftsblue", "tumbleweed", "turkishrose", "turquoise", "turquoiseblue", "turquoisegreen", "tuscanred", "twilightlavender", "tyrianpurple", "uablue", "uared", "uclablue", "uclagold", "ufogreen", "upforestgreen", "upmaroon", "usccardinal", "uscgold", "ube", "ultrapink", "ultramarine", "ultramarineblue", "umber", "unitednationsblue", "universityofcaliforniagold", "unmellowyellow", "upsdellred", "urobilin", "utahcrimson", "vanilla", "vegasgold", "venetianred", "verdigris", "vermilion", "veronica", "violet", "violetblue", "violetred", "viridian", "vividauburn", "vividburgundy", "vividcerise", "vividtangerine", "vividviolet", "warmblack", "waterspout", "wenge", "wheat", "white", "whitesmoke", "wildstrawberry", "wildwatermelon", "wildblueyonder", "wine", "wisteria", "xanadu", "yaleblue", "yellow", "yelloworange", "yellowgreen", "zaffre", "zinnwalditebrown"];
_texturesBody = _textures;
_finishes = [["Glossy",250], ["Metallic",500], ["Matte",2500], ["Chrome",5000]];

_information = spawnedVehicle getVariable ["information", 0];
if((count _information) == 0) exitWith { hint "Informations about my car is count 0 (1), maybe spawned vehicle?"; closeDialog 0; };
if(isNull spawnedVehicle) exitWith { hint "My vehicle is null (1), i'm not looking on car?"; closeDialog 0; };
_classname = typeOf spawnedvehicle;

if (str _classname find "vory_" > -1) then {
		_texturesIvory = ["kif_all_blueongray","kif_all_blueongreen","kif_all_blueonred","kif_all_blueonyellow","kif_all_grayonblue","kif_all_grayongreen","kif_all_grayonred","kif_all_grayonyellow","kif_all_greenonblue","kif_all_greenongray","kif_all_greenonred","kif_all_greenonyellow","kif_all_redonblue","kif_all_redongray","kif_all_redongreen","kif_all_redonyellow","kif_all_yellowonblue","kif_all_yellowongray","kif_all_yellowongreen","kif_all_yellowonred","kif_all_minecraft"];
		_texturesBody = _texturesBody + _texturesIvory;
};
if (str _classname find "vory_evox" > -1) then {
		_texturesIvory = ["ivory_evox_brightlime","ivory_evox_cleanwhite","ivory_evox_forsakenteal","ivory_evox_reckfulred","ivory_evox_koyama"];
		_texturesBody = _texturesBody + _texturesIvory;
};
if (str _classname find "vory_c" > -1) then {
		_texturesIvory = ["kif_veyron_carillo","kif_veyron_8","kif_veyron_revo","kif_veyron_ksport","kif_veyron_camo","kif_veyron_gee","kif_veyron_goldee","kif_veyron_race","kif_veyron_velvet","ivory_veyron_blue","ivory_veyron_bw","ivory_veyron_century","ivory_veyron_classic","ivory_veyron_dark","ivory_veyron_lafinale","ivory_veyron_sport"];
		_texturesBody = _texturesBody + _texturesIvory;
};
if (str _classname find "vory_gt500" > -1) then {
		_texturesIvory = ["kif_gt500_bg","kif_gt500_wb","kif_gt500_rw","kif_gt500_gb"];
		_texturesBody = _texturesBody + _texturesIvory;
};
if (str _classname find "vory_lfa" > -1) then {
		_texturesIvory = ["kif_lfa_deuce","kif_lfa_monty","kif_lfa_nyan","kif_lfa_wb","kif_lfa_tokyos","kif_lfa_spacegrey","kif_lfa_bibc","kif_lfa_speedhunters","kif_lfa_falken","kif_lfa_gready","kif_lfa_hotchkis","kif_lfa_falkentire","kif_lfa_rid","ivory_lfa_neon"];
		_texturesBody = _texturesBody + _texturesIvory;
};
if (str _classname find "vory_lp560" > -1) then {
		_texturesIvory = ["kif_lp560_25","kif_lp560_br","kif_lp560_carbon","kif_lp560_batman","kif_lp560_galaxy","kif_lp560_italia","kif_lp560_fidanza","kif_lp560_carillo","kif_lp560_kw","kif_lp560_recaro","kif_lp560_nyan","kif_lp560_redsavage"];
		_texturesBody = _texturesBody + _texturesIvory;
};
if (str _classname find "vory_m3" > -1) then {
		_texturesIvory = ["kif_m3_c9","kif_m3_candyred","kif_m3_crispyblue","kif_m3_deluxeblue","kif_m3_icywhite","kif_m3_special"];
		_texturesBody = _texturesBody + _texturesIvory;
};
if (str _classname find "vory_r8" > -1) then {
		_texturesIvory = ["kif_r8_sports1","kif_r8_sports2","kif_r8_sports3","kif_r8_sports4"];
		_texturesBody = _texturesBody + _texturesIvory;
};
if (str _classname find "vory_rev" > -1) then {
		_texturesIvory = ["kif_rev_sports1","kif_rev_sports2","kif_rev_sports3","kif_rev_sports4"];
		_texturesBody = _texturesBody + _texturesIvory;
};
if (str _classname find "vory_supra" > -1) then {
		_texturesIvory = ["kif_supra_walker","ivory_supra_electricblue","ivory_supra_electricred"," ivory_supra_electricwhite","ivory_supra_lastride","ivory_supra_shadowgray"];
		_texturesBody = _texturesBody + _texturesIvory;
};
if (str _classname find "vory_wrx" > -1) then {
		_texturesIvory = ["kif_wrx_blackgray","kif_wrx_bluecamo","kif_wrx_camel9","kif_wrx_candy","kif_wrx_nyan","kif_wrx_redblack","kif_wrx_rpd","kif_wrx_sportorange","ivory_wrx_andy","ivory_wrx_sparco"];
		_texturesBody = _texturesBody + _texturesIvory;
};
if (str _classname find "vory_e36" > -1) then {
		_texturesIvory = ["ivory_e36_m","ivory_e36_premium","ivory_e36_ricer"];
		_texturesBody = _texturesBody + _texturesIvory;
};
if (str _classname find "vory_elise" > -1) then {
		_texturesIvory = ["ivory_elise_classic","ivory_elise_luxe","ivory_elise_ocean","ivory_elise_pro","ivory_elise_red","ivory_elise_sport","ivory_elise_tuning"];
		_texturesBody = _texturesBody + _texturesIvory;
};
if (str _classname find "vory_r34" > -1) then {
		_texturesIvory = ["ivory_r34_2fast","ivory_r34_cobaltgray","ivory_r34_majesticpurple","ivory_r34_nitrored","ivory_evox_koyama"];
		_texturesBody = _texturesBody + _texturesIvory;
};
if (str _classname find "vory_ccx" > -1) then {
		_texturesIvory = ["ivory_ccx_champion"];
		_texturesBody = _texturesBody + _texturesIvory;
};



_color = _information select 2;
_finish = _information select 3;
_rims = _information select 4;
_windows = _information select 5;
_lights = _information select 6;

lbClear _colorsCtrl;
lbClear _finishCtrl;
lbClear _lightsCtrl;
lbClear _windowsCtrl;

_selectedColorsDialog = 0;
{
	_TextureDisplayName = getText(configFile >> "CfgIvoryTextures" >> _x >> "displayName");
	_colorsCtrl lbAdd format["%1",_TextureDisplayName];
	_index = (lbSize _colorsCtrl) - 1;
	if(_x == _color) then { _selectedColorsDialog = _index; };
	_colorsCtrl lbSetdata [_index, str(_x)];
} foreach _texturesBody;
lbSetCurSel [1501, _selectedColorsDialog];

_selectedRimsDialog = 0;
{
	_TextureDisplayName = getText(configFile >> "CfgIvoryTextures" >> _x >> "displayName");
	_rimsCtrl lbAdd format["%1",_TextureDisplayName];
	_index = (lbSize _rimsCtrl) - 1;
	if(_x == _rims) then { _selectedRimsDialog = _index; };
	_rimsCtrl lbSetdata [_index, str(_x)];
} foreach _textures;
lbSetCurSel [1505, _selectedRimsDialog];

_selectedFinishDialog = 0;
{
	_class = _x select 0;
	_cost = _x select 1;
	_FinishDisplayName = getText(configFile >> "CfgIvoryMaterials" >> _class >> "displayName");
	_finishCtrl lbAdd format["Cena: $%2 - %1",_FinishDisplayName,_cost];
	_index = (lbSize _finishCtrl) - 1;
	if(_finish == _class) then { _selectedFinishDialog = _index; };
	_finishCtrl lbSetdata [_index, str([_class, _cost])];
} foreach _finishes;
lbSetCurSel [1502, _selectedFinishDialog];

_selectedLightsDialog = 0;
for "_i" from 1 to 9 do {
	_lightsCtrl lbAdd format["%1%2", (_i * 10), "%"];
	_index = (lbSize _lightsCtrl) -1 ;
	if(_i == _lights) then { _selectedLightsDialog = _index; };
	_lightsCtrl lbSetdata [_index, str(_i)];
};
lbSetCurSel [1503, _selectedLightsDialog];

_selectedWindowsDialog = 0;
for "_i" from 1 to 9 do {
	_windowsCtrl lbAdd format["%1%2", (_i * 10), "%"];
	_index = (lbSize _windowsCtrl) - 1;
	if(_i == _windows) then { _selectedWindowsDialog = _index; };
	_windowsCtrl lbSetdata [_index, str(_i)];
};
lbSetCurSel [1504, _selectedWindowsDialog];

if(isNil "client_fnc_vehChangeColorOnLbChange") then {
	client_fnc_vehChangeColorOnLbChange = {
			disableSerialization;
			_display = findDisplay 70001;
			_priceCtrl = _display displayCtrl 1001;
			_colorsCtrl = _display displayCtrl 1501;
			_finishCtrl = _display displayCtrl 1502;
			_lightsCtrl = _display displayCtrl 1503;
			_windowsCtrl = _display displayCtrl 1504;
			_rimsCtrl = _display displayCtrl 1505;
			_classname = typeOf spawnedvehicle;
			_information = spawnedVehicle getVariable ["information", 0];
			_license = _information select 0;
			_color = _information select 2;
			_finish = _information select 3;
			_rims = _information select 4;
			_windows = _information select 5;
			_lights = _information select 6;
			_price = 0;
			_changedColor = false;
			//_index = lbCurSel (1501);
			//_status = lbData[1501, _index];
			_status = lbData[1501, (lbCurSel (1501))];
			_selectedColor = call compile format["%1", _status];
			if(_selectedColor != _color) then { _price = _price + 2000; _changedColor = true; };
			//_selectedColor = getText(configfile >> "CfgIvoryTextures" >> _selectedColor >> "texture");
			
			_index = lbCurSel (1505);
			_status = lbData[1505, _index];
			_selectedRims = call compile format["%1", _status];
			if(_selectedRims != _rims) then { _price = _price + 1000; };
			//_selectedRims = getText(configfile >> "CfgIvoryTextures" >> _selectedRims >> "texture");
			
			//_index = lbCurSel (1502);
			_status = lbData[1502, (lbCurSel (1502))];
			_selectedFinish = call compile format["%1", _status];
			if(_changedColor || (_finish != (_selectedFinish select 0))) then { _price = _price + (_selectedFinish select 1); };
			_selectedFinish = _selectedFinish select 0;
			//_selectedFinish = getText(configfile >> "CfgIvoryMaterials" >> _selectedFinish >> "material");
			
			_index = lbCurSel (1503);
			_selectedLights = parseNumber(lbData[1503, _index]);
			if(_selectedLights != _lights) then { _price = _price + (_selectedLights * 100); };
			
			_index = lbCurSel (1504);
			_selectedWindows = parseNumber(lbData[1504, _index]);
			if(_selectedWindows != _windows) then { _price = _price + (_selectedWindows * 100); };
			/*spawnedVehicle setObjectTexture	[0, _selectedColor];
			spawnedVehicle setObjectMaterial [0, _selectedFinish];
			spawnedVehicle setObjectTexture	[1, _selectedRims];
			spawnedVehicle setObjectTexture [2,"#(argb,8,8,3)color(0,0,0," + str (_selectedWindows / 10) + ",ca)"];
			spawnedVehicle setObjectTexture [3,"#(argb,8,8,3)color(0,0,0," + str (_selectedLights / 10) + ",ca)"];*/
			if (str _classname find "vory_" > -1 || str _className find "adilac_" > -1) then {
				[spawnedVehicle, [_selectedColor,_selectedFinish], _selectedRims, _selectedWindows, _selectedLights] call client_fnc_IvoryInitVehicle;
			};
			if (str _classname find "onzie_" > -1 || str _className find "adm_" > -1  || str _className find "ADM_" > -1 || str _className find "opixel_" > -1) then {
				[spawnedVehicle, [_selectedColor,_selectedFinish]] remoteexec ["client_fnc_initVehicle",2];
			};
			if (str _classname find "vv_" > -1) then {
				_selectedColor = getText(configfile >> "CfgIvoryTextures" >> _selectedColor >> "texture");
				spawnedVehicle setObjectTexture	[0, _selectedColor];
				_selectedFinish = getText(configfile >> "CfgIvoryMaterials" >> _selectedFinish >> "material");
				spawnedVehicle setObjectMaterial [0, _selectedFinish];
				_selectedRims = getText(configfile >> "CfgIvoryTextures" >> _selectedRims >> "texture");
				spawnedVehicle setObjectTexture	[1, _selectedRims];
				spawnedVehicle setObjectTexture [2,"#(argb,8,8,3)color(0,0,0," + str (_selectedWindows / 10) + ",ca)"];
				spawnedVehicle setObjectTexture [3,"#(argb,8,8,3)color(0,0,0," + str (_selectedLights / 10) + ",ca)"];
			};
			_priceStr = format["Cena: $%1",_price];
			_priceCtrl ctrlSetText _priceStr;
	};
};
if(isNil "client_fnc_vehChangeColorButtonAccept") then {
	client_fnc_vehChangeColorButtonAccept = {
		_information = spawnedVehicle getVariable ["information", 0];
		if(isNull spawnedVehicle) exitWith { hint "My vehicle is null (2), i'm not looking on car?"; closeDialog 0; };
		if((count _information) == 0) exitWith { hint "Informations about my car is count 0 (2), maybe spawned vehicle?";	closeDialog 0; };
		_classname = typeOf spawnedvehicle;
		_information = spawnedVehicle getVariable ["information", 0];
		_license = _information select 0;
		_color = _information select 2;
		_finish = _information select 3;
		_rims = _information select 4;
		_windows = _information select 5;
		_lights = _information select 6; 
		
		disableSerialization;
		_display = findDisplay 70001;
		_priceCtrl = _display displayCtrl 1001;
		_colorsCtrl = _display displayCtrl 1501;
		_finishCtrl = _display displayCtrl 1502;
		_lightsCtrl = _display displayCtrl 1503;
		_windowsCtrl = _display displayCtrl 1504;
		_rimsCtrl = _display displayCtrl 1505;
		_price = 0;
		
		_index = lbCurSel (1501);
		_status = lbData[1501, _index];
		_selectedColor = call compile format["%1", _status];
		
		_index = lbCurSel (1505);
		_status = lbData[1505, _index];
		_selectedRims = call compile format["%1", _status];
		
		_index = lbCurSel (1502);
		_status = lbData[1502, _index];
		_selectedFinish = call compile format["%1", _status];
		_selectedFinish = _selectedFinish select 0;
		
		_index = lbCurSel (1503);
		_selectedLights = parseNumber(lbData[1503, _index]);
		
		_index = lbCurSel (1504);
		_selectedWindows = parseNumber(lbData[1504, _index]);
		_price = parseNumber((ctrlText 1001) select [7]);

		_haveCash = [1,_price] call Client_fnc_sl_checkMoney_secure;
		if !(_haveCash) exitWith {
			["Nie masz wystarczającej ilości pieniędzy.", false] spawn domsg;
			closeDialog 0;
			//_color = getText(configfile >> "CfgIvoryTextures" >> _color >> "texture");
			//_finish = getText(configfile >> "CfgIvoryMaterials" >> _finish >> "material");
			//_rims = getText(configfile >> "CfgIvoryTextures" >> _rims >> "texture");
			if (str _classname find "vory_" > -1 || str _className find "vv_" > -1 || str _className find "adilac_" > -1) then {
				[spawnedVehicle, [_color,_finish], _rims, _windows, _lights] call client_fnc_IvoryInitVehicle;
			};
			if (str _classname find "onzie_" > -1 || str _className find "adm_" > -1  || str _className find "ADM_" > -1 || str _className find "opixel_" > -1) then {
				[spawnedVehicle, [_color,_finish]] remoteexec ["client_fnc_initVehicle",2];
			};
		};

		if (isNil "_selectedColor") exitWith {hint "Selected color is nil, maybe not selected options?"; closeDialog 0; };
		if (isNil "_selectedFinish") exitWith {hint "Selected finish is nil, maybe not selected options?"; closeDialog 0; };
		if (isNil "_selectedRims") exitWith {hint "Selected rims is nil, maybe not selected options?"; closeDialog 0; };
		if (isNil "_selectedWindows") exitWith {hint "Selected windows is nil, maybe not selected options?"; closeDialog 0; };
		if (isNil "_selectedLights") exitWith {hint "Selected lights is nil, maybe not selected options?"; closeDialog 0; };

		[_price] call Client_fnc_sl_removeCash_secure;
		
		_information set [2,_selectedColor];
		_information set [3,_selectedFinish];
		_information set [4,_selectedRims];
		_information set [5,_selectedWindows];
		_information set [6,_selectedLights];
		
		[format["Przemalowałeś pojazd za: $%1. Twój pojazd jest teraz w garażu.", _price], false] spawn domsg;
		[_selectedColor, _selectedFinish, _selectedRims, _selectedLights, _selectedWindows, _license] remoteExec ["server_fnc_updateVehicleColor", 2];
		
		[spawnedVehicle] call client_fnc_storeCar;
		spawnedVehicle = objNull;
	};
};