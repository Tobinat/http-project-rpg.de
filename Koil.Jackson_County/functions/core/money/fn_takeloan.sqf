params ["_giver", "_amount","_reason","_datedue"];

if(moneyOwed > 0) exitwith { "This player already has a loan, please update that instead of giving a new loan" remoteexec ["hint",_giver]; };

if(isNil "_reason") then { _reason = "Standard Loan"; };
if(isNil "_dateDue") exitwith { "Please enter a due date." remoteexec ["hint",_giver]; };

createdialog "loanmenu";

hint "You have been offered a loan at 10%";

_loan = lbAdd [9001, format["Loan: %1",_amount] ];

lbSetData [9001, _loan, str([name _giver,_amount,_reason,_datedue])];

_loanreason = lbAdd [9001, format["Type: %1",_reason] ];

lbSetData [9001, _loanreason, str([name _giver,_amount,_reason,_datedue])];

_loandate = lbAdd [9001, format["Date Due: %1",_datedue] ];

lbSetData [9001, _loandate, str([name _giver,_amount,_reason,_datedue])];

lbSetCurSel [9001, 0];
