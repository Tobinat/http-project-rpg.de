/*
	Author: PRPG
	Date: 03.02.2017 (Non-retard Units)
	
	Params: none
	Description: Function that creates dialog and other functions;
	Return: nothing
*/
disableSerialization;
spawnedVehicle = CurrentCursorTarget;
createDialog "cop_vehicle_colors";
_display = findDisplay 70002;
waitUntil{dialog};
_colorsCtrl = _display displayCtrl 1501;
_finishCtrl = _display displayCtrl 1502;
_textures = ["airforceblue", "aliceblue", "alizarincrimson", "almond", "amaranth", "amber", "americanrose", "amethyst", "androidgreen", "antiflashwhite", "antiquebrass", "antiquefuchsia", "antiquewhite", "ao", "applegreen", "apricot", "aqua", "aquamarine", "armygreen", "arylideyellow", "ashgrey", "asparagus", "atomictangerine", "auburn", "aureolin", "aurometalsaurus", "awesome", "azure", "azuremist", "babyblue", "babyblueeyes", "babypink", "ballblue", "bananamania", "bananayellow", "battleshipgrey", "bazaar", "beaublue", "beaver", "beige", "bisque", "bistre", "bittersweet", "black", "blanchedalmond", "bleudefrance", "blizzardblue", "blond", "blue", "bluebell", "bluegray", "bluegreen", "bluepurple", "blueviolet", "blush", "bole", "bondiblue", "bone", "bostonuniversityred", "bottlegreen", "boysenberry", "brandeisblue", "brass", "brickred", "brightcerulean", "brightgreen", "brightlavender", "brightmaroon", "brightpink", "brightturquoise", "brightube", "brilliantlavender", "brilliantrose", "brinkpink", "britishracinggreen", "bronze", "brown", "bubblegum", "bubbles", "buff", "bulgarianrose", "burgundy", "burlywood", "burntorange", "burntsienna", "burntumber", "byzantine", "byzantium", "cgblue", "cgred", "cadet", "cadetblue", "cadetgrey", "cadmiumgreen", "cadmiumorange", "cadmiumred", "cadmiumyellow", "cafeaulait", "cafenoir", "calpolypomonagreen", "cambridgeblue", "camel", "camouflagegreen", "canary", "canaryyellow", "candyapplered", "candypink", "capri", "caputmortuum", "cardinal", "caribbeangreen", "carmine", "carminepink", "carminered", "carnationpink", "carnelian", "carolinablue", "carrotorange", "celadon", "celeste", "celestialblue", "cerise", "cerisepink", "cerulean", "ceruleanblue", "chamoisee", "champagne", "charcoal", "chartreuse", "cherry", "cherryblossompink", "chestnut", "chocolate", "chromeyellow", "cinereous", "cinnabar", "cinnamon", "citrine", "classicrose", "cobalt", "cocoabrown", "coffee", "columbiablue", "coolblack", "coolgrey", "copper", "copperrose", "coquelicot", "coral", "coralpink", "coralred", "cordovan", "corn", "cornellred", "cornflower", "cornflowerblue", "cornsilk", "cosmiclatte", "cottoncandy", "cream", "crimson", "crimsonred", "crimsonglory", "cyan", "daffodil", "dandelion", "darkblue", "darkbrown", "darkbyzantium", "darkcandyapplered", "darkcerulean", "darkchestnut", "darkcoral", "darkcyan", "darkelectricblue", "darkgoldenrod", "darkgray", "darkgreen", "darkjunglegreen", "darkkhaki", "darklava", "darklavender", "darkmagenta", "darkmidnightblue", "darkolivegreen", "darkorange", "darkorchid", "darkpastelblue", "darkpastelgreen", "darkpastelpurple", "darkpastelred", "darkpink", "darkpowderblue", "darkraspberry", "darkred", "darksalmon", "darkscarlet", "darkseagreen", "darksienna", "darkslateblue", "darkslategray", "darkspringgreen", "darktan", "darktangerine", "darktaupe", "darkterracotta", "darkturquoise", "darkviolet", "dartmouthgreen", "davygrey", "debianred", "deepcarmine", "deepcarminepink", "deepcarrotorange", "deepcerise", "deepchampagne", "deepchestnut", "deepcoffee", "deepfuchsia", "deepjunglegreen", "deeplilac", "deepmagenta", "deeppeach", "deeppink", "deepsaffron", "deepskyblue", "denim", "desert", "desertsand", "dimgray", "dodgerblue", "dogwoodrose", "dollarbill", "drab", "dukeblue", "earthyellow", "ecru", "eggplant", "eggshell", "egyptianblue", "electricblue", "electriccrimson", "electriccyan", "electricgreen", "electricindigo", "electriclavender", "electriclime", "electricpurple", "electricultramarine", "electricviolet", "electricyellow", "emerald", "etonblue", "fallow", "falured", "famous", "fandango", "fashionfuchsia", "fawn", "feldgrau", "fern", "ferngreen", "ferrarired", "fielddrab", "fireenginered", "firebrick", "flame", "flamingopink", "flavescent", "flax", "floralwhite", "fluorescentorange", "fluorescentpink", "fluorescentyellow", "folly", "forestgreen", "frenchbeige", "frenchblue", "frenchlilac", "frenchrose", "fuchsia", "fuchsiapink", "fulvous", "fuzzywuzzy", "gainsboro", "gamboge", "ghostwhite", "ginger", "glaucous", "glitter", "gold", "goldenbrown", "goldenpoppy", "goldenyellow", "goldenrod", "grannysmithapple", "gray", "grayasparagus", "green", "greenblue", "greenyellow", "grullo", "guppiegreen", "hanblue", "hanpurple", "hansayellow", "harlequin", "harvardcrimson", "harvestgold", "heartgold", "heliotrope", "hollywoodcerise", "honeydew", "hookergreen", "hotmagenta", "hotpink", "huntergreen", "icterine", "inchworm", "indiagreen", "indianred", "indianyellow", "indigo", "internationalkleinblue", "internationalorange", "iris", "isabelline", "islamicgreen", "ivory", "jade", "jasmine", "jasper", "jazzberryjam", "jonquil", "junebud", "junglegreen", "kucrimson", "kellygreen", "khaki", "lasallegreen", "languidlavender", "lapislazuli", "laserlemon", "laurelgreen", "lava", "lavender", "lavenderblue", "lavenderblush", "lavendergray", "lavenderindigo", "lavendermagenta", "lavendermist", "lavenderpink", "lavenderpurple", "lavenderrose", "lawngreen", "lemon", "lemonyellow", "lemonchiffon", "lemonlime", "lightcrimson", "lightthulianpink", "lightapricot", "lightblue", "lightbrown", "lightcarminepink", "lightcoral", "lightcornflowerblue", "lightcyan", "lightfuchsiapink", "lightgoldenrodyellow", "lightgray", "lightgreen", "lightkhaki", "lightpastelpurple", "lightpink", "lightsalmon", "lightsalmonpink", "lightseagreen", "lightskyblue", "lightslategray", "lighttaupe", "lightyellow", "lilac", "lime", "limegreen", "lincolngreen", "linen", "lion", "liver", "lust", "msugreen", "macaroniandcheese", "magenta", "magicmint", "magnolia", "mahogany", "maize", "majorelleblue", "malachite", "manatee", "mangotango", "mantis", "maroon", "mauve", "mauvetaupe", "mauvelous", "mayablue", "meatbrown", "mediumpersianblue", "mediumaquamarine", "mediumblue", "mediumcandyapplered", "mediumcarmine", "mediumchampagne", "mediumelectricblue", "mediumjunglegreen", "mediumlavendermagenta", "mediumorchid", "mediumpurple", "mediumredviolet", "mediumseagreen", "mediumslateblue", "mediumspringbud", "mediumspringgreen", "mediumtaupe", "mediumtealblue", "mediumturquoise", "mediumvioletred", "melon", "midnightblue", "midnightgreen", "mikadoyellow", "mint", "mintcream", "mintgreen", "mistyrose", "moccasin", "modebeige", "moonstoneblue", "mordantred19", "mossgreen", "mountainmeadow", "mountbattenpink", "mulberry", "munsell", "mustard", "myrtle", "nadeshikopink", "napiergreen", "naplesyellow", "navajowhite", "navyblue", "neoncarrot", "neonfuchsia", "neongreen", "northtexasgreen", "oceanboatblue", "ochre", "officegreen", "oldgold", "oldlace", "oldlavender", "oldmauve", "oldrose", "olive", "olivedrab", "olivegreen", "olivine", "onyx", "operamauve", "orange", "orangeyellow", "orangepeel", "orangered", "orchid", "otterbrown", "outerspace", "outrageousorange", "oxfordblue", "pacificblue", "pakistangreen", "palatinateblue", "palatinatepurple", "paleaqua", "paleblue", "palebrown", "palecarmine", "palecerulean", "palechestnut", "palecopper", "palecornflowerblue", "palegold", "palegoldenrod", "palegreen", "palelavender", "palemagenta", "palepink", "paleplum", "paleredviolet", "palerobineggblue", "palesilver", "palespringbud", "paletaupe", "palevioletred", "pansypurple", "papayawhip", "parisgreen", "pastelblue", "pastelbrown", "pastelgray", "pastelgreen", "pastelmagenta", "pastelorange", "pastelpink", "pastelpurple", "pastelred", "pastelviolet", "pastelyellow", "patriarch", "paynegrey", "peach", "peachpuff", "peachyellow", "pear", "pearl", "pearlaqua", "peridot", "periwinkle", "persianblue", "persianindigo", "persianorange", "persianpink", "persianplum", "persianred", "persianrose", "phlox", "phthaloblue", "phthalogreen", "piggypink", "pinegreen", "pink", "pinkflamingo", "pinksherbet", "pinkpearl", "pistachio", "platinum", "plum", "portlandorange", "powderblue", "princetonorange", "prussianblue", "psychedelicpurple", "puce", "pumpkin", "purple", "purpleheart", "purplemountainmajesty", "purplepizzazz", "purpletaupe", "rackley", "radicalred", "raspberry", "raspberryglace", "raspberrypink", "rawsienna", "razzledazzlerose", "razzmatazz", "red", "redorange", "redbrown", "redviolet", "richblack", "richcarmine", "richelectricblue", "richlilac", "richmaroon", "riflegreen", "rose", "rosebonbon", "roseebony", "rosegold", "rosemadder", "rosepink", "rosequartz", "rosetaupe", "rosevale", "rosewood", "rossocorsa", "rosybrown", "royalazure", "royalblue", "royalfuchsia", "royalpurple", "ruby", "ruddy", "ruddybrown", "ruddypink", "rufous", "russet", "rust", "sacramentostategreen", "saddlebrown", "safetyorange", "saffron", "saintpatrickblue", "salmon", "salmonpink", "sand", "sanddune", "sandstorm", "sandybrown", "sandytaupe", "sapgreen", "sapphire", "satinsheengold", "scarlet", "schoolbusyellow", "screamingreen", "seablue", "seagreen", "sealbrown", "seashell", "selectiveyellow", "sepia", "shadow", "shamrock", "shamrockgreen", "shockingpink", "sienna", "silver", "sinopia", "skobeloff", "skyblue", "skymagenta", "slateblue", "slategray", "smalt", "smokeytopaz", "smokyblack", "snow", "spirodiscoball", "springbud", "springgreen", "steelblue", "stildegrainyellow", "stizza", "stormcloud", "straw", "sunglow", "sunset", "sunsetorange", "tan", "tangelo", "tangerine", "tangerineyellow", "taupe", "taupegray", "tawny", "teagreen", "tearose", "teal", "tealblue", "tealgreen", "terracotta", "thistle", "thulianpink", "ticklemepink", "tiffanyblue", "tigereye", "timberwolf", "titaniumyellow", "tomato", "toolbox", "topaz", "tractorred", "trolleygrey", "tropicalrainforest", "trueblue", "tuftsblue", "tumbleweed", "turkishrose", "turquoise", "turquoiseblue", "turquoisegreen", "tuscanred", "twilightlavender", "tyrianpurple", "uablue", "uared", "uclablue", "uclagold", "ufogreen", "upforestgreen", "upmaroon", "usccardinal", "uscgold", "ube", "ultrapink", "ultramarine", "ultramarineblue", "umber", "unitednationsblue", "universityofcaliforniagold", "unmellowyellow", "upsdellred", "urobilin", "utahcrimson", "vanilla", "vegasgold", "venetianred", "verdigris", "vermilion", "veronica", "violet", "violetblue", "violetred", "viridian", "vividauburn", "vividburgundy", "vividcerise", "vividtangerine", "vividviolet", "warmblack", "waterspout", "wenge", "wheat", "white", "whitesmoke", "wildstrawberry", "wildwatermelon", "wildblueyonder", "wine", "wisteria", "xanadu", "yaleblue", "yellow", "yelloworange", "yellowgreen", "zaffre", "zinnwalditebrown"];
_texturesBody = _textures;
_finishes = ["Glossy", "Metallic", "Matte", "Chrome"];

