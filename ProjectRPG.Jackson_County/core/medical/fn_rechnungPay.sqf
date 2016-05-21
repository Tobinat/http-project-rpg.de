/*
	File: fn_ticketPay.sqf
	
	
	Description:
	Pays the ticket.
*/
if(isnil {life_ticket_val} OR isNil {life_ticket_cop}) exitWith {};


systemChat "Ticket Betrag:";
systemChat str(life_ticket_val);		//Value (Ticket Betrag)
systemChat "Type of ticket_betrag:";
systemChat (typeName life_ticket_val);	//Type of life_ticket_val . wenn nicht SCALAR, dann muss parseNumber unten rein...


if(cash_in_hand < life_ticket_val) exitWith
{
	if(cash_in_bank < life_ticket_val) exitWith 
	{
		hint localize "STR_EMS_Ticket_NotEnough";
		[1,format[localize "STR_EMS_Ticket_NotEnoughNOTF",profileName]] remoteExecCall ["life_fnc_broadcast", independent];
		closeDialog 0;
		
		
		
		systemChat "nicht genug geld";
		
		
		
	};
	hint format[localize "STR_EMS_Ticket_Paid",[life_ticket_val] call life_fnc_numberText];
	["bank","take",life_ticket_val] call life_fnc_handleCash;
	life_ticket_paid = true;
	
	
	systemChat "gezahlt von bank aus";
	
	
	closeDialog 0;
	[1,format[localize "STR_EMS_Ticket_PaidNOTF_2",profileName]] remoteExecCall ["life_fnc_broadcast", independent];
	[life_ticket_val,player,life_ticket_cop] remoteExec ["life_fnc_rechnungPaid",life_ticket_cop];
};

hint format[localize "STR_EMS_Ticket_Paid",[life_ticket_val] call life_fnc_numberText];
["cash","take",life_ticket_val] call life_fnc_handleCash; 
life_ticket_paid = true;


systemChat "gezahlt mit bargeld";


closeDialog 0;
[1,format[localize "STR_EMS_Ticket_PaidNOTF_2",profileName]] remoteExecCall ["life_fnc_broadcast", independent];
[life_ticket_val,player,life_ticket_cop] remoteExec ["life_fnc_rechnungPaid",life_ticket_cop];