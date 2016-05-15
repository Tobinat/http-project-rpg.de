/*
	File: fn_ticketPay.sqf
	
	
	Description:
	Pays the ticket.
*/
if(isnil {life_ticket_val} OR isNil {life_ticket_cop}) exitWith {};
if(playerSide == west) then {
	if(cash_in_hand < life_ticket_val) exitWith
	{
		if(cash_in_bank < life_ticket_val) exitWith 
		{
			hint localize "STR_Cop_Ticket_NotEnough";
			[1,format[localize "STR_Cop_Ticket_NotEnoughNOTF",profileName]] remoteExecCall ["life_fnc_broadcast", -2];
			closeDialog 0;
		};
		hint format[localize "STR_Cop_Ticket_Paid",[life_ticket_val] call life_fnc_numberText];
		["bank","take",life_ticket_val] call life_fnc_handleCash; 
		life_ticket_paid = true;
		[getPlayerUID player] remoteExec ["life_fnc_wantedRemove",2];	
		closeDialog 0;
		[1,format[localize "STR_Cop_Ticket_PaidNOTF_2",profileName]] remoteExecCall ["life_fnc_broadcast", -2];
		[life_ticket_val,player,life_ticket_cop] remoteExecCall ["life_fnc_ticketPaid",life_ticket_cop];
	};

	hint format[localize "STR_Cop_Ticket_Paid",[life_ticket_val] call life_fnc_numberText];
	["cash","take",life_ticket_val] call life_fnc_handleCash; 
	life_ticket_paid = true;
	[getPlayerUID player] remoteExec ["life_fnc_wantedRemove",2];
	closeDialog 0;
	[1,format[localize "STR_Cop_Ticket_PaidNOTF_2",profileName]] remoteExecCall ["life_fnc_broadcast", -2];
	[life_ticket_val,player,life_ticket_cop] remoteExecCall ["life_fnc_ticketPaid",life_ticket_cop];
} else {
	if(playerSide != independent) exitWith {};
	
	if(cash_in_hand < life_ticket_val) exitWith
	{
		if(cash_in_bank < life_ticket_val) exitWith 
		{
			hint localize "Du hast nicht genügend Geld.";
			[1,format["Diese Person hat nicht genügend Geld."]] remoteExecCall ["life_fnc_broadcast", -2];
			closeDialog 0;
		};
		hint format["Die Rechnung von %1 wurde gezahlt.",[life_ticket_val] call life_fnc_numberText];
		["bank","take",life_ticket_val] call life_fnc_handleCash; 
		life_ticket_paid = true;
	
		closeDialog 0;
		
		[1,format["%1 zahlte die Rechnung.",profileName]] remoteExecCall ["life_fnc_broadcast", -2];
		[life_ticket_val,player,life_ticket_cop] remoteExecCall ["life_fnc_ticketPaid",life_ticket_cop];
	};

	hint format["Du hast die Rechnung von $%1 bezahlt.",[life_ticket_val] call life_fnc_numberText];
	["cash","take",life_ticket_val] call life_fnc_handleCash; 
	life_ticket_paid = true;

	closeDialog 0;
	[1,format["Die Rechnung von %1 wurde gezahlt.",profileName]] remoteExecCall ["life_fnc_broadcast", -2];
	[life_ticket_val,player,life_ticket_cop] remoteExecCall ["life_fnc_ticketPaid",life_ticket_cop];
};