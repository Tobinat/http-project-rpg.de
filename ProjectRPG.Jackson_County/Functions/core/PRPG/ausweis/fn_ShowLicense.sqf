/*
	File: fn_copShowLicense.sqf
	http://www.prpg.de
*/

private ["_target", "_message","_rank","_rankSpec","_coplevel","_mediclevel",
"_adaclevel","_id","_pkw","_lkw","_presse","_donlevel","_rankSpec","_huso"];

_target = cursorTarget;

if(isNull _target) exitWith {};
if(!(_target isKindOf "Man")) exitWith {};
if(!(alive _target)) exitWith {};

if (myJob == "cop") then
{
	_coplevel = player getVariable ["cop",0];
	_id = "<img image='\textures\license\police_license.paa' size='8'/>";

	switch (_coplevel) do
    {
      case 1: { _rank = "Rekrut";};
      case 2: { _rank = "Officer";};
      case 3: { _rank = "Detective";};
      case 4: { _rank = "Sergeant";};
      case 5: { _rank = "Lieutenant";};
      case 6: { _rank = "Captain";};
      case 7: { _rank = "Commander";};
    	case 8: { _rank = "Deputy Chief";};
    	case 9: { _rank = "Assistent Chief";};
    	case 10: { _rank = "Chief of Police";};
    };

	_message = format["<color='#FFFFFF'/><t size='2'>%1</t><br/><t size='1.5'>%2</t><br/><t size='2.5' color='#0000ff'>%3</t>", _id, name player, _rank];
	[_message] remoteExec ["client_fnc_LicenseShown",_target];
};

if (myJob == "EMS") then
{
	_mediclevel = player getVariable ["ems",0];
	_id = "<img image='\textures\license\rfa_license.paa' size='8'/>";

	switch (_mediclevel) do
	{
		case 1: { _rank = "Probationary Firefighter";};
    case 2: { _rank = "Firefighter";};
    case 3: { _rank = "Lieutenant";};
    case 4: { _rank = "Captain";};
    case 5: { _rank = "Battalion Chief";};
    case 6: { _rank = "Division Chief";};
    case 7: { _rank = "Assistant Chief";};
    case 8: { _rank = "Chief";};
	};

	_message = format["<color='#FFFFFF'/><t size='2'>%1</t><br/><t size='1.5'>%2</t><br/><t size='2.5' color='#ff0000'>%3</t>", _id, name player, _rank];
	[_message] remoteExec ["client_fnc_LicenseShown",_target];


};


if(!(myJob == "cop") && !(myJob == "EMS")) then
{
	_message = format["<t size='1.5'>%1</t><br/>",name player];
	[_message] remoteExec ["client_fnc_LicenseShown",_target];
};
