[] spawn  {
	while{true} do
	{
		uiSleep 45;
		[] call fnc_water;
		if (life_eattotal > 9) then {
			life_eattotal = life_eattotal - 1;
		};


		uiSleep 45;
		[] call fnc_food;
		if (life_eattotal > 9) then {
			life_eattotal = life_eattotal - 1;
		};
	};
};

[] spawn  {
	while{true} do
	{
		uisleep 300;
		[8] call SOCK_fnc_updatePartial;
		[] call fnc_overtime_stats;
		uisleep 300;
		[] call fnc_overtime_stats;
	};
};

[] spawn
{
	while {true} do
	{
		if(isNull objectParent player) then
		{
			if(life_seatwarn) then {
				life_seatwarn = false;
			};
			if(life_seatbelt) then {
				uiSleep 3;
				life_seatbelt = false;
			};
			uiSleep 5;
		};
		if(vehicle player != player && !(player getVariable ["Escorting", false]) && !(player getVariable ["restrained", false]) && (vehicle player isKindOf "LandVehicle")) then
		{
			if(speed vehicle player > 90 && !life_seatbelt) then
			{
				oldVehVelocity = velocity (vehicle player);
				uiSleep 0.3;
				if(speed vehicle player < 1) then
				{
					playSound "glassbreak";
					moveOut player;
					player setVelocity [(oldVehVelocity select 0) * 0.4,(oldVehVelocity select 1) * 0.4,((oldVehVelocity select 2) * 0.4) + 5];
					uiSleep 2;
					player switchmove "";
				};
			} else {
				if(!life_seatwarn) then {
					uiSleep 1;
					if(!life_seatwarn) then {
						["Denk daran dich anzuschnallen!", false] spawn domsg;
					};
					playSound "seatwarn";
					life_seatwarn = true;
				};
				uiSleep 1;
			};
		};
	};
};


[] spawn
{
	if(side player != civilian) exitWith {};
	while{true} do
	{
		_vehicle = vehicle player;
		if(vehicle player != player && driver (vehicle player) == player && ((_vehicle isKindOf "Car") || (_vehicle isKindOf "Motorcycle") || (_vehicle isKindOf "Bicycle") || (_vehicle isKindOf "Motorbike") || (_vehicle isKindOf "A3L_Tahoe_Base"))) then {

			if((player distance (getMarkerPos "speed_cam_1")) < 20 || (player distance (getMarkerPos "speed_cam_2")) < 20 || (player distance (getMarkerPos "speed_cam_3")) < 20 || (player distance (getMarkerPos "speed_cam_4")) < 20 || (player distance (getMarkerPos "speed_cam_10")) < 20 ) then {
				_vel = speed player; 
				if(_vel > 90 && _vel < 140) then {
					"colorCorrections" ppEffectEnable true;   
					"colorCorrections" ppEffectAdjust [1, 15, 0, [0.5, 0.5, 0.5, 0], [0.0, 0.5, 0.0, 0.6],[0.3, 0.3, 0.3, 0.05]];    
					"colorCorrections" ppEffectCommit 0;  
					uiSleep 0;   
					"colorCorrections" ppEffectAdjust [1, 1, 0, [1, 1, 1, 0.0], [1, 1, 1, 0.6],  [1, 1, 1, 0.6]];    
					"colorCorrections" ppEffectCommit 0.05;   
					uiSleep 0.05;   
					"colorCorrections" ppEffectEnable false;
					uiSleep 0.1;
					"colorCorrections" ppEffectEnable true;   
					"colorCorrections" ppEffectAdjust [1, 15, 0, [0.5, 0.5, 0.5, 0], [0.0, 0.5, 0.0, 0.6],[0.3, 0.3, 0.3, 0.05]];    
					"colorCorrections" ppEffectCommit 0;  
					uiSleep 0;   
					"colorCorrections" ppEffectAdjust [1, 1, 0, [1, 1, 1, 0.0], [1, 1, 1, 0.6],  [1, 1, 1, 0.6]];    
					"colorCorrections" ppEffectCommit 0.05;   
					uiSleep 0.05;   
					"colorCorrections" ppEffectEnable false;	

					["Du warst zu schnell innerhalb der Stadt! $100 Strafe!.", false] spawn domsg;
					if(cash_in_bank > 100) then {
						["bank","take",100] call life_fnc_handleCash; 
					};
				};
				
				if(_vel > 139 && _vel < 200) then {
					"colorCorrections" ppEffectEnable true;   
					"colorCorrections" ppEffectAdjust [1, 15, 0, [0.5, 0.5, 0.5, 0], [0.0, 0.5, 0.0, 0.6],[0.3, 0.3, 0.3, 0.05]];    
					"colorCorrections" ppEffectCommit 0;  
					uiSleep 0;   
					"colorCorrections" ppEffectAdjust [1, 1, 0, [1, 1, 1, 0.0], [1, 1, 1, 0.6],  [1, 1, 1, 0.6]];    
					"colorCorrections" ppEffectCommit 0.05;   
					uiSleep 0.05;   
					"colorCorrections" ppEffectEnable false;
					uiSleep 0.1;
					"colorCorrections" ppEffectEnable true;   
					"colorCorrections" ppEffectAdjust [1, 15, 0, [0.5, 0.5, 0.5, 0], [0.0, 0.5, 0.0, 0.6],[0.3, 0.3, 0.3, 0.05]];    
					"colorCorrections" ppEffectCommit 0;  
					uiSleep 0;   
					"colorCorrections" ppEffectAdjust [1, 1, 0, [1, 1, 1, 0.0], [1, 1, 1, 0.6],  [1, 1, 1, 0.6]];    
					"colorCorrections" ppEffectCommit 0.05;   
					uiSleep 0.05;   
					"colorCorrections" ppEffectEnable false;		

					["Du warst viel zu schnell innerhalb der Stadt! $210 Strafe!", false] spawn domsg;
					if(cash_in_bank > 210) then {
						["bank","take",210] call life_fnc_handleCash;
					};
				};	
				if(_vel > 199) then {
					["Du warst definitiv zu schnell! $2000 Strafe und dein Führerschein wurde eingezogen!", false] spawn domsg;
					if(cash_in_bank > 2000) then {
						["bank","take", 2000] call life_fnc_handleCash
					};
					player setVariable["defect_vehicle",true,true];

					"colorCorrections" ppEffectEnable true;   
					"colorCorrections" ppEffectAdjust [1, 15, 0, [0.5, 0.5, 0.5, 0], [0.0, 0.5, 0.0, 0.6],[0.3, 0.3, 0.3, 0.05]];    
					"colorCorrections" ppEffectCommit 0;  
					uiSleep 0;   
					"colorCorrections" ppEffectAdjust [1, 1, 0, [1, 1, 1, 0.0], [1, 1, 1, 0.6],  [1, 1, 1, 0.6]];    
					"colorCorrections" ppEffectCommit 0.05;   
					uiSleep 0.05;   
					"colorCorrections" ppEffectEnable false;
					uiSleep 0.1;
					"colorCorrections" ppEffectEnable true;   
					"colorCorrections" ppEffectAdjust [1, 15, 0, [0.5, 0.5, 0.5, 0], [0.0, 0.5, 0.0, 0.6],[0.3, 0.3, 0.3, 0.05]];    
					"colorCorrections" ppEffectCommit 0;  
					uiSleep 0;   
					"colorCorrections" ppEffectAdjust [1, 1, 0, [1, 1, 1, 0.0], [1, 1, 1, 0.6],  [1, 1, 1, 0.6]];    
					"colorCorrections" ppEffectCommit 0.05;   
					uiSleep 0.05;   
					"colorCorrections" ppEffectEnable false;	

					if(license_civ_driver OR license_civ_truck OR license_civ_boat) then {
						license_civ_driver = false;
						license_civ_truck = false;
						license_civ_boat = false;
						[2] call SOCK_fnc_updatePartial;
					};
				};		
				uiSleep 30;
			};
			if((player distance (getMarkerPos "speed_cam_5")) < 30 || (player distance (getMarkerPos "speed_cam_6")) < 30 || (player distance (getMarkerPos "speed_cam_7")) < 30 || (player distance (getMarkerPos "speed_cam_8")) < 30 || (player distance (getMarkerPos "speed_cam_9")) < 30 || (player distance (getMarkerPos "speed_cam_11")) < 30 || (player distance (getMarkerPos "speed_cam_12")) < 30 || (player distance (getMarkerPos "speed_cam_13")) < 30 || (player distance (getMarkerPos "speed_cam_14")) < 30 || (player distance (getMarkerPos "speed_cam_15")) < 30 || (player distance (getMarkerPos "speed_cam_16")) < 30 || (player distance (getMarkerPos "speed_cam_17")) < 30 || (player distance (getMarkerPos "speed_cam_18")) < 30) then {
				_vel = speed player; 
				if(_vel > 140 && _vel < 160) then {
					["Du warst zu schnell! $100 Strafe!", false] spawn domsg;
					if(cash_in_bank > 100) then {
						["bank","take",100] call life_fnc_handleCash; 
					};

					"colorCorrections" ppEffectEnable true;   
					"colorCorrections" ppEffectAdjust [1, 15, 0, [0.5, 0.5, 0.5, 0], [0.0, 0.5, 0.0, 0.6],[0.3, 0.3, 0.3, 0.05]];    
					"colorCorrections" ppEffectCommit 0;  
					uiSleep 0;   
					"colorCorrections" ppEffectAdjust [1, 1, 0, [1, 1, 1, 0.0], [1, 1, 1, 0.6],  [1, 1, 1, 0.6]];    
					"colorCorrections" ppEffectCommit 0.05;   
					uiSleep 0.05;   
					"colorCorrections" ppEffectEnable false;
					uiSleep 0.1;
					"colorCorrections" ppEffectEnable true;   
					"colorCorrections" ppEffectAdjust [1, 15, 0, [0.5, 0.5, 0.5, 0], [0.0, 0.5, 0.0, 0.6],[0.3, 0.3, 0.3, 0.05]];    
					"colorCorrections" ppEffectCommit 0;  
					uiSleep 0;   
					"colorCorrections" ppEffectAdjust [1, 1, 0, [1, 1, 1, 0.0], [1, 1, 1, 0.6],  [1, 1, 1, 0.6]];    
					"colorCorrections" ppEffectCommit 0.05;   
					uiSleep 0.05;   
					"colorCorrections" ppEffectEnable false;	

				};
				if(_vel > 159 && _vel < 224) then {
					["Du warst viel zu schnell! $350 Strafe!", false] spawn domsg;
					if(cash_in_bank > 350) then {
						["bank","take",350] call life_fnc_handleCash;
					};

					"colorCorrections" ppEffectEnable true;   
					"colorCorrections" ppEffectAdjust [1, 15, 0, [0.5, 0.5, 0.5, 0], [0.0, 0.5, 0.0, 0.6],[0.3, 0.3, 0.3, 0.05]];    
					"colorCorrections" ppEffectCommit 0;  
					uiSleep 0;   
					"colorCorrections" ppEffectAdjust [1, 1, 0, [1, 1, 1, 0.0], [1, 1, 1, 0.6],  [1, 1, 1, 0.6]];    
					"colorCorrections" ppEffectCommit 0.05;   
					uiSleep 0.05;   
					"colorCorrections" ppEffectEnable false;
					uiSleep 0.1;
					"colorCorrections" ppEffectEnable true;   
					"colorCorrections" ppEffectAdjust [1, 15, 0, [0.5, 0.5, 0.5, 0], [0.0, 0.5, 0.0, 0.6],[0.3, 0.3, 0.3, 0.05]];    
					"colorCorrections" ppEffectCommit 0;  
					uiSleep 0;   
					"colorCorrections" ppEffectAdjust [1, 1, 0, [1, 1, 1, 0.0], [1, 1, 1, 0.6],  [1, 1, 1, 0.6]];    
					"colorCorrections" ppEffectCommit 0.05;   
					uiSleep 0.05;   
					"colorCorrections" ppEffectEnable false;	

				};	
				if(_vel > 225) then {
					["Du warst definitiv zu schnell! $1000 Strafe und dein Führerschein wurde eingezogen!", false] spawn domsg;
					if(cash_in_bank > 1000) then {
						["bank","take", 1000] call life_fnc_handleCash
					};
					player setVariable["defect_vehicle",true,true];

					"colorCorrections" ppEffectEnable true;   
					"colorCorrections" ppEffectAdjust [1, 15, 0, [0.5, 0.5, 0.5, 0], [0.0, 0.5, 0.0, 0.6],[0.3, 0.3, 0.3, 0.05]];    
					"colorCorrections" ppEffectCommit 0;  
					uiSleep 0;   
					"colorCorrections" ppEffectAdjust [1, 1, 0, [1, 1, 1, 0.0], [1, 1, 1, 0.6],  [1, 1, 1, 0.6]];    
					"colorCorrections" ppEffectCommit 0.05;   
					uiSleep 0.05;   
					"colorCorrections" ppEffectEnable false;
					uiSleep 0.1;
					"colorCorrections" ppEffectEnable true;   
					"colorCorrections" ppEffectAdjust [1, 15, 0, [0.5, 0.5, 0.5, 0], [0.0, 0.5, 0.0, 0.6],[0.3, 0.3, 0.3, 0.05]];    
					"colorCorrections" ppEffectCommit 0;  
					uiSleep 0;   
					"colorCorrections" ppEffectAdjust [1, 1, 0, [1, 1, 1, 0.0], [1, 1, 1, 0.6],  [1, 1, 1, 0.6]];    
					"colorCorrections" ppEffectCommit 0.05;   
					uiSleep 0.05;   
					"colorCorrections" ppEffectEnable false;						

					if(license_civ_driver OR license_civ_truck OR license_civ_boat) then {
						license_civ_driver = false;
						license_civ_truck = false;
						license_civ_boat = false;
					};
				};
				uiSleep 30;	
			};
			uiSleep 0.5;
		} else {
			uiSleep 5;
		};
	};
};

