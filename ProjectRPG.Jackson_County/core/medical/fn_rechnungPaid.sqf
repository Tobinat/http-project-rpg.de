/*
	
	
	Description:
	Verifies that the ticket was paid.
*/

params [["_value", 5, [0]], ["_unit", ObjNull, [ObjNull]], ["_cop", ObjNull, [ObjNull]]];

if(isNull _unit OR {_unit != life_ticket_unit}) exitWith {systemChat "Unit or Ticketing unit is null"}; //NO
if(isNull _cop OR {_cop != player}) exitWith {systemChat "cop is null"}; //Double NO



systemChat "Value und Typename:";
systemChat str(_value);
systemChat (typeName _value);  //typename != scalar, dann parseNUmber...



hint format["Du wurdest für deine Arbeit bezahlt: $%1.",_value];
["bank","add", _value] call life_fnc_handleCash;
