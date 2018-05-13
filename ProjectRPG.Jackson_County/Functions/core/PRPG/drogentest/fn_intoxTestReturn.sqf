/*
	File: fn_intoxTestReturn.sqf
	@Deo	
	Description:
	Returns the Intox Results.
*/
_civ = _this select 0;
_weed = _this select 1;
_koks = _this select 2;
_hero = _this select 3;
_meth = _this select 4;

if(isNull _civ) exitWith {};


if(_weed > 0) then 
{
	[format["%1 hat hat kein Marihuana Konsumiert.",name _civ], false] spawn domsg;
} 
else 
{
	[format["Bei %1 lässt sich im Blut THC nachweisen.",name _civ], false] spawn domsg;
};

if(_koks > 0) then 
{
	[format["%1 hat hat kein Kokain Konsumiert.",name _civ], false] spawn domsg;
} 
else 
{
	[format["Bei %1 lässt sich im Blut Kokain konsum nachweisen.",name _civ], false] spawn domsg;
};

if(_hero > 0) then 
{
	[format["%1 hat hat kein Heroin Konsumiert.",name _civ], false] spawn domsg;
} 
else 
{
	[format["Bei %1 lässt sich im Blut Heroin nachweisen.",name _civ], false] spawn domsg;
};

if(_meth > 0) then 
{
	[format["%1 hat hat kein Meth Konsumiert.",name _civ], false] spawn domsg;
} 
else 
{
	[format["Bei %1 lässt sich im Blut Meth nachweisen.",name _civ], false] spawn domsg;
};