[] spawn
{
	private["_bp","_load","_cfg"];
	while{true} do
	{
		waitUntil {backpack player != ""};
		_bp = backpack player;
		_cfg = getNumber(configFile >> "CfgVehicles" >> (backpack player) >> "maximumload");
		_load = round(_cfg / 8);
		life_maxWeight = life_maxWeightT + _load;
		waitUntil {uiSleep 1; (backpack player != _bp)};
		if(backpack player == "") then 
		{
			life_maxWeight = life_maxWeightT;
		};
	};
};

	fnc_water = 
	{
		if(life_thirst < 2) exitwith { 
			["Remove",0.25] call fnc_doHealth; 
			playSound3D ["cg_sndimg\sounds\cough1.ogg", player, false, getPosASL player, 3, 1, 45];
		};
		if(life_thirst < 15) then { 
			[7] spawn life_fnc_HudElements;	
			playSound3D ["cg_sndimg\sounds\cough3.ogg", player, false, getPosASL player, 3, 1, 45];
		};	
		if(!life_is_arrested) then { 
			["Remove","Drink",1] call fnc_sustain;
		};
	};


	fnc_food = 
	{
		if(life_hunger < 2) exitwith { 
			["Remove",0.25] call fnc_doHealth;
			playSound3D ["cg_sndimg\sounds\cough4.ogg", player, false, getPosASL player, 3, 1, 45];
		};
		if(life_hunger < 15) then { 
			playSound3D ["cg_sndimg\sounds\cough3.ogg", player, false, getPosASL player, 3, 1, 45];
			[7] spawn life_fnc_HudElements;	
		};	
		if(!life_is_arrested) then { 
			["Remove","Food",1] call fnc_sustain;
		};
	};


	fnc_battery =
	{
		_adjust = param [0,"",[""]];
		_amount = param [1,0,[0]];
		if(_adjust == "Reset") then { life_battery = 0; };
		if(_adjust == "Set") then { life_battery = _amount; };
		if(_adjust == "Add") then { life_battery = life_battery + _amount; };	
		if(_adjust == "Remove") then { life_battery = life_battery - _amount; };
	};



	fnc_battery_adjust =   
	{
		if(life_battery < 2) exitwith {["Dein Smartphone hat keinen Akku mehr!", false] spawn domsg;};

		_batloss = round (random 3);
		if(vehicle player == player) then {
			["Remove",_batloss] call fnc_battery;
		} else {
			if(life_battery < 100) then {
				["Add",_batloss] call fnc_battery;
				["Du hast dein Smartphone im Auto geladen!", false] spawn domsg;
			};
		};

		if(life_battery < 10) then {
			["Batterie schwach!", false] spawn domsg; playSound3D ["cg_sndimg\sounds\phoneSMS.ogg", player, false, getPosASL player, 1, 1, 25];
		};

	};



	fnc_overtime_stats =   
	{
			if(!life_is_arrested) then { 
				_karma = round (random 5);
				["Add",_karma] call fnc_karma;
			};
			_karma = round (random 5);
			life_poop = life_poop + _karma;
			call fnc_poop;
	};

	fnc_poop =
	{
		if (life_poop > 80) then {
			_pooplord = getFatigue player;
			if (!deadPlayer && _pooplord < 1) then {
				player setFatigue _pooplord + 0.01; 
				_chance = round (random 95);
   			 	if(_chance == 19) then {
   				  	[player,"fart1"] spawn life_fnc_nearestSound;
   				};
   				if(_chance == 20) then {
   				  	[player,"fart2"] spawn life_fnc_nearestSound;
   				};
   				if(_chance == 21) then {
   				  	[player,"fart3"] spawn life_fnc_nearestSound;
   				};
   				if(_chance == 22 || _chance == 23) then {
   				  	[player,"fart4"] spawn life_fnc_nearestSound;
   				};
   				if(_chance == 24) then {
   				  	[player,"fart5"] spawn life_fnc_nearestSound;
   				};
   				if(_chance == 25) then {
   				  	[player,"fart6"] spawn life_fnc_nearestSound;
   				};
			};
		};
		if (life_poop > 90) then {
			_pooplord = getFatigue player;
			if(!deadPlayer && _pooplord < 1) then {
				player setFatigue _pooplord + 0.01; 
			};
		};
	};


	fnc_cruisecontrol = {
		start_speed = speed (vehicle player);
		cur_vehicle = vehicle player;
		koil_cruise = true;
		while {koil_cruise} do {
				if(!isEngineOn cur_vehicle) exitwith {};
				if (vehicle player == player) exitWith { };
				if (damage (vehicle player) > 0) exitWith { ["Das Fahrzeug wurde beschädigt, Cruise Control wurde deaktiviert!", false] spawn domsg; };
				if(!(isOnRoad player)) exitwith { ["Cruise Control wird auf dem aktuellen Untergrund nicht verwendet!", false] spawn domsg; };
				if(driver (vehicle player) != player) exitwith { };

				_curspeed = speed (vehicle player);
				if (_curspeed < start_speed) then {
 				_vel = velocity cur_vehicle;
				_dir = direction cur_vehicle;
				_speed = 0.0001;
				cur_vehicle setVelocity [
					(_vel select 0) + (sin _dir * _speed), 
					(_vel select 1) + (cos _dir * _speed), 
					(_vel select 2)
				];
			};
		};

		if(koil_cruise) then {
			koil_cruise = false;
		};
	};
	
	fnc_doHealth =
	{
		if(deadPlayer) exitwith {};	
		params [["_adjust", "", [""]], ["_amount", 0, [0]], ["_source", objNull, [objNull]]];
		if(_adjust == "Add") then { 
			myHealth = myHealth - _amount;
			if(myHealth > 0.6 && (damage player) > 0) then { 
				player setdamage 0;
				if(_amount > 0.1) then {
					[6] spawn life_fnc_HudElements;	
				};
			};	
		 };
		if(_adjust == "Remove") then {	
			myHealth = myHealth + _amount; 
			if(myHealth > 0.75 && (damage player) < 0.8) then { 
				player setdamage 0.85; 
			};
			if(_amount > 0.1) then {
			[5] spawn life_fnc_HudElements;
			};
		};

		if(_adjust == "Set") then { 
			if((damage player) > 0) then {
				player setdamage 0; 
			};
			[6] spawn life_fnc_HudElements; 
			myHealth = _amount; 
		};

		if(myHealth < 0) then { myHealth = 0; };
		if(myHealth > 0.99) then { 
			if(Myhealth > 1.8) then { myHealth = 1.8; };
			_damage = myHealth - 1;
			_damage = _damage * 10;
			[player,_source,_damage] spawn life_fnc_onPlayerKilled;
		};
		if(player getVariable "playerHealth" != myHealth) then {
			player setVariable["playerHealth", myHealth, true];
		};
	};

	fnc_sustain =
	{
		_adjust = param [0,"",[""]];
		_type = param [1,"",[""]];
		_amount = param [2,0,[0]];
		if(_type == "Food") then {
			if(_adjust == "Add") then { life_hunger = life_hunger + _amount; };
			if(_adjust == "Remove") then { life_hunger = life_hunger - _amount; };
			if(life_hunger > 100) then {life_hunger = 100;};
		};
		if(_type == "Drink") then {
			if(_adjust == "Add") then { life_thirst = life_thirst + _amount; };
			if(_adjust == "Remove") then { life_thirst = life_thirst - _amount; };
			if(life_thirst > 100) then {life_thirst = 100;};
		};
	};


	fnc_karma =
	{
		_adjust = param [0,"",[""]];
		_amount = param [1,0,[0]];
		if(_adjust == "Add") then { life_karma = life_karma + _amount; [format["Du hast an Karma gewonnen: %1 Karma-Punkte! Total: %2",_amount,life_karma], false] spawn domsg; };
		if(_adjust == "Remove") then { life_karma = life_karma - _amount; [format["Du hast an Karma verloren: %1 Karma-Punkte! Total: %2",_amount,life_karma], false] spawn domsg; };
		_oldKarmaLevel = karma_level;

		if(life_karma > 999) then {
			karma_level = life_karma / 400;
			karma_level = floor (karma_level);
		} else {
			karma_level = 0;
		};

		if(life_karma < 0) then {
			life_rebelbadguyman = true;
		};

		if(karma_level > 80) then {
			karma_level = 80;
		};
		if(_oldKarmaLevel < karma_level) then { ["Du hast ein Karma-Level erhalten!", false] spawn domsg; player say "levelup"; };
		if(_oldKarmaLevel > karma_level) then { ["Du hast ein Karma-Level verloren!", false] spawn domsg; player say "endbeep"; };	
	};

	fnc_dirt = 
	{
		if (life_dirt > 60) then {
			["Du fühlst dich dreckig und stinkst!", false] spawn domsg;
		};
		if (life_dirt > 70) then {
				_koildebiiii = player getVariable ["diseaseon", 1];
				if(_koildebiiii == 1) then {
				_diseasechance =  round (random 100);

				if(_diseasechance > 99) then {
					player setVariable ["diseaseon",(round (random 7)),true];
				};
			};
		};	
		if (life_dirt == 100) then {
			_pooplord = getFatigue player;
			player setFatigue _pooplord + 0.01;
		};	
	};


	painIsActive = false;
	fnc_totalpain =	{
		if(painIsActive) exitWith {};
		painIsActive = true;
		while{ koildeb > 1 || koildebi > 1 || koildebii > 1 || koildebiii > 1 || koildebiiii > 1 } do
		{
			_totalpain = koildeb + koildebi + koildebii + koildebiii + koildebiiii;

			if(_totalpain < 12) then {
				"colorCorrections" ppEffectEnable true;			
				"colorCorrections" ppEffectAdjust [1, 1, -0.003, [0.0, 0.0, 0.0, 0.0], [1, 1, 1, 0.5],  [0, 0, 0, 0.0]]; 
				"colorCorrections" ppEffectCommit 3;
				uiSleep 2;
				"colorCorrections" ppEffectAdjust [1, 1, -0.003, [0.0, 0.0, 0.0, 0.0], [1, 1, 1, 1],  [0, 0, 0, 0.0]]; 
				"colorCorrections" ppEffectCommit 3;
				uiSleep 2;
			};

			if(_totalpain > 11 && _totalpain < 18) then {
				"colorCorrections" ppEffectEnable true;			
				"colorCorrections" ppEffectAdjust [1, 1, -0.003, [0.0, 0.0, 0.0, 0.0], [1, 1, 1, 0.33],  [0, 0, 0, 0.0]]; 
				"colorCorrections" ppEffectCommit 3;
				uiSleep 2;
				"colorCorrections" ppEffectAdjust [1, 1, -0.003, [0.0, 0.0, 0.0, 0.0], [1, 1, 1, 1],  [0, 0, 0, 0.0]]; 
				"colorCorrections" ppEffectCommit 3;
				uiSleep 2;
			};

			if(_totalpain > 17) then {
				"colorCorrections" ppEffectEnable true;			
				"colorCorrections" ppEffectAdjust [1, 1, -0.003, [0.0, 0.0, 0.0, 0.0], [1, 1, 1, 0.1],  [0, 0, 0, 0.0]]; 
				"colorCorrections" ppEffectCommit 3;
				uiSleep 2;
				"colorCorrections" ppEffectAdjust [1, 1, -0.003, [0.0, 0.0, 0.0, 0.0], [1, 1, 1, 1],  [0, 0, 0, 0.0]]; 
				"colorCorrections" ppEffectCommit 3;
				uiSleep 2;
			};
			uiSleep 2;
		};
		painIsActive = false;
	};

	fnc_damageChance = {
		if(damageChance) exitwith {};
		damageChance = true;
		_koildeb = player getVariable ["bleedingon", 1];
		if(_koildeb == 1) then {
			_chance = round (random 10000);
			if(_chance > 9996) then {
				player setVariable ["bleedingon",(round (random 5)),true];
			};
		};

		_koildebi = player getVariable ["woundedon", 1];
		if(_koildebi == 1) then {
			_chance = round (random 10000);
			if(_chance > 9996) then {
				player setVariable ["woundedon",(round (random 5)),true];
			};
		};

		_koildebii = player getVariable ["fractureon", 1];
		if(_koildebii == 1) then {
			_chance = round (random 10000);
			if(_chance > 9996) then {
				player setVariable ["fractureon",(round (random 7)),true];
			};
		};

		_koildebiii = player getVariable ["unconciouson", 1];
		if(_koildebiii == 1) then {
			_chance = round (random 10000);
			if(_chance > 9996) then {
				player setVariable ["unconciouson",(round (random 7)),true];
			};
		};

		_koildebiiii = player getVariable ["diseaseon", 1];
		if(_koildebiiii == 1) then {
			_diseasechance =  round (random 100000);
			if(_diseasechance > 99998) then {
				player setVariable ["diseaseon",(round (random 7)),true];
			};
		};
		sleep 0.5;
		damageChance = false;
	};

	fnc_quitjobs = {
		if(life_quitRecently) exitwith { ["Du musst 5 Minuten warten um dies erneut zu verwenden!", false] spawn domsg; };
		life_quitRecently = true;
		if(life_NewsJobs) exitwith { has_job = false; life_NewsJobs = false; };
		if(life_taxi) exitwith { has_job = false; fedex_on = false;	};
		if(life_bankteller) exitwith { has_job = false; life_bankteller = false; };
		if(life_carSalesman) exitwith { has_job = false; life_carSalesman = false; };
		if(maintenance_on) exitwith { has_job = false; maintenance_on = false; };
		if(trucking) exitwith { 
			has_job = false; 
			trucking = false;
			deleteVehicle vehspawned;
			deleteVehicle vehspawned2;
		};
		if(fedex_on) exitwith { 
			has_job = false; fedex_on = false;
			deleteVehicle vehspawned;
		};
		sleep 300;
		life_quitRecently = false;
	};

	fnc_totalatm =
	{
		if(paid_recently) exitwith {
	
		};
		myatmbonus = _this;
		paid_recently = true;

		if (myatmbonus > 1000) then {
			myatmbonus = 1000;
		};

		if (myatmbonus < 420) then {
			myatmbonus = 420;
		};

		["bank","add",round(myatmbonus)] call life_fnc_handleCash; 
		[format["Du wurdest bezahlt: $%1",myatmbonus], false] spawn domsg;
		uiSleep 180;
		paid_recently = false;
	};



	fnc_del_houses = {
		_n = 0;
		if(count target_houses > 0) then {

			{
				deleteMarkerLocal format["house_%1",_n];
				_n = _n + 1;
			} foreach target_houses;
			target_houses = 0;
		};
	};

	fnc_totalmobile =
	{
		if(buy_off) exitwith {};
		buy_off = true;
		mybonus = _this;
		if (mybonus > 1000) then {
			mybonus = 1000;
		};

		if (mybonus < 120) then {
			mybonus = 120;
		};

		["cash","add",round(mybonus)] call life_fnc_handleCash; 
		[format["Du wurdest bezahlt: $%1",mybonus], false] spawn domsg;
		uiSleep 180;
		buy_off = false;
	};

	fnc_draw3d = {
	marker_on = false;
	sleep 0.3;
	marker_on = true;
	drawmessage = param [0,"",[""]];
	posinext = param [1,[],[[]]];
		while{marker_on} do {
		   	if(player distance posinext < 10 && drawmessage != "Driving Test") exitwith { ["Du hast das Ziel erreicht!",false] spawn domsg; };
		   	if(player distance posinext < 110 && drawmessage == "Oil") exitwith { };
		   	if(drawmessage == "Oil Maintenance" && !maintenance_on) exitwith { };	
		   	sleep 0.05;
	    };
	    marker_on = false;
	};

	fnc_fadephone = { 
			[] spawn {
			_fuck = ((uiNamespace getVariable "tabletmenu") displayCtrl 7017); 
			_fuck ctrlsetfade 1;
			_fuck ctrlcommit 1; 
			sleep 1;
			_fuck ctrlshow false;
		};
	};










	fnc_kearth = {
		closedialog 0;
		if(!allow_sat) exitwith { player say "satdisable"; ["kEarth Imaging ist aktuell OFFLINE!",false] spawn domsg; };
		allow_sat = false;
		["kEarth Imaging ist aktuell ONLINE!",false] spawn domsg;
		life_kEarthCamera  = "CAMERA" camCreate (getPosATL player);  
		showCinemaBorder FALSE;  
		life_kEarthCamera cameraEffect ["Internal","Back"]; 
		life_kEarthCamera camSetTarget player; 
		life_kEarthCamera camSetFOV .9;  
		life_kEarthCamera camSetFocus [50,0];   
		life_kEarthCamera camSetRelPos [0,545,545];  
		life_kEarthCamera camCommit 0;
		player say "satmove";
		life_kEarthCamera camSetRelPos [0,1,445];  
		life_kEarthCamera camCommit 4.5;

		"colorCorrections" ppEffectEnable true; 
		"filmGrain" ppEffectEnable true;  
		"filmGrain" ppEffectAdjust [0.1, -1, 0.1, 0.05, 1, false];  
		"filmGrain" ppEffectCommit 2;    
		"colorCorrections" ppEffectAdjust [1, 0.75, 0, [0.3,0.4,1,-0.1], [1,1,1,1], [-0.5,0,-1,3]]; 
		"colorCorrections" ppEffectCommit 2;
		_total = 0;
		while{true} do {
			if(_total > 10 || life_battery < 0) exitwith {};
			sleep 1;
			["Remove",3] call fnc_battery;
			_total = _total + 1;
		};
		sleep 2;
		["kEarth Imaging ist aktuell OFFLINE!",false] spawn domsg; 
		player say "satdisable"; 
		life_kEarthCamera cameraEffect ["TERMINATE","BACK"];
		camDestroy life_kEarthCamera;
		"colorCorrections" ppEffectAdjust [1, 1, -0.003, [0.0, 0.0, 0.0, 0.0], [1, 1, 1, 1],  [0, 0, 0, 0.0]]; 
		"colorCorrections" ppEffectCommit 3;
		"colorCorrections" ppEffectEnable false;
		"filmGrain" ppEffectAdjust [0, 0, 0, 0, 1, false];
		"filmGrain" ppEffectCommit 2; 
		"filmGrain" ppEffectEnable false;  
		sleep 600;
		["kEarth Imaging ist wieder ONLINE!",false] spawn domsg;
		allow_sat = true;
	};

