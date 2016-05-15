private["_unit","_amount"];
if(playerSide != west) exitWith {hint "Du bist kein Polizist."};
if((lbCurSel 2406) == -1) exitWith {hint "Du musst eine Person auswählen."};
if((lbCurSel 2407) == -1) exitWith {hint "Du musst eine Straftat auswählen."};
_unit = lbData [2406,lbCurSel 2406];
_unit = call compile format["%1",_unit];
_amount = lbData [2407,lbCurSel 2407];
if(isNil "_unit") exitWith {};
if(side _unit != civilian) exitWith {hint "Du kannst nur Zivilisten auf die Fahndungsliste setzen." };
if(_unit == player) exitWith {hint "Du kannst dich nicht selbst auf die Fahndungsliste setzen... geh zum FBI und stelle dich.";};
if(isNull _unit) exitWith {};

[4,format["<t size='1.65' color='#00CD00'>LVPD-Fahndungsliste</t><br/><br/><t size='1.1' align='center'>=<br/>Eine Person wurde zur<br/>Fahndung ausgeschrieben<br/>=</t><br/><br/><br/><t size='0.95' align='left' color='#79CdCd'>Verbrecher:</t><t size='1.05' align='right'><br/>%1</t><br/><br/><t size='0.95' align='left' color='#79CDCD'>Ausgeschrieben Von:</t><t size='1.05' align='right'><br/>%2</t>",_unit getVariable["realname",name _unit],profileName]] remoteExec ["life_fnc_broadcast",west];

[getPlayerUID _unit,_unit getVariable["realname",name _unit],_amount] remoteExec ["life_fnc_wantedAdd",2]; 