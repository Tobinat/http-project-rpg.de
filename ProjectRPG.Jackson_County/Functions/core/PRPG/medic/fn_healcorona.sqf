_myInjuries = player getVariable "playerInjuries";
5 cutText ["","PLAIN"];
_myInjuries set [10, 0]; 
player setVariable ["playerInjuries",_myInjuries,true]; 
player setVariable ["krank",false,true];
player setVariable ["corona",500,true];
//sleep command für corona immunität
uiSleep 300;
player setVariable ["corona",0,false];