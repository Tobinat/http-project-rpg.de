if(bankrobber != 4) exitwith {};

bankrobber = 2;

_cashadded = 15000 + (count currentcop * 3000);
[_cashadded] call Client_fnc_addCash;
hint format["You took %1, you are being tracked for 5 minutes.",_cashadded];
closedialog 0;
player setvariable ["robber",true,true];
"A Bank Robbery has happened and is placed on the map" remoteexec ["hint",-2];
sleep 900;
bankrobber = 1;
player setvariable ["robber",nil,true];