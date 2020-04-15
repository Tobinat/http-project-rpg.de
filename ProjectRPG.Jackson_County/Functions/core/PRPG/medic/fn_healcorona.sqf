_myInjuries = player getVariable "playerInjuries";
player removeMagazine _item;
5 cutText ["","PLAIN"];
_myInjuries set [10, 0]; 
player setVariable ["playerInjuries",_myInjuries,true]; 
player setVariable ["krank",false,true];
player setVariable ["corona",500,true];
uiSleep 300;
player setVariable ["corona",0,false];