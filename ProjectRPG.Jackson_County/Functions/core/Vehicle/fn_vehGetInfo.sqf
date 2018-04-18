/*
	Author: Kajetan "Kruk" Mruk
	For: stanlakeside.pl
	Date: 24.01.2017
	
	Params:
		0 - Object - vehicle object
	Description: Function that displays information about vehicle.
	Return: nothing
*/
_veh = _this select 0;
_class = typeof _veh;
_name = getText(configFile >> "CfgVehicles" >> _class >> "displayName");
_maxSpeed = getNumber(configFile >> "CfgVehicles" >> _class >> "maxSpeed");
_enginePower = getNumber(configFile >> "CfgVehicles" >> _class >> "enginePower") * 1.341;
_information = _veh getVariable ["information",[]];
_license = _information select 0;
_color = _information select 2;
_colorType = _information select 3;
_ownerUID = _information select 8;
_price = _veh getVariable["vehPrice",0];


hint format["%1 - $%2\nPrędkość maksymalna: %3 km/h\n%4 km\nRejestracja: %5\nKolor: %6(%7)",_name, _price, _maxSpeed, _enginePower,_license, _color, _colorType];