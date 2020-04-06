if(isNull theDrill) exitWith {};

player addItem "NP_drillitem";
deletevehicle theDrill;
["Zabrales wiertlo",false] call domsg;
[player,player,10,format ["%1 hat eine Bohrmaschine für den Bankraub verwendet", name player],""] remoteExec ["server_fnc_actionLog", 2];