fnc_dispatch = {
	if(dispatch) exitwith {};
	if(dispatch2) exitwith {};
	dispatch = true;
	_sound2play = param [0,"",[""]];
	playSound _sound2play;
	sleep 7;
	dispatch = false;
};



	fnc_phone_settings = { 
		_todo = param [0,"",[""]];

		if(_todo == "tags") then {
			if(phone_s_1) then {
				phone_s_1 = false;
			} else {
				phone_s_1 = true;
			};
		};

		if(_todo == "HUD") then {
			if(phone_s_2) then {
				phone_s_2 = false;
				_one = _ui2 displayCtrl 1000;
				_one ctrlshow true;
				[] spawn life_fnc_hudSetup;
			} else {
				_ui = uiNameSpace getVariable ["playerHUD",displayNull];
				_idc = 2199;
				_idc2 = 23495;
				while{true} do {
					_todo1 = _ui displayctrl _idc;
					_todo2 = _ui displayCtrl _idc2;
					_todo1 ctrlshow false;
					_todo2 ctrlshow false;
					_idc = _idc + 1;
					_idc2 = _idc2 + 5;
					if(_idc == 2233) exitwith {};
				};
				_one = _ui2 displayCtrl 1000;
				_one ctrlshow false;
				_one = _ui displayCtrl 23915;
				_two = _ui displayCtrl 23905;
				_three = _ui displayCtrl 23910;
				_four = _ui displayCtrl 23920;
				_one ctrlshow false;
				_two ctrlshow false;
				_three ctrlshow false;
				_four ctrlshow false;
				phone_s_2 = true;
			};
		};
	};

fnc_delivery = {
	_mytype = _this;
	if(_mytype isEqualTo "standard") exitwith {
		_chance = round (random 7);
		if(_chance < 2) then {
			player addItemToBackpack "CG_Pro_Item_i";
			["Jemand hat dir eine Go Pro gegeben! Schaue in deinen Rucksack!", false] spawn domsg;
			["Add",1] call fnc_karma;
		};
		if(_chance isEqualTo 2) then {
			["cash","add",1250] call life_fnc_handleCash; 
			["Du hast $7250 bekommen!", false] spawn domsg;
			["Add",3] call fnc_karma;
		};
		if(_chance isEqualTo 3) then {
			["cash","add",500] call life_fnc_handleCash; 
			["Du hast $500 bekommen!", false] spawn domsg;
			["Add",2] call fnc_karma;
		};
		if(_chance isEqualTo 6) then {
			player addItemToBackpack "CG_ATF_Drug_Bottle_01_i";
			player addItemToBackpack "CG_ATF_Drug_Bottle_01_i";
			["Jemand hat dir Medizien gegeben! Schaue in deinen Rucksack!", false] spawn domsg;
			["Add",5] call fnc_karma;
		};	
		if(_chance isEqualTo 7) then {
			player addItemToBackpack "CG_ATF_Drug_Bottle_01_i";
			["Jemand hat dir Medizien gegeben! Schaue in deinen Rucksack!", false] spawn domsg;
			["Add",5] call fnc_karma;
		};	
		if(_chance isEqualTo 4) then {
			["cash","add",2500] call life_fnc_handleCash; 
			["Du hast $2500 bekommen!", false] spawn domsg;
			["Add",15] call fnc_karma;
		};
		if(_chance isEqualTo 5) then {
			_lootArr = ["emerald","ruby","sapphire"];
			_loot = _lootArr select floor random count _lootArr;
			[true,_loot,3] call life_fnc_handleInv;
			["Jemand hat dir wertvolle Juwelen gegeben! Schaue in deinem virtuellen Inventar!", false] spawn domsg;
			["Add",3] call fnc_karma;
		};
	};

	if(_mytype isEqualTo "fastfood") exitwith {
		player addItemToBackpack "CG_ATF_Pizza_Box_i";
		["Fastfood Lieferung! Schaue in deinen Rucksack!", false] spawn domsg;
		player addItemToBackpack "CG_ATF_Donut_Box_i";
		["Add",1] call fnc_karma;
	};

	if(_mytype isEqualTo "fixit") exitwith {
		//todo
	};

	if(_mytype isEqualTo "jail") exitwith {
		_chance = round (random 100);
		if(_chance < 20) then {
			player addItem "CG_ATF_Pizza_Box_i";
			player assignItem "CG_ATF_Pizza_Box_i";
			player addItem "CG_ATF_Donut_Box_i";
			player assignItem "CG_ATF_Donut_Box_i";
			player addweapon "A3L_Glock17";
			player addmagazine "A3L_Glock17mag";
			player addmagazine "A3L_Glock17mag";
			player addmagazine "A3L_Glock17mag";
			player addmagazine "A3L_Glock17mag";		
			["Jemand schmuggelt Sachen für dich in den Knast!", false] spawn domsg;
		};
	};				
};

[] spawn
{
	if(side player == civilian) then {
		while {true} do {
			uiSleep 2;
			_radios = player call TFAR_fnc_radiosList;
			if(count _radios < 2) then {

				if(count _radios > 0) then {
					if(!([(call TFAR_fnc_activeSwRadio),"cg_tabletd"] call TFAR_fnc_isSameRadio)) then {  
						[] call fnc_checkphone;
						[] call fnc_resetCall;
						hint "Dein Funkgerät wurde durch ein Smartphone ersetzt!";
					};
				};

				_wtflol = call TFAR_fnc_haveLRRadio;
				if(_wtflol) then {
				_channel = (call TFAR_fnc_ActiveLRRadio) call TFAR_fnc_getLRChannel;
				_channel = _channel + 1;
					if (driver (vehicle player) == player && (vehicle player) != player) then {
						_curfreqlr = [(call TFAR_fnc_activeLrRadio), _channel] call TFAR_fnc_GetChannelFrequency;
						_curfreqlr = parseNumber _curfreqlr;
						if( _curfreqlr > 33 && _curfreqlr < 34 ) then {
							["33.1 - 33.9 sind blockierte Frequenzen.", false] spawn domsg;
							[(call TFAR_fnc_activeLrRadio), _channel, "40"] call TFAR_fnc_SetChannelFrequency;
						};
					};
				};

				_wtfno = call TFAR_fnc_haveSWRadio;
				if(_Wtfno) then {
					_channel = (call TFAR_fnc_ActiveSwRadio) call TFAR_fnc_getSwChannel;
					_channel = _channel + 1;
					_curfreqsr = [(call TFAR_fnc_activeSwRadio), _channel] call TFAR_fnc_GetChannelFrequency;
					_curfreqsr = parseNumber _curfreqsr;
					if(!isNil "_curfreqsr") then {
						if( _curfreqsr > 33 && _curfreqsr < 34 ) then {
							["33.1 - 33.9 sind blockierte Frequenzen.", false] spawn domsg;
							[(call TFAR_fnc_activeSwRadio), _channel, "40"] call TFAR_fnc_SetChannelFrequency;
						};
					};
				};
			}
			else
			{
				["Du trägst mehrere Funkgeräte mit dir, diese stören sich gegenseitig, lege eines ab.", false] spawn domsg;
				{
					if(_forEachIndex != 0) then
					{
						player unassignItem (_radios select (_forEachIndex - 1));
						player assignItem (_radios select (_forEachIndex));
					};
					_wtfno = call TFAR_fnc_haveSWRadio;
					if(_Wtfno) then {
						_channel = (call TFAR_fnc_ActiveSwRadio) call TFAR_fnc_getSwChannel;
						_channel = _channel + 1;
						_curfreqsr = [(call TFAR_fnc_activeSwRadio), _channel] call TFAR_fnc_GetChannelFrequency;
						if(!isNil "_curfreqsr") then {
							[(call TFAR_fnc_activeSwRadio), _channel, str (round(random 480)+30)] call TFAR_fnc_SetChannelFrequency;
						};
					};
					if((count _radios - 1) == _forEachIndex) then
					{
						player unassignItem (_radios select (_forEachIndex));
						player assignItem (_radios select 0);
					};
				} forEach _radios;
				uiSleep 3;
			};
		};
	};
};



fnc_airkit =
{
	if(!life_ApplyAir) then {
		life_ApplyAir = true;
		_buym = 1;
		while {_buym < 18} do {
			player setOxygenRemaining 1;
			uiSleep 10;
			_buym = _buym + 1;
		};
		life_ApplyAir = false;	
	};
};


[] spawn
{
	while {true} do
	{
		uiSleep 3;
		if(life_carryWeight > life_maxWeight && !isForcedWalk player) then {
			player forceWalk true;
			player setFatigue 1;
			[localize "STR_NOTF_MaxWeight", false] spawn domsg;
		} else {
			if(isForcedWalk player && !(player getVariable["severeInjuries",FALSE])) then {
				player forceWalk false;
			};
		};
	};
};


[] spawn
{
	while {true} do
	{
		if(side player == west) exitwith {};
		uiSleep 5;
		if(!(rebelshipment getVariable["progress",FALSE])) then { uisleep 10; };
		if(player distance rebelshipment < 300 && (rebelshipment getVariable["progress",FALSE])) then { ["Du betrittst eine Rote-Zone, solltest du eine Waffe haben, kannst du erschossen werden.", false] spawn domsg; sleep 60;};
	};
};

	fnc_intox =
	{
		[] spawn {
			uiSleep 110;
			if(life_intox > 0) then 
			{
				if(life_intox <= 0.02) then {life_intox = 0.00;} else {life_intox = life_intox - 0.02;};
				switch(true) do {
					case (life_intox == 0.00): {["Du bist komplett nüchtern.", false] spawn domsg;};
					case (life_intox == 0.08): {["Noch darfst du legal fahren.", false] spawn domsg;};
				};
			};
		};
		if(life_intox <= 0.08) exitWith {};
		if(player getVariable["intoxicated",false]) exitWith {};
		player setVariable["intoxicated",true,true];
		while{life_intox > 0.08} do 
		{
 		    "dynamicBlur" ppEffectEnable true;
    	    "dynamicBlur" ppEffectAdjust [0.5];
            "dynamicBlur" ppEffectCommit 1;
			uiSleep 5;
			if(life_intox > 0.15) then {
				_chance = round (random 100);
   			 	if(_chance < 5) then {
   				  		[] spawn KK_fnc_forceRagdoll;
   				};
			};
			if(life_intox > 0.25) then {
				_chance = round (random 100);
   			 	if(_chance < 7) then {
   				  		[] spawn KK_fnc_forceRagdoll;
   				};
			};
			if(life_intox > 0.35) then {
				_chance = round (random 100);
   			 	if(_chance < 8) then {
   				  		[] spawn KK_fnc_forceRagdoll;
   				};
			};
			if(life_intox > 0.45) then {
				_chance = round (random 100);
   			 	if(_chance < 11 && _chance > 4) then {
   				  		[] spawn KK_fnc_forceRagdoll;
   				};
			};

		};
		"dynamicBlur" ppEffectEnable false;
		player setVariable["intoxicated",false,true];
	};

