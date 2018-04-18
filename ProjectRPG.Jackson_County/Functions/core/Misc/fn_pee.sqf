player playMove "Acts_AidlPercMstpSlowWrflDnon_pissing" ;
sleep 3.5;
_nearest = player nearEntities ["man", 30]; 

[player] remoteexec ["client_fnc_pee2",_nearest];

["Add","unhealthiness",100] remoteexec ["client_fnc_sustain",currentcursortarget];

	["Remove","Karma",30] call client_fnc_sustain;

[player,currentcursortarget,12,format ["%1 nasikał na %2", name player, name currentcursortarget],""] remoteExec ["server_fnc_actionLog", 2];