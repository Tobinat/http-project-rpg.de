/*
Hud elements by Koil
*/
_stage = param [0,0,[0]];

switch(_stage) do {
	//severe pains
	case 1: {

		"colorCorrections" ppEffectEnable true;			
		"colorCorrections" ppEffectAdjust [1, 1, -0.003, [0.0, 0.0, 0.0, 0.0], [1, 1, 1, 0.01],  [0, 0, 0, 0.0]]; 
		"colorCorrections" ppEffectCommit 0.3;
		uiSleep 3;
		"colorCorrections" ppEffectAdjust [1, 1, -0.003, [0.0, 0.0, 0.0, 0.0], [1, 1, 1, 1],  [0, 0, 0, 0.0]]; 
		"colorCorrections" ppEffectCommit 3;

	};

	case 2: {
		"colorCorrections" ppEffectEnable true;			
		"colorCorrections" ppEffectAdjust [1, 1, -0.003, [0.0, 0.0, 0.0, 0.0], [1, 1, 1, 0.11],  [0, 0, 0, 0.0]]; 
		"colorCorrections" ppEffectCommit 0.3;
		uiSleep 2;
		"colorCorrections" ppEffectAdjust [1, 1, -0.003, [0.0, 0.0, 0.0, 0.0], [1, 1, 1, 1],  [0, 0, 0, 0.0]]; 
		"colorCorrections" ppEffectCommit 3;
		uiSleep 2;
	};

	//long black for crash tackle / knockout etc
	case 3: {
		"colorCorrections" ppEffectEnable true;			
		"colorCorrections" ppEffectAdjust [1, 1, -0.003, [0.0, 0.0, 0.0, 0.0], [1, 1, 1, 0.011],  [0, 0, 0, 0.0]]; 
		"colorCorrections" ppEffectCommit 0.3;
		uiSleep 8;
		"colorCorrections" ppEffectAdjust [1, 1, -0.003, [0.0, 0.0, 0.0, 0.0], [1, 1, 1, 1],  [0, 0, 0, 0.0]]; 
		"colorCorrections" ppEffectCommit 3;
		uiSleep 2;
	};
	
	case 4: {

		[7] spawn client_fnc_HudElements;
		_chance = round (random 1000);
		if(_chance < 500) then {
			["Your stomach hurts...", false] spawn domsg; 
			[player,"hungry"] spawn client_fnc_playSound;
			uiSleep 3;
		};

	};

	//red
	case 5: { 
	    "colorCorrections" ppEffectEnable true;        
        "colorCorrections" ppEffectAdjust [0, 0.4, -0.003, [0.8, 0.1, 0, 0.5], [0.1, 0.1, 0, 0.6],  [1, 1, 1, 0.5]];     
        "colorCorrections" ppEffectCommit 0.25;    
         player forceWalk true;        
         uisleep 0.1;        
        "colorCorrections" ppEffectAdjust [1, 1, -0.003, [0.0, 0.0, 0.0, 0.0], [1, 1, 1, 1],  [0, 0, 0, 0.0]];         
  		"colorCorrections" ppEffectCommit 0.7;      
  		player forceWalk false; 
	}; 
	//green display
	case 6: {
		"colorCorrections" ppEffectEnable true;           
		"colorCorrections" ppEffectAdjust [0, 0.4, -0.003, [0, 0.45, 0, 0.5], [0.1, 0.1, 0, 0.6],  [0, 0, 0, 0.5]];         
		"colorCorrections" ppEffectCommit 0.35;      
		player forceWalk true;        
		uisleep 0.15;        
		"colorCorrections" ppEffectAdjust [1, 1, -0.003, [0.0, 0.0, 0.0, 0.0], [1, 1, 1, 1],  [0, 0, 0, 0.0]];          
		"colorCorrections" ppEffectCommit 0.7;      
		player forceWalk false; 
	};
	//white display
	case 7: {
		 "colorCorrections" ppEffectEnable true;                  
		 "colorCorrections" ppEffectAdjust [0, 0.4, -0.003, [1, 1, 1, 1], [0.1, 0.1, 0, 0.6],  [1, 1, 1, 0.5]];               
		 "colorCorrections" ppEffectCommit 0.45;               
		 player forceWalk true;                   
		 uisleep 0.15;                  
		 "colorCorrections" ppEffectAdjust [1, 1, -0.003, [0.0, 0.0, 0.0, 0.0], [1, 1, 1, 1],  [0, 0, 0, 0.0]];               
		 "colorCorrections" ppEffectCommit 0.7;            
		 player forceWalk false;  
	};

};