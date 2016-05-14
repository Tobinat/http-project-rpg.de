/*
	File: fn_wantedTicket.sqf
	
	
	Description:
	Checks the price of the ticket against the bounty, if => then bounty remove them from the wanted list.
*/
private["_price","_uid","_ind","_entry"];
_uid = param [0,"",[""]];
_price = param [1,0,[0]];
if(_uid == "" OR _price == 0) exitWith {};

_ind = [_uid,life_wanted_list] call fnc_index;
if(_ind == -1) exitWith {};
life_wanted_list set[_ind,-1];
life_wanted_list = life_wanted_list - [-1];