if(isNull spawnedVehicle) exitWith { hint "Schau den Streifenwagen an!"; closeDialog 0; };
_classname = typeOf spawnedvehicle;

lbClear _colorsCtrl;
lbClear _finishCtrl;

_selectedColorsDialog = 0;
{
	_TextureDisplayName = getText(configFile >> "CfgIvoryTextures" >> _x >> "displayName");
	_colorsCtrl lbAdd format["%1",_TextureDisplayName];
	_index = (lbSize _colorsCtrl) - 1;
	if(_x == _color) then { _selectedColorsDialog = _index; };
	_colorsCtrl lbSetdata [_index, str(_x)];
} foreach _texturesBody;
lbSetCurSel [1501, _selectedColorsDialog];

_selectedFinishDialog = 0;
{
	_FinishDisplayName = getText(configFile >> "CfgIvoryMaterials" >> _x >> "displayName");
	_finishCtrl lbAdd format["%1",_FinishDisplayName];
	_index = (lbSize _finishCtrl) - 1;
	if(_finish == _class) then { _selectedFinishDialog = _index; };
	_finishCtrl lbSetdata [_index, str([_class, _cost])];
} foreach _finishes;
lbSetCurSel [1502, _selectedFinishDialog];

if(isNil "client_fnc_copcolorOnLbChange") then {
	client_fnc_copcolorOnLbChange = {
		disableSerialization;
		_display = findDisplay 70002;
		_colorsCtrl = _display displayCtrl 1501;
		_finishCtrl = _display displayCtrl 1502;

		_status = lbData[1501, (lbCurSel (1501))];
		_selectedColor = call compile format["%1", _status];
		
		_status = lbData[1502, (lbCurSel (1502))];
		_selectedFinish = call compile format["%1", _status];
		_selectedFinish = _selectedFinish select 0;

		[spawnedVehicle, [_selectedColor,_selectedFinish]] remoteexec ["client_fnc_initVehicle",2];
	};
};
if(isNil "client_fnc_copColorButtonAccept") then {
	client_fnc_copColorButtonAccept = {
		disableSerialization;
		_display = findDisplay 70002;
		_colorsCtrl = _display displayCtrl 1501;
		_finishCtrl = _display displayCtrl 1502;

		_status = lbData[1501, (lbCurSel (1501))];
		_selectedColor = call compile format["%1", _status];
		
		_status = lbData[1502, (lbCurSel (1502))];
		_selectedFinish = call compile format["%1", _status];
		_selectedFinish = _selectedFinish select 0;

		[spawnedVehicle, [_selectedColor,_selectedFinish]] remoteexec ["client_fnc_initVehicle",2];
		
		spawnedVehicle = objNull;
	};
};