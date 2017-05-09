disableserialization;
private["_text"];


_licenseAlphaArray 		= ["a","b","c","d","e","f","g","h","i","j","k","l","m","n","o","p","q","r","s","t","u","v","w","x","y","z"];
_licenseNumericArray 	= ["0","1","2","3","4","5","6","7","8","9"];

_licenseArr = _text splitString "";
_licenseArr resize 7;

_fuckit = false;
_n = 0;
{
	_licenseChar = _licenseArr select _n;
	if( (_licenseChar IN _licenseAlphaArray) || (_licenseChar IN _licenseNumericArray) ) then {  } else {_fuckit = true;};
	_n = _n + 1;
} forEach _licenseArr;

if(_fuckit) exitwith { hint "Invalid Numberplate"; };

_cashcheck = [2,2000] call client_fnc_checkmoney;

if!(_cashCheck) exitwith { hint "You dont have enough money to pay for this!"; };

_text = ctrlText 9993;

[plateChange,_text,player] remoteexec ["server_fnc_platechange",2];

closedialog 0;