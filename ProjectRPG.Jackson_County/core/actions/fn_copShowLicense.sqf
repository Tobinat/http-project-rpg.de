/*
	File: fn_copShowLicense.sqf
	http://project-rpg.de
*/

private ["_target", "_message","_rank","_rankSpec","_coplevel","_mediclevel",
"_adaclevel","_id","_pkw","_lkw","_presse","_donlevel","_rankSpec","_huso"];

_target = cursorTarget;

if(isNull _target) exitWith {};
if(!(_target isKindOf "Man")) exitWith {};
if(!(alive _target)) exitWith {};

if(playerSide == west) then
{
	_coplevel = call life_coplevel;
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
        //FBI
		case 11: { _rank = "Detective Investigator";};
        case 12: { _rank = "Agent Anwärter";};
        case 13: { _rank = "Agent";};
        case 14: { _rank = "Special Agent";};
        //case 15: { _rank = "";};
    };

	_message = format["<color='#FFFFFF'/><t size='2'>%1</t><br/><t size='1.5'>%2</t><br/><t size='2.5' color='#0000ff'>%3</t>", _id, name player, _rank];
	[_message] remoteExec ["life_fnc_copLicenseShown",_target];
};

if(playerSide == independent) then
{
	_mediclevel = call life_mediclevel;
	_id = "<img image='\textures\license\rfa_license.paa' size='8'/>";
	
	switch (_mediclevel) do
	{	//Medic NEU RFA?!?
		/*
		case 1: { _rank = "Paramedic Candidate";};
        case 2: { _rank = "Paramedic";};
        case 3: { _rank = "Ambulance Commander";};
        case 4: { _rank = "Head of Medicdepartement";};
		*/
		//R.F.A + Medic
		case 1: { _rank = "Candidate";};
        case 2: { _rank = "Employee";};
        case 3: { _rank = "Lieutenant";};
        case 4: { _rank = "Chief Learning Officer";};
        case 5: { _rank = "Chief Technical Officer";};
        case 6: { _rank = "Assistant Chief";};
        case 7: { _rank = "Chief";};
	
	};

	_message = format["<color='#FFFFFF'/><t size='2'>%1</t><br/><t size='1.5'>%2</t><br/><t size='2.5' color='#ff0000'>%3</t>", _id, name player, _rank];
	[_message] remoteExec ["life_fnc_copLicenseShown",_target];
	
	
};


if(playerSide == civilian) then
{
	if(license_civ_udc) then
	{
		_message = format["<t size='1.5'>%1</t><br/><br/>F.B.I. / L.V. Special Force<br/>%3<br/>%4<br/>%5<br/>",name player];
		[_message] remoteExec ["life_fnc_copLicenseShown",_target];
	}else
	{
		_message = format["<t size='1.5'>%1</t><br/><br/>%2<br/>%3<br/>%4<br/>%5<br/>",name player];
		[_message] remoteExec ["life_fnc_copLicenseShown",_target];
	}
};