[] spawn  
{
	private["_walkDis","_myLastPos","_MaxWalk","_runHunger","_runDehydrate"];
	_walkDis = 0;
	_myLastPos = (getPos player select 0) + (getPos player select 1);
	_MaxWalk = 1200;
	while{true} do 
	{
		uiSleep 1;
		if(deadPlayer) then {_walkDis = 0;}
		else
		{
			_CurPos = (getPos player select 0) + (getPos player select 1);
			if((_CurPos != _myLastPos) && (isNull objectParent player)) then
			{
				_walkDis = _walkDis + 1;
				if(_walkDis == _MaxWalk) then
				{
					_walkDis = 0;
					["Remove","Food",10] spawn fnc_sustain;
					["Remove","Drink",10] spawn fnc_sustain;
				};
			};
			_myLastPos = (getPos player select 0) + (getPos player select 1);
		};
	};
};
[] spawn
{
	while{true} do
	{
		waitUntil {vehicle player != player};
		waitUntil {isNull objectParent player};

		_time = if (!life_seatbelt) then {time + 0.8} else {time + 1.5};
		[] spawn {
			uiSleep 0.1;
			if(handgunWeapon player isEqualTo "" && primaryWeapon player isEqualTo "") exitWith {};
			[player,"AmovPercMstpSnonWnonDnon"] remoteExecCall ["life_fnc_animSync"];
			player switchMove "AmovPercMstpSnonWnonDnon"; 
		};
		while {_time > time} do {
			if (currentWeapon player != "") then {
				player action ["SwitchWeapon", player, player, 100];
			};
		};
		uiSleep 1;
	};
};


fnc_testaids = { 
	uiSleep 0.05; 
	if(draggingm) then {
		closedialog 0; 
		["Dragging is disabled while in a vehicle Inventory. Use Right Click to move items!", false] spawn doquickmsg; 
	};
};

fnc_testdupe = {
	draggingm = false;
	waituntil {!(isnull (finddisplay 602)) || handle};
	nodrag1 = (findDisplay 602) DisplayAddEventHandler ["MouseButtonDown", "if(_this select 1 == 0) then { draggingm = true; };"];
	nodrag2 = (findDisplay 602) DisplayAddEventHandler ["MouseButtonUp", "if(_this select 1 == 0) then { draggingm = false; };"];
	nodrag3 = (findDisplay 602) DisplayAddEventHandler ["MouseMoving", " hint format[""%1"",_this]; if(draggingm) then { [] spawn fnc_testaids; };"];
	waituntil {(isnull (finddisplay 602)) || handle};
	(findDisplay 602) displayRemoveEventHandler ["MouseButtonDown",nodrag1];	
	(findDisplay 602) displayRemoveEventHandler ["MouseButtonUp",nodrag2];	
	(findDisplay 602) displayRemoveEventHandler ["MouseMoving",nodrag3];	
};

fnc_gut_animal = {
	private["_obj"];
	_obj = param [0,ObjNull,[ObjNull]];
	if(isNull _obj) exitWith {}; 
	if(alive _obj) exitWith {}; 

	if(([true,"Raw Meat",1] call life_fnc_handleInv)) then
	{
		deleteVehicle _obj;
		["Du hast 1 rohes Fleisch aufgehoben!", false] spawn domsg;
	};
};


	fnc_doorkick = {

		_doorkick = 45;
		_failed = false;
		while{_doorkick > 0} do {
			uisleep 1;
			_doorkick = _doorkick - 1;
			_locked = locked (vehicle player);
			if(_doorkick == 44 || _doorkick == 25 || _doorkick == 10) then {
				[player,"glassbreak"] spawn life_fnc_nearestSound;
			};

			if(_locked != 2) exitwith { _failed = true; };
			sleep 1;
			hint format["Du trittst die Tür ein: %1 Zeit verbleibend.",_doorkick];
			_vehspeed = speed (vehicle player);
			if(_vehspeed > 0) exitwith { _failed = true; };
		};
		hint "";
		if(!_failed) then { player action ["Eject", vehicle player]; (vehicle player) lock 0; };
	};

//double click functions
fnc_removeitem = {
	_remove = _this select 0;
	player unassignItem _remove;
	player removeitem _remove;
};
//GoPro Toggle
fnc_gopro = {
	if(life_gopro) then {
		life_gopro = false;
	} else {
		life_gopro = true;
	};
	[player,"endbeep"] spawn life_fnc_nearestSound;
};



fnc_joinPaintball = {

if(life_is_arrested || (player getVariable ["restrained", false]) || (player getVariable ["tied", false])) exitwith {};

if( life_koil_race2 == 1 || life_koil_race == 1 || joinmode == 0 ) exitWith { ["Dies ist aktuell deaktiviert.", false] spawn domsg; };

	if(cash_in_hand < 50) exitWith {hint "You do not have enough cash to join the game, you need $50!.";};

	if (joinmode isEqualTo 0) then {
		_PUID = getPlayerUID player;
		_spielerGeld = cash_in_hand;
		hint "Eine Anfrage wurde an den Server gesendet, bitte warte einen Moment!";
		[_PUID,_spielerGeld] remoteExec ["TON_fnc_paintball",2];
		joinmode = 1;
	} else {
		hint "Du befindest dich aktuell in der Lobby!";
	};

};






fnc_deletefire = { 
	thefire1 call fnc_deleteFire2;
	_status = _this select 0;
	if(_status == "cleaned") then {
		fire_loc1 = [0,0,0.1];
	};
};

//fire 
fnc_deletefire2 = {  
 	_unit = _this;
	{ if (typeOf _x == "#particlesource") then { _x setdamage 1; deleteVehicle _x; } } forEach (_unit nearObjects 10);  
};  

fnc_startfire = {    
	["standard"] spawn fnc_deletefire;
	sleep 1;
	thefire1 = "test_EmptyObjectForFireBig" createVehicleLocal fire_loc1;  
};

fnc_police_fire = {
	["NEWS: Lakeside PD steht unter Flammen!", false] spawn domsg; 
	fire_loc1 = [8696.41,7222.15,0.1];
	[] spawn fnc_startfire;
};

fnc_bank_fire = {
["NEWS: Lakeside Bank steht unter Flammen!", false] spawn domsg; 
	fire_loc1 = [8528.58,6623.8,0.1];
	[] spawn fnc_startfire;
};

fnc_wheat_fire = {
["NEWS: Lakeside Weizen Feld steht unter Flammen!", false] spawn domsg; 
	fire_loc1 = [8768.35,6649.88,0.1];
	[] spawn fnc_startfire;	
};

fnc_tiki_fire = {
["NEWS: Lakeside Bar steht unter Flammen!", false] spawn domsg; 
	fire_loc1 = [8585.92,6627.52,0.1];
	[] spawn fnc_startfire;	
};

fnc_donuts_fire = {
["NEWS: Lakeside Donuts steht unter Flammen!", false] spawn domsg; 
	fire_loc1 = [8549.27,6732.5,0.1];
	[] spawn fnc_startfire;	
};

fnc_pizza_fire = {
["NEWS: Lakeside Pizza steht unter Flammen!", false] spawn domsg; 
	fire_loc1 = [8520.743,6294.040,0.1];
	[] spawn fnc_startfire;	
};

fnc_morrison_fire = {
["NEWS: Morrison Zementhändler steht unter Flammen!", false] spawn domsg; 
	fire_loc1 = [4703.18,2606.99,0.1];
	[] spawn fnc_startfire;	
};

fnc_prison_fire = {
["NEWS: Lakeside Prison steht unter Flammen!", false] spawn domsg; 
	fire_loc1 = [9212.92,9291.86,0.1];
	[] spawn fnc_startfire;	
};

fnc_landmarkt_fire = {
["NEWS: New Haven Landmarkt steht unter Flammen!", false] spawn domsg; 
	fire_loc1 = [5994.62,8003.6,0.1];
	[] spawn fnc_startfire;	
};

fnc_truckjob_fire = {
["NEWS: Lakeside Truck Job steht unter Flammen!", false] spawn domsg; 
	fire_loc1 = [7679.69,6060.14,0.1];
	[] spawn fnc_startfire;	
};







fnc_searched =
{
	_handle = [player,false] spawn life_fnc_dropItems;
	waitUntil {scriptDone _handle};
	life_carryWeight = 0;
};
	
fnc_spikeStrip_cg = {
	private["_nearVehicles","_spikeStrip","_Obj"];

	_mydir = (getdir player);
	_obj = [player, 3.4, _myDir ] call BIS_fnc_relPos; 	
	if(_myDir > 30 && _myDir < 181) then {
		_obj = [player, 4.4, _myDir ] call BIS_fnc_relPos; 
	};
	if(_myDir > 240 && _myDir < 341) then {
		_obj = [player, 2.2, _myDir ] call BIS_fnc_relPos; 	
	};
	_spikeStrip = createVehicle ["CG_Spikes_Extended", _obj,[], 0, "CAN_COLLIDE"];
	_spot = getPos _spikeStrip;
	_spikestrip setdir (_myDir - 180);
	_spikeStrip setVectorUp surfaceNormal _spot;

	waitUntil { uiSleep 0.05; _nearVehicles = nearestObjects[getPos _spikeStrip,["Car"],7]; ( count _nearVehicles > 0 || isNull _spikeStrip || player distance _spikestrip > 250 || deadPlayer ) };
	deletevehicle _spikestrip;
	if(count _nearVehicles > 0) then { _vehicle = _nearvehicles select 0; [_vehicle] remoteExecCall ["life_fnc_spikeStripEffect",_vehicle]; };
};


//Because fuck public variables and being tidy.
fnc_CurrentCallMenu = {
	if(!callInProgress) exitwith { ["Du telefonierst aktuell nicht!", false] spawn domsg;  };
	closedialog 0;
	private["_display","_list","_side"];
	disableSerialization;
	_myID = player getVariable "PhoneID";
	createdialog "Life_CurrentPhoneCall_Menu";
	waitUntil {!isNull (findDisplay 5337)};
	_display = findDisplay 5337;
	_list = _display displayCtrl 5338;
	lbClear _list;
	{
		_userID = _x getvariable "PhoneID";
		if( _userID == _myID && _x != player) then {
			_side = switch(side _x) do {case west: {"Cop"}; case east : {"Mafia"}; case civilian : {"Civ"}; case independent : {"Medic"}; default {"Unknown"}; };
			_list lbAdd format["%1 - %2", name _x,_side];
			_list lbSetdata [(lbSize _list)-1,str(_x)];
		};
	} foreach playableUnits;
};


fnc_CallMenu = {
	private["_display","_list","_side"];
	disableSerialization;
	createdialog "Life_PhoneCall_Menu";
	waitUntil {!isNull (findDisplay 5337)};
	_display = findDisplay 5337;
	_list = _display displayCtrl 5338;
	lbClear _list;
	{
		if(_x != player) then {
			_side = switch(side _x) do {case west: {"Cop"}; case east : {"Mafia"}; case civilian : {"Civ"}; case independent : {"Medic"}; default {"Unknown"}; };
			_list lbAdd format["%1 - %2", name _x,_side];
			_list lbSetdata [(lbSize _list)-1,str(_x)];
		};
	} foreach playableUnits;

	if(side player != civilian) then {
			player setvariable["PhoneCallNumber",0,true];
			player setvariable["PhoneID",0,true];
			callInProgress = false;
			myCallOwner = player;
			_mynumber = getPlayerUID player;
			_channel = (call TFAR_fnc_ActiveSwRadio) call TFAR_fnc_getSwChannel;
			_channel = _channel + 1;
			[(call TFAR_fnc_activeSwRadio), _channel, _mynumber] call TFAR_fnc_SetChannelFrequency;
			call TFAR_fnc_HideHint;
	};


};

fnc_callSomebody = {
	private["_unit"];
	_unit = lbData[5338,lbCurSel (5338)];
	_unit = call compile format["%1", _unit];
	closeDialog 0;
	if(isNil "_unit") exitwith {};
	if(isNull _unit) exitWith {};
	if(tryingcall) exitwith { ["Bitte warte, bevor du eine Person zum Gespräch hinzufügst - Eine Person verbindet!", false] spawn domsg; };
	if(PhonesRinging) exitwith { ["Bitte warte, bevor du eine Person zum Gespräch hinzufügst - Eine Person verbindet!", false] spawn domsg; };
	[] spawn fnc_checkCall;
	myCallOwner remoteExec ["fnc_ringPlayer",_unit];
};

fnc_checkCall = {
	tryingcall = true;
	private["_total","_endme","_newTotal"];
	_endme = 0;
	_total = myCallOwner getVariable "PhonecallNumber";
	_newTotal = _total + 1;
	if(_total == 0) then {
		while{tryingCall} do {
			playSound "cgphone_call";
			sleep 5;
			_endme = _endme + 5;
			_total = myCallOwner getVariable "PhonecallNumber";
			if(_total == 1) exitwith { [] call fnc_answered; player call fnc_answercall; playSound "cgphone_static"; };
			if(_endme > 20) exitwith { [] call fnc_noanswer; };
		};
	} else {
		while{tryingCall} do {
			playSound "cgphone_call";
			sleep 5;
			_endme = _endme + 5;
			_total = myCallOwner getVariable "PhonecallNumber";
			if(_total == _newTotal) exitwith { [] call fnc_answered; };
			if(_endme > 20) exitwith { [] call fnc_noanswer; };
		};	
	};
	tryingcall = false;
};
 
fnc_answered = {
	playSound "cgphone_click";
	["Jemand ist in der Leitung!", false] spawn domsg; 
};

