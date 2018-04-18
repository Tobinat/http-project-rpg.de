player playMove "Acts_AidlPercMstpSlowWrflDnon_pissing" ;
sleep 3.5;
_nearest = player nearEntities ["man", 30]; 

[player] remoteexec ["client_fnc_pee2",_nearest];

["Add","unhealthiness",100] remoteexec ["client_fnc_sustain",currentcursortarget];