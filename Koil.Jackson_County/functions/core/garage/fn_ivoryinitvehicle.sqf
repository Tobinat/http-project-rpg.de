
_car = param [0, objNull, [objNull]];
_colorBody = param [1, ["",""], [[],""]];
_colorRims = "";
_tintWindows = param [3, 0, [0]];
_tintLights = param [4, 0, [0]];
 
_colorBodyTexture = "";
_colorBodyMaterial = "";

_textureList = getArray(configfile >> "CfgIvoryTextures" >> "textures");
_texture = getText(configfile >> "CfgVehicles" >> (typeOf _car) >> "texture");

switch(typeName _colorBody) do {
	case "STRING": {
		_colorBodyTexture = _colorBody;
	};
	case "ARRAY": {
		_colorBodyTexture = _colorBody select 0;
		_colorBodyMaterial = _colorBody select 1;
	};
};

if(_texture != "" && _colorBodyTexture == "") then { _colorBodyTexture=_texture; };

_colorBodyTexture = getText(configfile >> "CfgIvoryTextures" >> _colorBodyTexture >> "texture");


_colorBodyMaterial = getText(configfile >> "CfgIvoryMaterials" >> _colorBodyMaterial >> "material");
if(_colorBodyMaterial == "") then { 
	_colorBodyMaterial = "ivory_data\data\metallic.rvmat"; 
};

_colorRims = getText(configfile >> "CfgIvoryTextures" >> _colorRims >> "texture");
if(_colorRims == "") then { 
	_defaultRims = getArray(configfile >> "CfgVehicles" >> (typeOf _car) >> "hiddenSelectionsTextures");
	_colorRims = _defaultRims select 1;
};
_tintWindows = 0.1+_tintWindows*0.8;
_tintLights = 0.1+_tintLights*0.8;

if (_tintWindows < 0.1) then { _tintWindows = 0.1 };
if (_tintWindows > 0.9) then { _tintWindows = 0.9 };
if (_tintLights < 0.1) then { _tintLights = 0.1 };
if (_tintLights > 0.9) then { _tintLights = 0.9 };


_car setObjectTextureGlobal 	[0, _colorBodyTexture];
_car setObjectMaterialGlobal 	[0, _colorBodyMaterial];
_car setObjectTextureGlobal 	[1, _colorRims];
_car setObjectTextureGlobal 	[2,"#(argb,8,8,3)color(0,0,0," + str _tintWindows + ",ca)"];
_car setObjectTextureGlobal 	[3,"#(argb,8,8,3)color(0,0,0," + str _tintLights + ",ca)"];

_car setVariable["windowTint", _tintWindows, true];