fnc_noanswer = {
	playSound "cgphone_hangup";
	["Niemand hat deinen Anruf angenommen!", false] spawn domsg; 
};

fnc_busyAnswer = {
	tryingcall = false;
	playSound "cgphone_hangup";
	["Die Person telefoniert beretis - Schreibe eine SMS!", false] spawn domsg; 
};


fnc_ringPlayer = {
	CurrentCaller = _this;
	_radios = player call TFAR_fnc_radiosList;
	if(count _radios > 0) then {
		if( phoneDisabled ) exitwith { currentCaller remoteExec ["fnc_busyAnswer",currentCaller]; [format["Ein Anruf von %1 wurde zu deinen Nachrichten hinzugefügt! (Smartphone ausgeschlatet)",name CurrentCaller], false] spawn domsg; };	
		if( callInProgress || PhonesRinging ) exitwith { currentCaller remoteExec ["fnc_busyAnswer",currentCaller]; [format["Ein Anruf von %1 wurde zu deinen Nachrichten hinzugefügt! (Bereits am telefonieren) ",name CurrentCaller], false] spawn domsg; };	
		if( life_battery < 5 ) exitwith { currentCaller remoteExec ["fnc_busyAnswer",currentCaller]; [format["Ein Anruf von %1 wurde zu deinen Nachrichten hinzugefügt! (Batterie zu schwach) ",name CurrentCaller], false] spawn domsg; };

		PhonesRinging = true;
		_endme = 0;
		while{PhonesRinging} do {
			playSound "cgphone_call";
			[format["%1 ruft dich gerade an!",name currentcaller], false] spawn domsg; 
			sleep 5;
			_endme = _endme + 5;
			if(_endme > 20) exitwith { ["Du hast einen Anruf verpasst!", false] spawn domsg;  };
		};

		PhonesRinging = false;		
	} else {
		currentCaller remoteExec ["fnc_busyAnswer",currentCaller];
		["Du hast einen Anruf verpasst!", false] spawn domsg; 
	};
};

fnc_answercall = {
	PhonesRinging = false;	
	myCallOwner = _this;
	myPhoneCall = getPlayerUID myCallOwner;
	player setvariable["PhoneID",myPhoneCall,true];
	player setVariable ["tf_unable_to_use_radio", false];
	_channel = (call TFAR_fnc_ActiveSwRadio) call TFAR_fnc_getSwChannel;
	_channel = _channel + 1;
	[(call TFAR_fnc_activeSwRadio), _channel, myPhoneCall] call TFAR_fnc_SetChannelFrequency;
	call TFAR_fnc_HideHint;
	_total = myCallOwner getVariable "PhonecallNumber";
	_total = _total + 1;	
	myCallOwner setvariable["PhoneCallNumber",_total,true];
	[] spawn fnc_callProgress;
};

fnc_callProgress = {
	callInProgress = true;
	[] spawn {
		while{callInProgress} do {
			_total = myCallOwner getVariable "PhonecallNumber";
			playSound "cgphone_static";
			_total = _total / 2;
			["cash","take",_total] call life_fnc_handleCash;
			[format["Dieser Anruf hat dir $%1 gekostet!",_total], false] spawn domsg;
			sleep 140;
		};
	};
	[] spawn {
		sleep 7;
		while{callInProgress} do {
			if( isNull myCallOwner ) exitwith { [] call fnc_resetcall; };
			_total = myCallOwner getVariable "PhonecallNumber";	
			if( _total < 2 ) exitwith { [] call fnc_resetcall; };
			if( deadPlayer && myCallOwner != player ) exitwith { ["Anruf wurde beendet (Sie sind verstorben)", false] spawn domsg; [] call fnc_hangup };	
			if( life_battery < 5 ) exitwith { ["Anruf wurde beendet (Batterie schwach)", false] spawn domsg; [] call fnc_hangup };	
			sleep 5;
		};
	};
};

fnc_speakermode = {
	_stereo = (call TFAR_fnc_ActiveSwRadio) call TFAR_fnc_getSwSpeakers;
	if(_stereo) then {
		["Your phone is off speaker mode!", false] spawn doquickmsg;
	} else {
		["Your phone is on speaker mode!", false] spawn doquickmsg;
	};
	[call TFAR_fnc_ActiveSWRadio] call TFAR_fnc_setSwSpeakers;
};

fnc_iVol = {
	_volume = (call TFAR_fnc_ActiveSwRadio) call TFAR_fnc_getSwVolume;
	_volume = _volume + 1;
	if(_volume > 10) then { _volume = 10; };
	[format["Volume: %1",_volume], false] spawn doquickmsg;
	[(call TFAR_fnc_ActiveSWRadio), _volume] call TFAR_fnc_setSwVolume;
};

fnc_dVol = {
	_volume = (call TFAR_fnc_ActiveSwRadio) call TFAR_fnc_getSwVolume;
	_volume = _volume - 1;
	if(_volume < 1) then { _volume = 1; };
	[format["Volume: %1",_volume], false] spawn doquickmsg;
	[(call TFAR_fnc_ActiveSWRadio), _volume] call TFAR_fnc_setSwVolume;
};

fnc_resetCall = {
	if(side player == west) exitwith { [] call fnc_ChangePolice; };
	if(side player == independent) exitwith { [] call fnc_ChangeEMS; };
	playSound "cgphone_hangup";
	player setvariable["PhoneCallNumber",0,true];
	player setvariable["PhoneID",0,true];
	callInProgress = false;
	myCallOwner = player;
	_mynumber = getPlayerUID player;
	if(side player == civilian) then {
		player setVariable ["tf_unable_to_use_radio", true];
	};
	_channel = (call TFAR_fnc_ActiveSwRadio) call TFAR_fnc_getSwChannel;
	_channel = _channel + 1;
	[(call TFAR_fnc_activeSwRadio), _channel, _mynumber] call TFAR_fnc_SetChannelFrequency;
	call TFAR_fnc_HideHint;
};

fnc_hangup = {
	if(CallInProgress) then
	{
		playSound "cgphone_hangup";
		if(player == myCallOwner) exitwith {
			[] call fnc_resetcall;
			callInProgress = false;
		};
		_total = myCallOwner getVariable "PhonecallNumber";
		_total = _total - 1;
		myCallOwner setvariable["PhoneCallNumber",_total,true];
		[] call fnc_resetcall;
		callInProgress = false;
	};
};

fnc_phoneDisabled = {
	if(PhoneDisabled) then {
		PhoneDisabled = false;
		["Anrufe freigeschaltet!", false] spawn domsg; 
	} else {
		PhoneDisabled = true;
		["Anrufe gesperrt!", false] spawn domsg; 
	};	
};

fnc_trycall = {
	if(callInProgress) exitwith { 
		["Du hast jemanden zum aktuellen Gespräch hinzugefügt!", false] spawn domsg; 
		[] call fnc_callMenu; 
	};
	if(PhonesRinging) exitwith { 
		["Verbinde zum Gespräch!", false] spawn domsg; 
		CurrentCaller spawn fnc_answerCall;
	};
	if(TryingCall) exitwith { 
		["Bitte warte bis der aktuelle Anruf beendet ist!", false] spawn domsg; 
	};

	["Du startest einen Anruf!", false] spawn domsg; 
	[] call fnc_callMenu; 

};


fnc_tryhangup = {
	if(PhonesRinging) exitwith { 
		PhonesRinging = false;
		["Du hörst einen besetzt Ton.", false] spawn domsg; 
		[] call fnc_hangup; 
	};

	if(tryingCall) exitwith {
		tryingcall = FALSE;
		["Verbindung wird getrennt.", false] spawn domsg; 
		[] call fnc_resetcall;
	};

	if(myCallOwner == player) exitwith {
		["Verbindung wird getrennt.", false] spawn domsg; 
		[] call fnc_resetcall;	
	};

	if(callInProgress) exitwith { 
		["Verlasse aktuelles Gespräch.", false] spawn domsg; 
		[] call fnc_hangup; 
	};


	["Anrufliste wird zurückgesetzt.", false] spawn domsg; 
	[] call fnc_resetcall; 

};

fnc_stereoRotation = {
	_stereo = (call TFAR_fnc_ActiveSwRadio) call TFAR_fnc_getCurrentSwStereo;
	_stereo = _stereo + 1;
	if(_stereo > 2) then { _stereo = 0; };
	[(call TFAR_fnc_ActiveSWRadio), _stereo] call TFAR_fnc_setSwStereo;
	if(_stereo == 0) exitwith { ["Stereo aktiviert.", false] spawn doquickmsg; };
	if(_stereo == 1) exitwith { ["Linkes Ohr aktiviert.", false] spawn doquickmsg; };
	if(_stereo == 2) exitwith { ["Rechtes Ohr aktiviert.", false] spawn doquickmsg; };	
};

fnc_ChangeEMS = {
	if(side player == civilian || side player == east) exitwith {};
	player setvariable["PhoneCallNumber",33.1,true];
	player setvariable["PhoneID",33.1,true];
	_channel = (call TFAR_fnc_ActiveSwRadio) call TFAR_fnc_getSwChannel;
	_channel = _channel + 1;
	[(call TFAR_fnc_activeSwRadio), _channel, 33.1] call TFAR_fnc_SetChannelFrequency;
	callInProgress = false;
	myCallOwner = player;
	player setVariable ["tf_unable_to_use_radio", false];
	call TFAR_fnc_HideHint;
	["Du befindest dich auf der EMS Freq!", false] spawn domsg;
};
fnc_ChangeDOC = {
	if(side player == civilian || side player == east) exitwith {};
	player setvariable["PhoneCallNumber",33.2,true];
	player setvariable["PhoneID",33.2,true];
	_channel = (call TFAR_fnc_ActiveSwRadio) call TFAR_fnc_getSwChannel;
	_channel = _channel + 1;
	[(call TFAR_fnc_activeSwRadio), _channel, 33.2] call TFAR_fnc_SetChannelFrequency;
	callInProgress = false;
	myCallOwner = player;
	player setVariable ["tf_unable_to_use_radio", false];
	call TFAR_fnc_HideHint;
	["Du befindest dich auf der DOC Freq!", false] spawn domsg;
};
fnc_ChangePolice = {
	if(side player == civilian || side player == east) exitwith {};
	player setvariable["PhoneCallNumber",33.3,true];
	player setvariable["PhoneID",33.3,true];
	_channel = (call TFAR_fnc_ActiveSwRadio) call TFAR_fnc_getSwChannel;
	_channel = _channel + 1;
	[(call TFAR_fnc_activeSwRadio), _channel, 33.3] call TFAR_fnc_SetChannelFrequency;
	callInProgress = false;
	myCallOwner = player;
	player setVariable ["tf_unable_to_use_radio", false];
	call TFAR_fnc_HideHint;
	["Du befindest dich auf der Polizei Freq!", false] spawn domsg;
};


fnc_dynamiteScript = {
	private["_catch"];
	player playmove "AmovPercMrunSnonWnonDf_AmovPercMstpSnonWnonDnon_gthEnd";
	sleep 1;
	_dirAdd = (-30) + random(60);
	_speed = 20; 
	_Dir = (getdir player) + _dirAdd; 
	_vehicle = createVehicle ["vvv_anzuelo", [getpos player select 0, getpos player select 1, (getpos player select 2) + 3],[], 0, "CAN_COLLIDE"];
	_vel = velocity _vehicle;
	_vehicle setVelocity [(_vel select 0)+(sin _dir*_speed),(_vel select 1)+(cos _dir*_speed),(_vel select 2) + 12];
	playSound3D ["CG_Jobs\sounds\exp\exp.ogg", player, false, getPosASL player, 11, 1, 35]; 


	sleep 2.5;

	if!(surfaceIsWater (getpos _vehicle)) exitwith {
		hint "Du hast dein Sprengstoff verloren!";
		deletevehicle _vehicle;
	};

	_catchPos = (getpos _vehicle);
	hint "Sprengstoff geworfen - Abstand halten!";


	sleep 8;
	"R_60mm_HE" createvehicle [(getpos _vehicle select 0)-2,(getpos _vehicle select 1)+1,(getpos _vehicle select 2)-3];
	"R_60mm_HE" createvehicle [(getpos _vehicle select 0),(getpos _vehicle select 1)+4,(getpos _vehicle select 2)-1];
	"R_60mm_HE" createvehicle [(getpos _vehicle select 0)+3,(getpos _vehicle select 1),(getpos _vehicle select 2)-1];

	deletevehicle _vehicle;


	hint "Geh nah ran um deinen Fang einzuholen!";

	_timeout = 60; 
	while{true} do {
		_timeout = _timeout - 1;
		if(player distance _catchPos < 9) exitwith { _catch = true; };
		if(_timeout < 1) exitwith { _catch = false; };
		sleep 0.5;
	};
	if(_catch) then {
		playSound3D ["vvv_fishingrod\sounds\splash.ogg", player, false, getPosASL player, 51, 1, 45];
	hint "Du hast deinen Fang eingeholt!";
	_amount = 1 + random(25);
		while{_amount > 0} do {
			_type = floor (random(5));
			switch (_type) do
			{
				case 0 :
				{
					player additem "Fish_1_i"; 
				};
				case 1 :
				{
					player additem "Fish_1_i"; 
				};
				case 2 :
				{
					player additem "Fish_2_i"; 
				};
				case 3 :
				{
					player additem "Fish_3_i"; 
				};
				case 4 :
				{
					player additem "Fish_4_i"; 
				};
				case 5 :
				{
					player additem "Fish_5_i"; 
				};

				default
				{
				};
			};	
			_amount = _amount - 1;	
		};		
	} else { hint "Du warst zu langsam! Der Fang ist weg!";};				
};

