// Take a shit
_currentuniform = Uniform player;
disableUserInput true;

player playmove "AmovPercMstpSnonWnonDnon_exercisekneeBendA";  
playSound3D ["PRPG_data\sounds\fart4.ogg", player, false, getPosASL player, 3, 1, 45];  
uiSleep 2;  
player enablesimulation false;   
playSound3D ["PRPG_data\sounds\fart5.ogg", player, false, getPosASL player, 3, 1, 45];
uiSleep 2;    
player enablesimulation true; 
uisleep 1; 
_poopvehicle = "cg_human_poop" createVehicle (getpos player);
_poopvehicle setpos (getpos player);
player switchmove "";

client_poop = 0;
 
if(_currentuniform != "") then {
	 ["Diggah...mit Klamotten? Ich rieche und fühle mich wie Scheiße...", false] spawn domsg;
	 client_poop = 50;
	 player setfatigue 1;
};

disableUserInput false;
uisleep 10;
deletevehicle _poopvehicle;