params ["_giver", "_amount","_reason","_datedue"];

if(moneyOwed > 0) exitwith { "Diese Person ist bereits Insolvent" remoteexec ["hint",_giver]; };

if(isNil "_reason") then { _reason = "Standard Kredit"; };
if(isNil "_dateDue") exitwith { "Geben Sie das Tilgungsdatum an." remoteexec ["hint",_giver]; };

createdialog "loanmenu";

hint "Ihnen wurde ein Kredit angeboten - 10%";

_loan = lbAdd [9001, format["Kredit: %1",_amount] ];

lbSetData [9001, _loan, str([name _giver,_amount,_reason,_datedue])];

_loanreason = lbAdd [9001, format["Typ: %1",_reason] ];

lbSetData [9001, _loanreason, str([name _giver,_amount,_reason,_datedue])];

_loandate = lbAdd [9001, format["Do: %1",_datedue] ];

lbSetData [9001, _loandate, str([name _giver,_amount,_reason,_datedue])];

lbSetCurSel [9001, 0];