fnc_castScript = {
	player playmove "AwopPercMstpSgthWrflDnon_start1";
	sleep 1;
	_dirAdd = (-30) + random(60);
	_speed = 20; 
	_Dir = (getdir player) + _dirAdd; 
	_vehicle = createVehicle ["vvv_anzuelo", [getpos player select 0, getpos player select 1, (getpos player select 2) + 3],[], 0, "CAN_COLLIDE"];
	_vel = velocity _vehicle;
	_vehicle setVelocity [(_vel select 0)+(sin _dir*_speed),(_vel select 1)+(cos _dir*_speed),(_vel select 2) + 12];
	playSound3D ["vvv_fishingrod\sounds\cast2.ogg", player, false, getPosASL player, 5, 1, 35]; 


	sleep 2.5;

	if!(surfaceIsWater (getpos _vehicle)) exitwith {
		hint "Du hast deinen Köder verloren!";
		deletevehicle _vehicle;
	};

	hint "Du hast deine Angel ausgeworfen!";
	playSound3D ["vvv_fishingrod\sounds\splash.ogg", player, false, getPosASL _vehicle, 25, 1, 85];

	_timeOut = 0;
	_total = random(6);
	_myStartSpot = getpos player;
	_fail = false;

	while{true} do {
		sleep 3;
		_timeOut = _timeOut + 3;
		if(_timeOut > _total) exitwith {};
		if(_myStartSpot distance player > 25) exitwith { _fail = true; };
	};

	if(_fail) exitwith {
		hint "Du hast dich zu schnell bewegt! Dein Köder ist weg!";
		deletevehicle _vehicle;
	};

	_Dir = _Dir - 180; 
	_vel = velocity _vehicle;
	_speed = 22;

	_timeOut = 0;
	playSound3D ["vvv_fishingrod\sounds\splash.ogg", player, false, getPosASL _vehicle, 25, 1, 85];
	sleep 0.5;
	playSound3D ["vvv_fishingrod\sounds\wind2.ogg", player, false, getPosASL player, 5, 1, 35]; 

	player playmove "AmovPercMstpSrasWrflDnon_AmovPercMstpSrasWrflDnon_gear";

	while{_timeOut < 12 && _vehicle distance player > 5} do {
		_vehicle setpos [getpos _vehicle select 0, getpos _vehicle select 1, (getpos _vehicle select 2) + 0.2];
		_vehicle setVelocity [(_vel select 0)+(sin _dir*_speed),(_vel select 1)+(cos _dir*_speed),(_vel select 2) + random(2)];
		sleep 1;
		_timeOut = _timeOut + 1;
		player playaction "CRPTHSForwardStandLowered";
	};

	playSound3D ["vvv_fishingrod\sounds\splash.ogg", player, false, getPosASL player, 5, 1, 45];
	player addmagazine "cebos";
	deletevehicle _vehicle;

	_type = floor (random(25));

	switch (_type) do
	{
		case 0 :
		{
			player additem "Fish_1_i"; 
			hint "Du hast einen Fisch gefangen!";
		};
		case 1 :
		{
			player additem "Fish_1_i"; 
			hint "Du hast einen Fisch gefangen!";
		};
		case 2 :
		{
			player additem "Fish_2_i"; 
			hint "Du hast einen Fisch gefangen!";
		};
		case 3 :
		{
			player additem "Fish_3_i"; 
			hint "Du hast einen Fisch gefangen!";
		};
		case 4 :
		{
			player additem "Fish_4_i"; 
			hint "Du hast einen Fisch gefangen!";
		};
		case 5 :
		{
			player additem "Fish_5_i"; 
			hint "Du hast einen Fisch gefangen!";
		};
		case 6 :
		{
			player additem "Fish_1_i"; 
			hint "Du hast einen Fisch gefangen!";
		};
		case 7 :
		{
			player additem "Fish_2_i"; 
			hint "Du hast einen Fisch gefangen!";
		};
		case 8 :
		{
			player additem "Fish_3_i"; 
			hint "Du hast einen Fisch gefangen!";
		};
		case 9 :
		{
			player additem "Fish_4_i"; 
			hint "Du hast einen Fisch gefangen!";
		};
		case 10 :
		{
			player additem "Fish_5_i"; 
			hint "Du hast einen Fisch gefangen!";
		};

		default
		{
			hint "Leider nichts gefangen!";
		};

	};										
};


fnc_cutWood = {
	 trees = [];      
		 { if (str _x find ": t_" > -1) then { trees pushBack _x; }; } forEach nearestObjects [player, [], 9];     

		 if(count trees > 0) then {   
		_sound = round(random 5);
		switch(_sound) do {
			case 0: {
				playSound3D ["CG_Jobs\sounds\woodchop\woodchop1.ogg", player, false, getPosasl (trees select 0), 31, 1, 15];
			};
			case 1: {
				playSound3D ["CG_Jobs\sounds\woodchop\woodchop2.ogg", player, false, getPosasl (trees select 0), 31, 1, 15];
			};
			case 2: {
				playSound3D ["CG_Jobs\sounds\woodchop\woodchop3.ogg", player, false, getPosasl (trees select 0), 31, 1, 15];
			};
			case 3: {
				playSound3D ["CG_Jobs\sounds\woodchop\woodchop4.ogg", player, false, getPosasl (trees select 0), 31, 1, 15];
			};
			case 4: {
				playSound3D ["CG_Jobs\sounds\woodchop\woodchop5.ogg", player, false, getPosasl (trees select 0), 31, 1, 15];
			};
			default {
				playSound3D ["CG_Jobs\sounds\woodchop\woodchop1.ogg", player, false, getPosasl (trees select 0), 31, 1, 15];
			};		 				 				 		
		};	

		 _treeCutChance = round(random 5);
		 if(_treeCutChance > 4) then {
		 	[] spawn {
			 	_sound = round(random 2);
			 	switch(_sound) do {
			 		case 0: {
			 			playSound3D ["CG_Jobs\sounds\treefall\treefall1.ogg", player, false, getPosasl (trees select 0), 21, 1, 15];
			 		};
			 		case 1: {
			 			playSound3D ["CG_Jobs\sounds\treefall\treefall2.ogg", player, false, getPosasl (trees select 0), 21, 1, 15];
			 		};
			 		default {
			 			playSound3D ["CG_Jobs\sounds\treefall\treefall1.ogg", player, false, getPosasl (trees select 0), 21, 1, 15];
			 		};	
			 	};		
			 	_tree = (trees select 0);
			 	sleep 3; 		
				_tree setdamage 1; sleep 2; [_tree,true] remoteExecCall ["hideobjectglobal",2]; 
				[] call fnc_packLogs;
		 	};
		};
	};	
};

fnc_refineWood = {
	if(vehSpawned distance player > 15) exitwith { hint "Dein Fahrzeug ist zu weit weg!"; }; 
	{ 
		if(_x distance vehspawned < 11) then {
			deletevehicle _x; 
			_sound = round(random 5);
			playSound3D ["CG_Jobs\sounds\sawing\saw.ogg", player, false, getPosAsl Player, 11, 1, 15];
			player additem "CG_Refined_Wood";	
			sleep 1.5;
			hint "Du verarbeitest dein Holz, warte einen Moment!"
		};
	} forEach attachedObjects vehspawned;
	hint "Du hast dein Holz verarbeitet!";  
	totalLogs = 0;
};

fnc_packLogs = {
	if(vehSpawned distance player > 15) exitwith { hint "Dein Fahrzeug ist zu weit weg!"; }; 
	if(totalLogs == 23) exitwith { hint "Fahrzeug ist voll!"; };
	mylog = createVehicle ["vvv_tronco", position player, [], 0, "NONE"];

	totalLogs = totalLogs + 1;

	if(totalLogs == 1) exitwith {
		mylog attachTo [vehspawned, [-1, -3.5, 1.3] ]; mylog setdir 90;
	};
	if(totalLogs == 2) exitwith {
		mylog attachTo [vehspawned, [-0.5, -3.5, 1.3] ]; mylog setdir 90;
	};
	if(totalLogs == 3) exitwith {	
		mylog attachTo [vehspawned, [0, -3.5, 1.3] ]; mylog setdir 90;
	};
	if(totalLogs == 4) exitwith {	
		mylog attachTo [vehspawned, [0.5, -3.5, 1.3] ]; mylog setdir 90;
	};
	if(totalLogs == 5) exitwith {
		mylog attachTo [vehspawned, [1, -3.5, 1.3] ];mylog setdir 90;
	};
	if(totalLogs == 6) exitwith {
		mylog attachTo [vehspawned, [-0.8, -3.5, 1.6] ]; mylog setdir 90;
	};
	if(totalLogs == 7) exitwith {
		mylog attachTo [vehspawned, [-0.3, -3.5, 1.6] ]; mylog setdir 90;
	};
	if(totalLogs == 8) exitwith {
		mylog attachTo [vehspawned, [0.3, -3.5, 1.6] ]; mylog setdir 90;
	};
	if(totalLogs == 9) exitwith {
		mylog attachTo [vehspawned, [0.8, -3.5, 1.6] ]; mylog setdir 90;
	};
	if(totalLogs == 10) exitwith {
		mylog attachTo [vehspawned, [-1, -3.5, 1.9] ]; mylog setdir 90;
	};
	if(totalLogs == 11) exitwith {
		mylog attachTo [vehspawned, [-0.5, -3.5, 1.9] ]; mylog setdir 90;
	};
	if(totalLogs == 12) exitwith {
		mylog attachTo [vehspawned, [0, -3.5, 1.9] ]; mylog setdir 90;
	};
	if(totalLogs == 13) exitwith {
		mylog attachTo [vehspawned, [0.5, -3.5, 1.9] ]; mylog setdir 90;
	};
	if(totalLogs == 14) exitwith {
		mylog attachTo [vehspawned, [1, -3.5, 1.9] ]; mylog setdir 90;
	};
	if(totalLogs == 15) exitwith {
		mylog attachTo [vehspawned, [-0.8, -3.5, 2.2] ]; mylog setdir 90;
	};
	if(totalLogs == 16) exitwith {
		mylog attachTo [vehspawned, [-0.3, -3.5, 2.2] ]; mylog setdir 90;
	};
	if(totalLogs == 17) exitwith {
		mylog attachTo [vehspawned, [0.3, -3.5, 2.2] ]; mylog setdir 90;
	};
	if(totalLogs == 18) exitwith {
		mylog attachTo [vehspawned, [0.8, -3.5, 2.2] ]; mylog setdir 90;
	};
	if(totalLogs == 19) exitwith {
		mylog attachTo [vehspawned, [-1, -3.5, 2.5] ]; mylog setdir 90;
	};
	if(totalLogs == 20) exitwith {
		mylog attachTo [vehspawned, [-0.5, -3.5, 2.5] ]; mylog setdir 90;
	};
	if(totalLogs == 21) exitwith {
		mylog attachTo [vehspawned, [0, -3.5, 2.5] ]; mylog setdir 90;
	};
	if(totalLogs == 22) exitwith {
		mylog attachTo [vehspawned, [0.5, -3.5, 2.5] ];mylog setdir 90;
	};
	if(totalLogs == 23) exitwith {
		mylog attachTo [vehspawned, [1, -3.5, 2.5] ]; mylog setdir 90;
	};
};


fnc_mineMetal = {

	 metals = nearestObjects [player, ["a3l_Bits_Rock_L_Iron","a3l_Bits_Rock_L_Coal","a3l_Bits_Rock_L_Diamond"], 5];     

	if(count metals > 0) then {   

	_vehicle = metals select 0;
	_sound = round(random 5);

		switch(_sound) do {
			case 0: {
				playSound3D ["CG_Jobs\sounds\mining\mine1.ogg", player, false, getPosasl (metals select 0), 31, 1, 15];
			};
			case 1: {
				playSound3D ["CG_Jobs\sounds\mining\mine2.ogg", player, false, getPosasl (metals select 0), 31, 1, 15];
			};
			case 2: {
				playSound3D ["CG_Jobs\sounds\mining\mine5.ogg", player, false, getPosasl (metals select 0), 31, 1, 15];
			};
			case 3: {
				playSound3D ["CG_Jobs\sounds\mining\mine2.ogg", player, false, getPosasl (metals select 0), 31, 1, 15];
			};
			case 4: {
				playSound3D ["CG_Jobs\sounds\mining\mine5.ogg", player, false, getPosasl (metals select 0), 31, 1, 15];
			};
			default {
				playSound3D ["CG_Jobs\sounds\mining\mine1.ogg", player, false, getPosasl (metals select 0), 31, 1, 15];
			};		 				 				 		
		};

		_cutChance = round(random 130);
		if(typeOf _vehicle isEqualTo "a3l_Bits_Rock_L_Coal" && _cutChance > 120) then {
			playSound3D ["CG_Jobs\sounds\mining\mineF2.ogg", player, false, getPosasl (metals select 0), 25, 1, 15];
			mybarrow = createVehicle ["land_wheelcart_f", [0,0,0], [], 0, "NONE"];
			mybarrow attachto [player, [0, 1.3, 0.5] ];
			myIron = createVehicle ["a3l_Bits_Rock_L_Coal", getpos player, [], 0, "NONE"];  
			myIron attachTo [myBarrow, [0, 0.8, 0.85] ]; 
		};
		if(typeOf _vehicle isEqualTo "a3l_Bits_Rock_L_Iron" && _cutChance > 80) then {
			playSound3D ["CG_Jobs\sounds\mining\mineF2.ogg", player, false, getPosasl (metals select 0), 25, 1, 15];
			mybarrow = createVehicle ["land_wheelcart_f", [0,0,0], [], 0, "NONE"];
			mybarrow attachto [player, [0, 1.3, 0.5] ];
			myIron = createVehicle ["a3l_Bits_Rock_L_Iron", getpos player, [], 0, "NONE"];  
			myIron attachTo [myBarrow, [0, 0.8, 0.85] ]; 
		};
		if(typeOf _vehicle isEqualTo "a3l_Bits_Rock_L_Diamond" && _cutChance > 1) then {
			playSound3D ["CG_Jobs\sounds\mining\mineF2.ogg", player, false, getPosasl (metals select 0), 25, 1, 15];
			mybarrow = createVehicle ["land_wheelcart_f", [0,0,0], [], 0, "NONE"];
			mybarrow attachto [player, [0, 1.3, 0.5] ];
			myIron = createVehicle ["a3l_Bits_Rock_L_Diamond", getpos player, [], 0, "NONE"];  
			myIron attachTo [myBarrow, [0, 0.8, 0.85] ]; 
		};

	};	
};


