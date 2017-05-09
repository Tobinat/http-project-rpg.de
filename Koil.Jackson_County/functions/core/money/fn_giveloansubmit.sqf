params ["_target", "_giver"];

_amount = parseNumber (ctrlText 1401);
_reason = (ctrlText 1402);
_datedue = (ctrlText 1403);

closeDialog 0;

if (_amount > 0) then 
{
	[player,_amount,_reason,_datedue] remoteexec ["client_fnc_takeLoan",_target];
} else {
	hint "Amount must be more than $0!";
};