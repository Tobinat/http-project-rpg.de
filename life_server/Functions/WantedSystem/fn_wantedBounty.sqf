/*
	File: fn_wantedBounty.sqf
	Author: Bryan "Tonic" Boardwine"
	
	Description:
	Checks if the person is on the bounty list and awards the cop for killing them.
*/

params [
	["_civ",Objnull,[ObjNull]],
	["_cop",ObjNull,[ObjNull]],
	["_half",false,[false]]
];

if(isNull _civ OR isNull _cop) exitWith {};

private _id = [(getPlayerUID _civ),life_wanted_list] call TON_fnc_index;
if(_id != -1) then
{
	if(_half) then
	{
		[((life_wanted_list select _id) select 3) / 2,((life_wanted_list select _id) select 3)] remoteExec ["life_fnc_bountyReceive",(owner _cop)];
	}
		else
	{
		[(life_wanted_list select _id) select 3,(life_wanted_list select _id) select 3] remoteExec ["life_fnc_bountyReceive",(owner _cop)];
	};
};