fnc_refineMetal1 = {
	totalLogs = 0;
	if(vehSpawned distance player > 15) exitwith { hint "Dein Fahrzeug ist zu weit weg!"; }; 
	{ 
		if(_x distance vehspawned < 11) then {
			deletevehicle _x; 
			_sound = round(random 5);
			playSound3D ["CG_Jobs\sounds\mining\mineF2.ogg", player, false, getPosasl player, 31, 1, 15];
			sleep 1.5;
			hint "Du verarbeitest dein Metallerz, warte einen Moment!";
			[] spawn fnc_packMetal2;
		};
	} forEach attachedObjects vehspawned;
};

fnc_refineMetal2 = {
	totalLogs = 0;
	if(vehSpawned distance player > 15) exitwith { hint "Dein Fahrzeug ist zu weit weg!"; }; 
	{ 
		if(_x distance vehspawned < 11) then {
			deletevehicle _x; 
			_sound = round(random 5);
			playSound3D ["CG_Jobs\sounds\mining\mineF2.ogg", player, false, getPosasl player, 31, 1, 15];
			sleep 1.5;
			hint "Du verarbeitest dein Metallerz, warte einen Moment!";
			player additem "cg_metalstack";
		};
	} forEach attachedObjects vehspawned;
	hint "Du hast dein Metallerz verarbeitet!";  
};

fnc_packMetal2 = {
	if(vehSpawned distance player > 15) exitwith { hint "Dein Fahrzeug ist zu weit weg!"; }; 
	if(totalLogs == 6) exitwith { hint "Fahrzeug ist voll!"; };
	mylog = createVehicle ["Land_Pipes_large_F", position player, [], 0, "NONE"];

	totalLogs = totalLogs + 1;

	if(totalLogs == 1) exitwith {
		mylog attachTo [vehspawned, [-0.6, -3.8, 1.1] ]; mylog setdir 90;
	};
	if(totalLogs == 2) exitwith {
		mylog attachTo [vehspawned, [0.6, -3.8, 1.1] ]; mylog setdir 90;
	};
	if(totalLogs == 3) exitwith {	
		mylog attachTo [vehspawned, [-0.6, -3.8, 1.7] ]; mylog setdir 90;
	};
	if(totalLogs == 4) exitwith {	
		mylog attachTo [vehspawned, [0.6, -3.8, 1.7] ]; mylog setdir 90;
	};
	if(totalLogs == 5) exitwith {
		mylog attachTo [vehspawned, [-0.6, -3.8, 2.3] ];mylog setdir 90;
	};
	if(totalLogs == 6) exitwith {
		mylog attachTo [vehspawned, [0.6, -3.8, 2.3] ]; mylog setdir 90;
	};
};



fnc_packMetal1 = {
	if(vehSpawned distance player > 15) exitwith { hint "Dein Fahrzeug ist zu weit weg!"; }; 
	if(totalLogs == 6) exitwith { hint "Fahrzeug ist voll!"; };
	mylog = createVehicle ["a3l_Bits_Rock_L_Iron", position player, [], 0, "NONE"];

	totalLogs = totalLogs + 1;

	if(totalLogs == 1) exitwith {
		mylog attachTo [vehspawned, [-0.6, -3.8, 1.7] ]; mylog setdir 90;
	};
	if(totalLogs == 2) exitwith {
		mylog attachTo [vehspawned, [0.6, -3.8, 1.7] ]; mylog setdir 90;
	};
	if(totalLogs == 3) exitwith {	
		mylog attachTo [vehspawned, [-0.6, -2.8, 1.7] ]; mylog setdir 90;
	};
	if(totalLogs == 4) exitwith {	
		mylog attachTo [vehspawned, [0.6, -2.8, 1.7] ]; mylog setdir 90;
	};
	if(totalLogs == 5) exitwith {
		mylog attachTo [vehspawned, [-0.6, -1.8, 1.7] ];mylog setdir 90;
	};
	if(totalLogs == 6) exitwith {
		mylog attachTo [vehspawned, [0.6, -1.8, 1.7] ]; mylog setdir 90;
	};
};



fnc_trucking = {

	towvehiclelist = ["IVORY_PRIUS","ivory_gt500","ivory_wrx","ivory_lp560","IVORY_R8","IVORY_R8SPYDER","IVORY_REV","ivory_lfa","ivory_c"];


	while{trucking} do {

		["Ein LKW Lieferort wird in Kürze angezeigt!", false] spawn domsg; 
		_jail = false;

	    chosen = ["Truck_Stop_1","Truck_Stop_2","Truck_Stop_3","Truck_Stop_4","Truck_Stop_5","Truck_Stop_6","Truck_Stop_7","Truck_Stop_8","Truck_Stop_9","Truck_Stop_10"] call BIS_fnc_selectRandom;
	    chosen2 = chosen;
	    chosen = (getmarkerpos chosen);
		_distance = player distance chosen;
		_distance = floor (_distance / 1000);

		if(_distance < 1) then { _distance = 1; };
		if(_distance > 8) then { _distance = 8; };	
		_success = false;
		_calcT = 0;
		while {trucking} do {
			_calcT = _calcT + 1;

			if(player distance chosen < 10) exitwith {
				_success = true;
			};
			if(_calcT > 1200) exitwith {};
			uisleep 1;
			hint parsetext format["<img size='1' image='icons\info.paa'/> <t color='#FFCC00'><t size='0.75'>JOB:</t><br/> Du hast %1 von 1200 Sekunden gebraucht. <br/> Deine Job Markierung ist %2",_calcT,chosen2];
		};
		["Du bist fast am Ziel, halte an, spring raus und koppel deinen Anhänger ab!", false] spawn domsg; 
		sleep 3;
		_goodT = _distance * 20;
		_goodT = _goodT - _calcT;
		_payment = _goodT * 50;
		if(_payment < 2300) then { _payment = 2300; };
		if(_payment > 8220) then { _payment = 8220; };
		_groundPhase = 0;
		while {trucking} do {
			if(!_success) exitwith {};
			_groundPhase = _groundPhase + 1;

			if(!_success) exitwith { ["Mission fehlgeschlagen, bleibe in deinem Fahrzeug bis du dich nah genug am Ziel befindest!", false] spawn domsg; };

			if(vehicle player isEqualTo player && _success && player distance chosen < 35 && (vehspawned distance player < 30) ) exitwith {
				["Add",25] call fnc_karma;
				["bank","add", _payment] call life_fnc_handleCash;
			    [format["Du wurdest für deinen Auftrag bezahlt: $%1!",_payment], false] spawn domsg;
			};

			if(_groundPhase > 600) exitwith { ["Du hast zu lang gebraucht um deinen Anhänger anzukoppeln!", false] spawn domsg;  };
			uisleep 0.1;
		};

		_remaining = 150 - _calcT;
		if(_remaining < 30) then {
			_remaining = 30;
		};
		while {_remaining > 0 && trucking} do {
			hint parsetext format["<img size='1' image='icons\info.paa'/> <t color='#FFCC00'><t size='0.75'>JOB:</t><br/> Du wirst in %1 Sekunden ein neuen Job bekommen!",_remaining];
			uisleep 1;
			_remaining = _remaining - 1;
		};
	};

	_remaining = 60;

	while {_remaining > 0 && trucking} do {
		hint parsetext format["<img size='1' image='icons\info.paa'/> <t color='#FFCC00'><t size='0.75'>JOB:</t><br/> Dein Fahrzeug wird in %1 Sekunden verschwinden!",_remaining];
		uisleep 1;
		_remaining = _remaining - 1;
	};

	player allowdamage false;
	sleep 1;
	player setpos (getMarkerPos "Truck_Jobs");
	["Deine Lieferung ist abgeschlossen!", false] spawn domsg;
	player allowdamage true;
};








fnc_startGarbage = {

	private["_oldBinDir","_oldBinPos"];

	_nearBin = nearestObjects[getPos player,["Land_Dumpster_DED_Dumpster_01_F"],6];
	_isBin = count _nearBin;

	if(_isBin > 0) then {

		_isBinSelected = _nearBin select 0;
		_oldBinPos = getpos _isBinSelected;
		_oldBinDir = getdir _isBinSelected;
		deletevehicle _isBinSelected;
		_veh = vehicle player;

		if(_veh == player) exitwith {};
			
		_veh setfuel 0;
		_veh animate ['contenedor_unhide',1];
		_veh animate ['contenedor',1];
		_veh animate ['tapacontenedor',1];
		sleep 3;
		_veh animate ['contenedor',0];
		_veh animate ['tapacontenedor',0];
		sleep 3;
		_veh animate ['contenedor_unhide',0];
		sleep 3;
		_veh animate ['pala',0];
		_veh animate ['hidraulicos',0];
		_veh animate ['hidraulicos2',0];
		sleep 1;
		_veh animate ['porton',1];
		_veh animate ['basura_unhide',1];
		[_veh, "Hidraulics",100] call CBA_fnc_globalSay3d;
		sleep 7;
		_veh animate ['pala',1];
		_veh animate ['hidraulicos',1];
		_veh animate ['hidraulicos2',1];
		sleep 2;
		[_veh, "Hidraulics",100] call CBA_fnc_globalSay3d;
		_veh animate ['porton',0];
		sleep 7;
		_veh animate ['pala',1];
		_veh animate ['hidraulicos',1];
		_veh animate ['hidraulicos2',1];
		sleep 1;
		_veh animate ['basura_unhide',0];
		_veh setfuel 1;
		sleep 5;
		_newBin = createVehicle ["Land_Dumpster_DED_Dumpster_01_F", _oldBinPos, [], 0, "NONE"];
		_newBin setdir _oldBinDir;

		} else {

		hint "Es befindet sich sein Müll in deiner Nähe!";	

	};

};










fnc_maintstart = {
	if(side player == west) exitwith {};
	player forceAddUniform "TRYK_HRP_USMC";
	_success = true;

	if(farm) then {
		airvehspawned = createVehicle ["ivory_tractor", position player, [], 0, "NONE"];
		[airvehspawned] spawn life_fnc_clearVehicleAmmo;
		oiljobs = [(getpos wheat1),(getpos wheat2),(getpos wheat3),(getpos wheat4),(getpos wheat5),(getpos wheat6),(getpos wheat7),(getpos wheat8),(getpos wheat9),(getpos wheat10),(getpos wheat11),(getpos wheat12),(getpos wheat13),(getpos wheat14),(getpos wheat15),(getpos wheat16),(getpos wheat17)];
		bullshit_story = [
		"Go cut down the wheat in this area!",
		"Spray pesticide on the marker!",
		"Some tools need to be delivered to a work spot! Check your map!",
		"Drop off some food supplies for animals!",
		"Someone reported a fire on our farm? Surely its a joke, check please!",
		"We heard our crops have pests, check it out please!",
		"We have reports of chemical spillage at the marked location, can you check please?"
		];	
	};
	if (oil) then {
		airvehspawned = createVehicle ["ivory_b206", position player, [], 0, "NONE"];
		[airvehspawned] spawn life_fnc_clearVehicleAmmo;
		oiljobs = [(getpos oilrig1),(getpos oilrig2),(getpos oilrig3)];
		bullshit_story = [
		"A marker has been put down where medical supplies need to be delivered!",
		"Some tools need to be delivered to a work spot! Check your map!",
		"Drop off some food supplies for workers, ASAP please!",
		"Some papers need signing off, take these to the marked location!",
		"We need you to check out workers at this location!",
		"We have reports of oil leakage at the marked location, can you check please?"
		];
	};



	player action ["getInDriver", airvehspawned];
	while{maintenance_on && _success} do {

		if(player distance airvehspawned > 500 || deadPlayer) exitwith {};
		chosen = oiljobs call BIS_fnc_selectRandom;
		[bullshit_story call BIS_fnc_selectRandom, false] spawn domsg; 
		playSound "ringing";
		markerf = createMarkerLocal ["themarker",chosen];
		markerf setMarkerColorLocal "ColorRed";
		markerf setMarkerTypeLocal "Mil_dot";
		markerf setMarkerTextLocal "*** Next Job ***";

		["Maintenance",chosen] spawn fnc_draw3d;

		_distance = player distance chosen;
		_distance = floor (_distance / 1000);

		if(_distance < 1) then { _distance = 1; };
		if(_distance > 8) then { _distance = 8; };	

		_calcT = 0;
		while {maintenance_on} do {
			if(player distance airvehspawned > 500 || deadPlayer) exitwith {};
			_calcT = _calcT + 1;
			markerf setMarkerPosLocal (chosen);

			if(player distance chosen < 100 && oil ) exitwith {
				_success = true;
				["Du bist nah, lande sicher und beende deinen Auftrag!", false] spawn domsg; 
			};
			if(player distance chosen < 5 && farm && typeOf(vehicle player) == "ivory_tractor") exitwith {
				_success = true;
				["Nähr an die Markierung um den Auftrag zu beenden!", false] spawn domsg; 
			};

			if(_calcT > 360) exitwith { _success = false; ["Du hast deinen Auftrag nicht abgeschlossen!", false] spawn domsg;  };
			uisleep 1;
			hint parsetext format["<img size='1' image='icons\info.paa'/> <t color='#FFCC00'><t size='0.75'>JOB:</t><br/> Du hast %1 Sekunden gebraucht.",_calcT];
		};
		hint "";
		sleep 1;

		_goodT = _distance * 7;
		_goodT = _goodT - _calcT;
		_payment = _goodT * 50;



		if(farm) then {
			 _payment = 110;
		};
		if (oil) then {
			if(_payment < 300) then { _payment = 300; };
			if(_payment > 450) then { _payment = 450; };
		};
		_groundPhase = 0;
		while {maintenance_on} do {
			if(player distance airvehspawned > 500 || deadPlayer) exitwith {};
			if(!_success) exitwith {};
			_groundPhase = _groundPhase + 1;
			markerf setMarkerPosLocal (chosen);

			if(!_success) exitwith { ["Mission fehlgeschlagen, bleibe in deinem Fahrzeug bis du dich nah genug am Ziel befindest!", false] spawn domsg; };
			if(vehicle player == player && player distance chosen < 55 && oil) exitwith {
				player playmove "AmovPercMrunSnonWnonDf_AmovPercMstpSnonWnonDnon_gthEnd"; 
				["bank","add", _payment] call life_fnc_handleCash;
				[format["Du wurdest für deine Hilfe bezahlt: $%1!",_payment], false] spawn domsg;
				["Add",1] call fnc_karma;
			};
			if(player distance chosen < 3 && farm && typeOf(vehicle player) == "ivory_tractor") exitwith {
				["bank","add", _payment] call life_fnc_handleCash;
				[format["Du wurdest für deine Hilfe bezahlt: $%1!",_payment], false] spawn domsg;
				["Add",1] call fnc_karma;
			};	
			if(_groundPhase > 60) exitwith { ["Du warst zu langsam!", false] spawn domsg;  };
			uisleep 1;
		};

		deleteMarkerLocal "themarker";

		_remaining = 5;

		while {_remaining > 0 && maintenance_on} do {
			if(player distance airvehspawned > 500) exitwith {};
			hint parsetext format["<img size='1' image='icons\info.paa'/> <t color='#FFCC00'><t size='0.75'>JOB:</t><br/> Du wirst in %1 Sekunden einen neuen Auftrag erhalten.",_remaining];
			uisleep 1;
			_remaining = _remaining - 1;
		};
		if(!_success) exitwith { maintenance_on = false; };
	};


	_remaining = 60;

	while {_remaining > 0} do {
		hint parsetext format["<img size='1' image='icons\info.paa'/> <t color='#FFCC00'><t size='0.75'>JOB:</t><br/> Dein Fahrzeug wird in %1 Sekunden verschwinden!",_remaining];
		uisleep 1;
		_remaining = _remaining - 1;
	};

	maintenance_on = false;
	player allowdamage false;
	sleep 0.05;
	_newpos = getpos airvehspawned;
	airvehspawned setVelocity [0, 0, 0];
	deletevehicle airvehspawned;
	player setpos [_newpos select 0, _newpos select 1, 0];
	sleep 0.05;
	player allowdamage true;
	["Du wurdest entlassen!", false] spawn domsg;
};


