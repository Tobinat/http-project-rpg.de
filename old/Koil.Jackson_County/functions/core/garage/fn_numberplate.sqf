private["_licenseselections"];
_car = param [0, objNull, [objNull]];
_license = param [1, "", [""]];
_license = toLower(_license);
_vehType = _this select 2;

_licenseAlphaArray 		= ["a","b","c","d","e","f","g","h","i","j","k","l","m","n","o","p","q","r","s","t","u","v","w","x","y","z"];
_licenseNumericArray 	= ["0","1","2","3","4","5","6","7","8","9"];

if(_vehType == "ivory") then {
	_licenseSelections = [4,5,6,7,8,9,10];
};

if(_vehType == "jonzie") then {
	_licenseSelections = [1,2,3,4,5,6,7];
};

if (_license == "") then 
{
	{ 
		_licenseRandom = _licenseAlphaArray;
		if (_x > 6) then { _licenseRandom = _licenseNumericArray; };
		
		_licenseRandom = _licenseRandom call BIS_fnc_selectRandom;
		_car setObjectTextureGlobal [_x, format["ivory_data\license\%1.paa", _licenseRandom]];
		
		_license = _license + _licenseRandom;
	} forEach _licenseSelections;
} else {
	_licenseArr = _license splitString "";
	_licenseArr resize 7;
	{
		_licenseChar = _licenseArr select _forEachIndex;
		if(isNil{_licenseChar}) then { _licenseChar = ""; };
		
		if (_licenseChar IN _licenseAlphaArray OR _licenseChar IN _licenseNumericArray) then
		{
			_car setObjectTextureGlobal[_x, format["ivory_data\license\%1.paa", _licenseChar]];
		} else {
			_car setObjectTextureGlobal[_x, ""];
		};
	} forEach _licenseSelections;
};
