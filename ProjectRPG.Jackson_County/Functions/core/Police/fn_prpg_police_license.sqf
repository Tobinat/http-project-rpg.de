params ["_target"];

_license = parseNumber (ctrlText 1401);
closeDialog 0;

if (_license > 0 && _license < 100) then 
{	
	_target setPlateNumber format["SLSD-%1",_license];
	_target setvariable ["slpdcar",_license,true];
} else {
	hint "Nur Nummern zwischen 1 und 99!";
};