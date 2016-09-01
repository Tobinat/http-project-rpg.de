#include <macro.h>
/*
fn_initCustomCall.sqf
*/


private["_reason","_amount","_unit"];
_unit = lbData[5338,lbCurSel (5338)];
_unit = call compile format["%1", _unit];
closeDialog 0;
if(isNil "_unit") exitwith {};
if(isNull _unit) exitWith {};
if(side _unit == west) exitWith {["Du rufst am besten nicht die Bullerei", false] spawn domsg; };