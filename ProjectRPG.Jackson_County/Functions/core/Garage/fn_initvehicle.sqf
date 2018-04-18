_car = param [0, objNull, [objNull]];
_colorBody = param [1, ["",""], [[],""]];

_colorBodyTexture = _colorBody select 0;
_colorBodyMaterial = _colorBody select 1;

_colorBodyTexture = getText(configfile >> "CfgIvoryTextures" >> _colorBodyTexture >> "texture");
_colorBodyMaterial = getText(configfile >> "CfgIvoryMaterials" >> _colorBodyMaterial >> "material");

_car setObjectTextureGlobal 	[0, _colorBodyTexture];
_car setObjectMaterialGlobal 	[0, _colorBodyMaterial];