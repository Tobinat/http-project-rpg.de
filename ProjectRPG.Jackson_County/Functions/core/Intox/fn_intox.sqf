[] spawn {
    uiSleep 150;
		if(client_intox > 0) then
		{
		if(client_intox <= 0.02) then {client_intox = 0.00;} else {client_intox = client_intox - 0.02;};
			switch(true) do {
				case (client_intox isEqualTo 0.00): {["Ohh, ulga. Jestem już trzeźwy!", false] spawn domsg;};
				case (client_intox isEqualTo 0.04): {["Jestem w stanie racjonalnie myśleć. Mogę już prowadzić samochód", false] spawn domsg;};
			};
		};
};
if(client_intox <= 0.08) exitWith {};
	while{client_intox > 0.09} do
	{
 		"dynamicBlur" ppEffectEnable true;
    	"dynamicBlur" ppEffectAdjust [0.5];
        "dynamicBlur" ppEffectCommit 1;
		uiSleep 5;
		if(client_intox > 0.15) then {
			_chance = round (random 70);
   			if(_chance < 3) then {
   				[] spawn KK_fnc_forceRagdoll;
				   _chanceRemoveIntox = round (random 50);
				   if (_chanceRemoveIntox < 4) then {
					client_intox = client_intox - 0.01;
				   };
   			};
		};
		if(client_intox > 0.25) then {
			_chance = round (random 70);
   			if(_chance < 5) then {
   				[] spawn KK_fnc_forceRagdoll;
				   _chanceRemoveIntox = round (random 50);
				   if (_chanceRemoveIntox < 4) then {
					client_intox = client_intox - 0.01;
				   };
   			};
		};
		if(client_intox > 0.35) then {
			_chance = round (random 70);
   			 	if(_chance < 7) then {
   				  	[] spawn KK_fnc_forceRagdoll;
						 _chanceRemoveIntox = round (random 50);
				   if (_chanceRemoveIntox < 4) then {
					client_intox = client_intox - 0.01;
				   };
   				};
		};
		if(client_intox > 0.45) then {
			_chance = round (random 70);
   			if(_chance < 9) then {
   				[] spawn KK_fnc_forceRagdoll;
				   _chanceRemoveIntox = round (random 50);
				   if (_chanceRemoveIntox < 4) then {
					client_intox = client_intox - 0.01;
				   };
   			};
		};

	};
	"dynamicBlur" ppEffectEnable false;