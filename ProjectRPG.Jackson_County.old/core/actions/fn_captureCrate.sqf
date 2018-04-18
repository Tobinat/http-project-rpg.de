//if in progress EXIT
_civs = (civilian countSide playableUnits) + (east countSide playableUnits);
if(_civs < 30) exitwith { hint "Nicht genügend Zivilisten und Mafioso (30)"; };

if(rebelshipment getVariable["progress",FALSE]) exitwith { hint "Es hat bereits jemand eingenommen - oder jemand nimmt es gerade ein."; };

//start progress
rebelshipment setvariable ["progress", true, true];

//start server side checks incase of disconnect etc
["dochecks", player] remoteExec ["TON_fnc_doRebel",2];

_success = false;

 
_calcT = 0;
_startpos = getpos player;

//Starting Messages

["Die Polizei startet eine Razzia im South Rebel Weapon Shipment! (20 Minutes)", false] remoteExec ["domsg",-2]; 
["dgang", false] remoteExec ["fnc_dispatch",west];

//Client side checks
while {true} do {
	if(player distance _startpos > 15 || deadPlayer) exitwith { _success = false;};
	_calcT = _calcT + 1;
	if(_calcT > 1200) exitwith { _success = true; ["You finished capturing!", false] spawn domsg;  };
	if(_calcT == 120 || _calcT == 180 || _calcT == 240 || _calcT == 300 || _calcT == 360 || _calcT == 420 || _calcT == 480 || _calcT == 540 ) then {
		["Die Polizei startet eine Razzia im Rebel Weapon Shipment!", false] remoteExec ["domsg",-2]; 

	};
	if(_calcT == 60) then {
		["Die Polizei startet eine Razzia im Rebel Weapon Shipment in 1 Minute!", false] remoteExec ["domsg",-2]; 
	};

	uisleep 1;
	hintSilent parsetext format["<img size='1' image='icons\info.paa'/> <t color='#FFCC00'><t size='0.75'>JOB:</t><br/> Du hast %1 Sekunden gebraucht. <br/> Maximal: 1200 Sekunden.",_calcT];
};

//Client side checks have finished - turn off progress.
rebelshipment setvariable ["progress", nil, true];
deletemarker "rebelShipment";

//Set final variables and server side functions for resets.
if(_success) then {
	rebelshipment setvariable ["finished", true, true];
	rebelshipment setvariable ["notCaptured", true, true];
	["Die Polizei hat das Rebel Weapon Shipment und das Geld beschlagnahmt!", false] remoteExec ["domsg",-2]; 
	["Der Bebellen-Shop ist für die nächsten 30 Minuten geschlossen!", false] remoteExec ["domsg",-2]; 
	["cash","add",25000] remoteExecCall ["life_fnc_handlecash",west];
	["finishRebel", player] remoteExec ["TON_fnc_finishRebel",2];	
} else {
	["Die Razzia ist fehlgeschlagen!", false] remoteExec ["domsg",-2]; 
	["Alle Zivilisten haben $4000 bekommen!", false] remoteExec ["domsg",-2]; 
	["cash","add",4000] remoteExecCall ["life_fnc_handlecash",civilian];
};