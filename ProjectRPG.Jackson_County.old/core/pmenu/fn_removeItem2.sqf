/*
	File: fn_removeItem2.sqf
	
	
	Description:
	Removes the selected item & amount to remove from the players
	virtual inventory.
*/

private["_unit","_val"];
_val = ctrlText 2010;
ctrlShow[2002,false];

if(vehicle player != player) exitwith { ["You can not do this inside a vehicle..", false] spawn domsg; };

if((lbCurSel 2005) == -1) exitWith {["You didn't select an item you wanted to drop.", false] spawn domsg;ctrlShow[2002,true];};
_item = lbData [2005,(lbCurSel 2005)];

//A series of checks *ugh*
if(!([_val] call fnc_isnumber)) exitWith {["You didn't enter an actual number format.", false] spawn domsg;ctrlShow[2002,true];};
if(parseNumber(_val) <= 0) exitWith {["You need to enter an actual amount you want to drop.", false] spawn domsg;ctrlShow[2002,true];};



if(!([false,_item,(parseNumber _val)] call life_fnc_handleInv)) exitWith {["Couldn't drop that much of that item, maybe you don't have that amount?", false] spawn domsg;ctrlShow[2002,true];};

player playmove "AinvPknlMstpSlayWrflDnon";

_type = [_item,0] call life_fnc_varHandle;
_type = [_type] call life_fnc_varToStr;
[format["You dropped %2 %3",_val,_type], false] spawn domsg;
[] call life_fnc_p_updateMenu;

ctrlShow[2002,true];