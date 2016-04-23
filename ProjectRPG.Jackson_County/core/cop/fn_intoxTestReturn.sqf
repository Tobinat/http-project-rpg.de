/*
	File: fn_intoxTestReturn.sqf
	@Deo	
	Description:
	Returns the Intox Results.
*/

params [["_civ", Objnull, [Objnull]], ["_intox", 0, [0]]];

if(isNull _civ) exitWith {};

if(_intox > 0.08) then 
{
	[format["%1's Intox Level: %2\n Über dem legalen Limit!",name _civ,_intox], false] spawn domsg;
} 
else 
{
	[format["%1's Intox Level: %2",name _civ,_intox], false] spawn domsg;
};

if (_intox > 0.20) then 
{
	[getPlayerUID _civ,name _civ,"647"] remoteExec ["life_fnc_wantedAdd",2];
};