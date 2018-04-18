if(isNil "awaitingmail") then { awaitingMail = []; };

awaitingmail pushback _this;

[myhouse,player,"Fedex Worker","Personal"] remoteExec ["Server_fnc_jobAction",2];

