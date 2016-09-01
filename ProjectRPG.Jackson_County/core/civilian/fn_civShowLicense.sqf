/*
File : fn_civShowLicense.sqf
Edit : G00golplexian

Beschreibung : Fuegt einen 'Personalausweis' hinzu
*/

private["_target", "_message", "_array", "_arraynatio", "_randomnatio", "_random"];

_target = cursorTarget;
_array = ["Los Diablos", "Nueva San Cristobal", "Morrison Town", "Lakeside","Santa Maria","Fort Hood","Jefferson Hill","New Haven"];
_random = _array select floor random count _array;
_arraynatio = ["Deutsch", "Griechisch", "Außengeländerisch", "Klingonisch", "Türkisch", "Russisch", "Englisch", "Chinesisch","Spanisch","Französisch","Arabisch","Afrikanisch","Hebräisch","Albanisch","Schweizer"];
_randomnatio = _arraynatio select floor random count _arraynatio;

if(playerSide != civilian) exitWith
{
	hint "Du bist kein Zivilist!";
};

if( isNull _target) then {_target = player;};

if( !(_target isKindOf "Man") ) then {_target = player;};

if( !(alive _target) ) then {_target = player;};

_message = format["<img size='10' color='#FFFFFF' image='textures\ausweis.paa'/><br/><br/><t size='2.5'>%1</t><br/><t size='1'>Nationalität: %3</t><br/><t size='1'>Heimat: %2</t>", name player, _random, _randomnatio];

[[player, _message],"life_fnc_civLicenseShown",_target,false];

