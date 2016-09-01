/*
	File: fn_ticketPay.sqf
	
	
	Description:
	Pays the ticket.
*/
if(isnil {life_ticket_val} OR isNil {life_ticket_cop}) exitWith {};
if(cash_in_hand < life_ticket_val) exitWith
{
	if(cash_in_bank < life_ticket_val) exitWith 
	{
		hint localize "STR_EMS_Ticket_NotEnough";
		[1,format[localize "STR_EMS_Ticket_NotEnoughNOTF",profileName]] remoteExecCall ["life_fnc_broadcast", independent];
		closeDialog 0;
	};
	hint format[localize "STR_EMS_Ticket_Paid",[life_ticket_val] call life_fnc_numberText];
	["bank","take",life_ticket_val] call life_fnc_handleCash; 
	life_ticket_paid = true;
	
	closeDialog 0;
	[1,format[localize "STR_EMS_Ticket_PaidNOTF_2",profileName]] remoteExecCall ["life_fnc_broadcast", independent];
	[life_ticket_val,player,life_ticket_cop] remoteExecCall ["life_fnc_rechnungPaid",life_ticket_cop];
};

hint format[localize "STR_EMS_Ticket_Paid",[life_ticket_val] call life_fnc_numberText];
["cash","take",life_ticket_val] call life_fnc_handleCash; 
life_ticket_paid = true;

closeDialog 0;
[1,format[localize "STR_EMS_Ticket_PaidNOTF_2",profileName]] remoteExecCall ["life_fnc_broadcast", independent];
[life_ticket_val,player,life_ticket_cop] remoteExecCall ["life_fnc_rechnungPaid",life_ticket_cop];