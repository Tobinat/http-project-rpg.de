// Take a shit
_currentuniform = Uniform player;
disableUserInput true;
//life_action_inUse = true;



player playmove "AmovPercMstpSnonWnonDnon_exercisekneeBendA";  
player say "fart4";   
uiSleep 2;  
player enablesimulation false;   
player say "fart5"; 
uiSleep 2;    
player enablesimulation true; 
uisleep 1; 
_poopvehicle = "cg_human_poop" createVehicle (getpos player);
_poopvehicle setpos (getpos player);
player switchmove "";

//life_dirt = life_dirt + 10;
client_poop = 0;
 
if(_currentuniform != "") then {
	 ["Diggah...mit Klamotten ? Ich rieche und fühle mich wie Scheiße...", false] spawn domsg;
	// life_dirt = 100;
	 client_poop = 50;
	 player setfatigue 1;	
};

//life_action_inUse = false;
disableUserInput false;
uisleep 5;
deletevehicle _poopvehicle;