fnc_fedex = {

	while{fedex_on} do {

		["Ein neuer Job wird in Kürze erscheinen - Bleibe in deinem Fahrzeug bis eine Person sich nähert!", false] spawn domsg; 
		sleep 3;
		_jail = false;
		while {fedex_on} do
		{
		    chosen = playableUnits call BIS_fnc_selectRandom;
		    if ((isPlayer chosen) && (side chosen == civilian) && (chosen != player)) exitWith {};
		    sleep 1;
		    playSound "ringing";
		};
		markerf = createMarkerLocal ["themarker",visiblePosition chosen];
		markerf setMarkerColorLocal "ColorRed";
		markerf setMarkerTypeLocal "Mil_dot";
		markerf setMarkerTextLocal format["%1", chosen getVariable["realname",name chosen]];
		_distance = player distance chosen;
		_distance = floor (_distance / 1000);
		if( uniform chosen isEqualTo "A3L_Prisoner_Outfit" && (chosen distance (getMarkerPos "shank_1")) < 200 ) then {
			["Der Spieler befindet sich im Gefängnis, gehe nah an die Wände um das Packet abzuliefern.", false] spawn domsg; 
		};
		if(_distance < 1) then { _distance = 1; };
		if(_distance > 8) then { _distance = 8; };	
		_success = false;
		_calcT = 0;
		while {fedex_on} do {
			_calcT = _calcT + 1;
			markerf setMarkerPosLocal (visiblePosition chosen);
			if( uniform chosen isEqualTo "A3L_Prisoner_Outfit" && (chosen distance (getMarkerPos "shank_1")) < 20 && player distance chosen < 200 ) exitwith {
				_success = true;
				_jail = true;
			};
			if(player distance chosen < 10) exitwith {
				_success = true;
			};
			if ((!isPlayer chosen) && (side chosen != civilian)) exitWith {};
			if((chosen getVariable["dead",FALSE])) exitwith {};
			if(_calcT > 480) exitwith {};
			uisleep 1;
			hint parsetext format["<img size='1' image='icons\info.paa'/> <t color='#FFCC00'><t size='0.75'>JOB:</t><br/> Du hast %1 Sekunden gebraucht.",_calcT];
		};
		["Du bist fast am Ziel, steige aus und beende deinen Auftrag!", false] spawn domsg; 
		sleep 3;
		_goodT = _distance * 7;
		_goodT = _goodT - _calcT;
		_payment = _goodT * 50;
		if(_payment < 600) then { _payment = 600; };
		if(_payment > 2220) then { _payment = 2220; };
		_groundPhase = 0;
		while {fedex_on} do {
			if(!_success) exitwith {};
			_groundPhase = _groundPhase + 1;
			markerf setMarkerPosLocal (visiblePosition chosen);
			if( _jail && vehicle player isEqualTo player && player distance chosen < 50 ) exitwith { 
				"jail" remoteExecCall ["fnc_delivery",chosen];
				["bank","add", _payment] call life_fnc_handleCash;
				_msg = format["You just got paid %1 your delivery!",_payment];
				[_msg, false] spawn domsg; 
			 };
			if(!_success) exitwith { ["Mission fehlgeschlagen, bleibe in deinem Fahrzeug bis du dich nah genug am Ziel befindest!", false] spawn domsg; };
			if(vehicle player isEqualTo player && _success && player distance chosen < 15 && vehicle chosen isEqualTo chosen) exitwith {
				player playmove "AmovPercMrunSnonWnonDf_AmovPercMstpSnonWnonDnon_gthEnd"; 
				["bank","add", _payment] call life_fnc_handleCash;
				_msg = format["Du wurdest für deinen Auftrag bezahlt: $%1!",_payment];
				[_msg, false] spawn domsg;
				if(typeOf(vehicle player) isEqualTo "critgamin_vangmcc_fedex") then {
					"standard" remoteExecCall ["fnc_delivery",chosen];
					["Add",1] call fnc_karma;
				};
				if(typeOf(vehicle player) isEqualTo "critgamin_vangmcc_pizza") then {
					"fastfood" remoteExecCall ["fnc_delivery",chosen];
					["Add",1] call fnc_karma;
				};
				if(typeOf(vehicle player) isEqualTo "critgamin_vangmcc_fixit") then {
					"fixit" remoteExecCall ["fnc_delivery",chosen];
					["Add",1] call fnc_karma;
				};
				//function for target unit to get a random gift on delivery.
			};
			if(_groundPhase > 60) exitwith { ["Du hast zu lang gebraucht!", false] spawn domsg;  };
			uisleep 1;
		};

		deleteMarkerLocal "themarker";

		_remaining = 150 - _calcT;
		if(_remaining < 30) then {
			_remaining = 30;
		};
		while {_remaining > 0} do {
			hint parsetext format["<img size='1' image='icons\info.paa'/> <t color='#FFCC00'><t size='0.75'>JOB:</t><br/> Du wirst einen neuen Job in %1 Sekunden bekommen.",_remaining];
			uisleep 1;
			_remaining = _remaining - 1;
		};
	};
	_remaining = 60;

	while {_remaining > 0} do {
		hint parsetext format["<img size='1' image='icons\info.paa'/> <t color='#FFCC00'><t size='0.75'>JOB:</t><br/> Dein Fahrzeug wird in %1 Sekunden verschwinden!",_remaining];
		uisleep 1;
		_remaining = _remaining - 1;
	};
	player allowdamage false;
	sleep 1;
	player setpos (getMarkerPos "job_spawn_1");
	["Dein Auftrag ist abgeschlossen!", false] spawn domsg;
	player allowdamage true;
};




	fnc_trytaxi = {

		if(life_taxi) exitwith { ["Bist du ein Taxi-Fahrer?", false] spawn domsg; };
		if(checked_taxi) exitwith { ["Du hast ein Taxi gerufen, warte hier!", false] spawn domsg; };
		checked_taxi = true;
		player remoteExec ["fnc_taxi",civilian];
		["Du hast ein Taxi gerufen, warte hier!", false] spawn domsg;
		sleep 300;
		checked_taxi = false;
	};

	fnc_taxi = {
		if(!life_taxi) exitwith {};
		_unit = _this;

		_dMarker = createMarkerLocal [format["%1_marker",_unit],visiblePosition _unit];
		_dMarker setMarkerTypeLocal "hd_warning";
		_dMarker setMarkerTextLocal format["Taxi Call: %1", _unit getVariable["realname",name _unit]];
		_dMarker setMarkerColorLocal "ColorWhite";
		playSound "ringing";
		["Jemand hat ein Taxi bestellt, schaue auf deine Karte!"] spawn domsg;
		_skip = false;
		_somecounter = 1;
		while{true} do {
			if(typeOf(vehicle player) != "CG_Taxi") exitwith { _skip = true; ["Du hast einen Anruf verpasst!"] spawn domsg;  };
			if (player distance _unit < 10) exitwith { ["Du befindest dich an Ziel, warte, bis dein Passagier einsteigt!"] spawn domsg; };

			if (vehicle _unit != _unit) exitwith { 
				_skip = true;
				if (player distance _unit < 500) then {
					["Du wurdest dafür bezahlt, dass du zu deinem Ziel gefahren bist!"] spawn domsg;
					["Es scheint, als sei der Passagier bereits abgeholt worden zu sein. +$1000"] spawn domsg;
					["cash","add",1000] call life_fnc_handleCash;
				};
			};
			if(!life_taxi) exitwith {};
			if(_somecounter > 600) exitwith {};
			_dMarker setMarkerPosLocal (visiblePosition _unit);
			_somecounter = _somecounter + 1;
			sleep 1;
		};
		theirTotal = _somecounter * 5;
		_somecounter = 1;
		while{true} do {
			if(_skip || !life_taxi) exitwith {};

			_dMarker setMarkerPosLocal (visiblePosition _unit);
			if(vehicle _unit != _unit) exitwith {
				_crew = crew (vehicle player);
				{
					if(_x == _unit) then
					{
						["cash","add",theirTotal] call life_fnc_handleCash;
						[format["Eine Person in deinem Fahrzeug hat ein Taxi bestellt - Du wurdest bezahlt: $%1 !",theirTotal], false] spawn domsg; 
						life_taxi = false;
					};
				} foreach _crew;
			};
			if(_somecounter > 25) exitwith {};
			sleep 1;
			_somecounter = _somecounter + 1;
		};
		deleteMarkerLocal format["%1_marker",_unit];
	};


	fnc_Pull_ID =
	{
		_cop = _this;

		[format["Deine ID wurd von %1 überprüft.",name _cop], false] spawn domsg;		
		
		disableUserInput true;
		safe_licenses = ["license_civ_driver", "license_civ_air", "license_civ_boat", "license_civ_dive", "license_civ_truck", "license_civ_gun", "license_civ_rifle"];

		_licenses = "";

		{
			if(missionNamespace getVariable (_x select 0) && _x select 1 == "civ" && _x select 0 IN safe_licenses) then
			{
				_licenses = _licenses + ([_x select 0] call life_fnc_varToStr) + " | ";
			};
		} foreach life_licenses;

		[_licenses,life_houses] remoteExecCall ["fnc_give_ID",_cop];
		sleep 10;

		disableUserInput false;
	};

	fnc_give_ID =
	{
		if(count target_houses > 0) then {
			[] call fnc_del_houses;
		};
		target_licenses = _this select 0;
		target_houses = _this select 1;
		_n = 0;
		if(count target_houses > 0) then {

			{
				_pos = call compile format["%1",_x select 0];
				_house = nearestBuilding _pos;
				_houseName = getText(configFile >> "CfgVehicles" >> (typeOf _house) >> "displayName");
				_marker = createMarkerLocal [format["house_%1",_n],_pos];
				_marker setMarkerTextLocal _houseName;
				_marker setMarkerColorLocal "ColorRed";
				_marker setMarkerTypeLocal "loc_Lighthouse";
				_n = _n + 1;
			} foreach target_houses;

			["Das Haus des Spielers wurde auf der Karte markiert!", false] spawn domsg;

		};
		life_gather_info = true;
	};




fnc_virt_dupe = {
	private["_theveh","_unitveh","_myveh","_side","_radius","_nearestunits","_nearestunitofside","_unit"];
	_curtarget = cursortarget;
	life_action_inuse = true;
	//set variable to server pending on object
	if(vehicle player != player) then { _curtarget = vehicle player; } else { _curTarget = cursortarget; };
	_uid = getplayerUID player;
	_curTarget setVariable["vehopen",_uid,true];
	//run check for same variable for 2 seconds
	_penis = 8;
	while{_penis > 0} do
	{
		_check = _curTarget getVariable "vehopen";
		if(_check != _uid) exitwith { closedialog 0; life_action_inuse = false;	 ["Inventar wurde auf Grund Dupe-Protection geschlossen!", false] spawn domsg;};
		sleep 0.25;
		_penis = _penis - 1;
	};
	life_action_inuse = false;	
	//clear variable and end.
	_curTarget setVariable["vehopen",0,true];
};



fnc_item_CG = {
    _idc = ctrlIDC (_this select 0);          
	_selectedIndex = _this select 1;         
    _unit = player;
	_item = lbData [_idc, _selectedIndex];
		
	if (_item == "CG_Spikes_Collapsed") then { [true] spawn fnc_spikeStrip_cg; [_item] spawn fnc_removeitem; closeDialog 0; };
	if (_item == "CG_battery_i") then { life_battery = 200; [_item] spawn fnc_removeitem; playSound3D ["cg_sndimg\sounds\phoneSMS.ogg", player, false, getPosASL player, 1, 1, 25]; closeDialog 0; };
	if (_item == "CG_ATF_Pizza_Box_i") then { [true] spawn life_fnc_pizza; [_item] spawn fnc_removeitem; closeDialog 0; };
	if (_item == "CG_ATF_Donut_Box_i") then { [true] spawn life_fnc_bronutsbrah; [_item] spawn fnc_removeitem; closeDialog 0; };
	if (_item == "CG_ATF_Handcuffs_i") then { ["Du kannst mit diesen andere Personen festnehmen!", false] spawn domsg; closeDialog 0; };
	if (_item == "CG_Pro_Item_i") then { [] spawn fnc_GoPro; closeDialog 0; };
	if (_item == "CG_ATF_Drug_Bottle_01_i") then { [_item] spawn fnc_removeitem; player forceWalk false; [player,"pillswallow"] spawn life_fnc_nearestSound; player setVariable["severeInjuries", nil, true]; closeDialog 0; };
	false
};








