params["_type", "_amount"];

if(isNil "_type" || isNil "_amount") exitWith {diag_log "fn_updatemafiabank.sqf: nil (1)";}; 
if("_type" == "") exitWith {diag_log "fn_updatemafiabank.sqf: _type empty (2)";}; 

switch(_type) do {
    case "Add": {mafiaBank = mafiaBank + _amount;};
    case "Remove": {mafiaBank = mafiaBank - _amount;};
    default {mafiaBank = "";};
};
publicvariable "mafiaBank";

//if(mafiaBank == "") exitWith {diag_log "ERROR: Can't update mafiabank! Check code! (maybe null mafiaBank?) (fn_updatemafiabank.sqf)";};

 _updatestr = format["updateMafiaATM:%1", mafiaBank];
 _update = [0, _updatestr] call ExternalS_fnc_ExtDBquery;
 diag_log format ["Succesfully updated mafiaBank to 1%", mafiaBank];