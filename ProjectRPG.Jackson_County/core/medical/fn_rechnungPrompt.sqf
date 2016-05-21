/*
	File: fn_ticketPrompt
	
	
	Description:
	Prompts the player that he is being ticketed.
*/

params ["_cop", "_val", "_display", "_control"];
if(!isNull (findDisplay 51655)) exitwith {}; //Already at the ticket menu, block for abuse?
if(isNull _cop) exitWith {};

createDialog "life_rechnung_pay";
disableSerialization;
waitUntil {!isnull (findDisplay 51655)};
_display = findDisplay 51655;
_control = _display displayCtrl 51656;
life_ticket_paid = false;
life_ticket_val = _val;
life_ticket_cop = _cop;

_control ctrlSetStructuredText parseText format["<t align='center'><t size='.8px'>" +(localize "STR_EMS_Ticket_GUI_Given"),_cop getVariable["realname",name _cop],_val];

[] spawn
{
	disableSerialization;
	waitUntil {life_ticket_paid OR (isNull (findDisplay 51655))};
	if(isNull (findDisplay 51655) && !life_ticket_paid) then
	{
		[0,format[localize "STR_EMS_Ticket_Refuse",profileName]] remoteExecCall ["life_fnc_broadcast", independent];
	};
};

systemChat "Geld Value:";
systemChat str(_val);
