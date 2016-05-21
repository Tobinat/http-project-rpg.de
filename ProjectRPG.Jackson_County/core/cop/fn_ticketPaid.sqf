/*
	
	
	Description:
	Verifies that the ticket was paid.
*/

params [["_value", 5, [0]], ["_unit", ObjNull, [ObjNull]], ["_cop", ObjNull, [ObjNull]]];

if(isNull _unit OR {_unit != life_ticket_unit}) exitWith {}; //NO
if(isNull _cop OR {_cop != player}) exitWith {}; //Double NO

private _hurensohn = _value;

if(playerSide == west) then {
	_hurensohn = round(_hurensohn * .25);
};

hint format["Du wurdest für deine Arbeit bezahlt: $%1.",[_hurensohn] call life_fnc_numberText];
["bank","add", _hurensohn] call life_fnc_handleCash;
