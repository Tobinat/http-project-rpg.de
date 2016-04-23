/*
	File: fn_wantedBounty.sqf
	"
	
	Description:
	Checks if the person is on the bounty list and awards the cop for killing them.
*/
private["_civ","_cop","_id","_half"];
_civ = param [0,Objnull,[Objnull]];
_cop = param [1,Objnull,[Objnull]];
_half = param [2,false,[false]];
if(isNull _civ OR isNull _cop) exitWith {};

_id = [(getPlayerUID _civ),life_wanted_list] call fnc_index;
if(_id != -1) then
{
	if(_half) then
	{
		[((life_wanted_list select _id) select 3) / 2,((life_wanted_list select _id) select 3)] remoteExecCall ["life_fnc_bountyReceive",_cop];
	}
	else
	{
		[(life_wanted_list select _id) select 3,(life_wanted_list select _id) select 3] remoteExecCall ["life_fnc_bountyReceive",_cop];
	};
};