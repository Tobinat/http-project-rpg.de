/*
	File: fn_ticketGive.sqf
	
	
	Description:
	Gives a ticket to the targeted player.
*/
private["_val"];
if(isNil {life_ticket_unit}) exitWith {["Die Person existiert nicht mehr", false] spawn domsg;};
if(isNull life_ticket_unit) exitWith {["Die Person existiert nicht mehr", false] spawn domsg;};
_val = ctrlText 51652;
if(!([_val] call fnc_isnumber)) exitWith {["Kein numerischer Wert.", false] spawn domsg;};
if((parseNumber _val) > 100000 OR (parseNumber _val) < 50) exitWith {["Rechnung darf nicht mehr als $100.000 und nicht weniger als $50 betragen.", false] spawn domsg;};
[0,format[localize "STR_EMS_TicketGive",profileName,[(parseNumber _val)] call life_fnc_numberText,life_ticket_unit getVariable["realname",name life_ticket_unit]]] remoteExecCall ["life_fnc_broadcast", independent];
[player,(parseNumber _val)] remoteExec ["life_fnc_rechnungPrompt",life_ticket_unit];

closeDialog 0;
