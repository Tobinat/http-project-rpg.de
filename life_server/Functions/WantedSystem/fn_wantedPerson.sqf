/*
	File: fn_wantedPerson.sqf
	"
	
	Description:
	Fetches a specific person from the wanted array.
*/
private["_unit","_index"];
_unit = param [0,ObjNull,[ObjNull]];
if(isNull _unit) exitWith {[]};

_index = [getPlayerUID _unit,life_wanted_list] call fnc_index;

if(_index != -1) then
{
	life_wanted_list select _index;
}
else
{
	[];
};
