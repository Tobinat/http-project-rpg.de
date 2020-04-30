//handle keys

params ["_ctrl", "_code", "_shift", "_ctrlKey", "_alt", ["_handled", false, [false]], "_veh", "_locked", "_interactionKey", "_mapKey", ["_interruptionKeys", [17,30,31,32]]];

_interactionKey = if (count (actionKeys "User10") isEqualTo 0) then {219} else {(actionKeys "User10") select 0};

switch (_code) do
{


	//Leertaste
	case 57:
	{
		if(!ClientInterrupted) then {
			ClientInterrupted = true;
		};

		[] spawn {

			uisleep 1.1;

			if(clientInterrupted) then {
				ClientInterrupted = false;
			};

		};

	};
	
	//Bild Hoch   Schranke öffnen 
	case 201:	
	{
		if (!_shift && !_alt && !_ctrlKey && (myJob == "EMS" || myJob == "Cop")) then {[] call client_fnc_copOpener;};
	};

	//Bild Runter
	case 209:	
	{
		if (!_shift && !_alt && !_ctrlKey && (myJob == "EMS" || myJob == "Cop")) then {
			{
				detach _x;
			} forEach attachedObjects player;
		};
	};

	//R Key
	case 19:
	{
		if(_shift && (driver (vehicle player) isEqualTo player) && (vehicle player) != player) then {
		[] spawn client_fnc_itemNOS;
		};
	};

	//U Key
	case 22:
	{
		if( (cursorobject iskindof "Car" || cursorobject iskindof "Ship" || cursorobject iskindof "Air") || vehicle player != player ) then {
			_veh = cursorobject;
			if(vehicle player != player) then { _veh = vehicle player; };
			_locked = locked _veh;
			if(_veh in current_cars && player distance _veh < 8) then {

				if(_veh getVariable ["parkingTicket2", false]) then {
					_veh setVariable["parkingTicket2",false,true];
					["Du hast einen Strafzettel über 500$ fürs Falschparken!", false] spawn domsg;
					[500] call Client_fnc_sl_removeBank_secure;
				};
				if(_veh getVariable ["parkingTicket", false]) then {
					_veh setVariable["parkingTicket",false,true];
					["Du hast einen Strafzettel über 250$ fürs Falschparken!", false] spawn domsg;
					[250] call Client_fnc_sl_removeBank_secure;
				};
				
				if(_locked == 2) then {

					if(local _veh) then {
						_veh lock 0;
					} else {
						[_veh,0] remoteExecCall ["client_fnc_lock",_veh];
					};
					["Fahrzeug aufgeschlossen", false] spawn doquickmsg;

					playSound3D ["prpg_data\sounds\lockunlock.ogg", player, false, getPosASL player, 3, 1.1, 25];

				} else {

					if(local _veh) then {
						_veh lock 2;
					} else {
						[_veh,2] remoteExecCall ["client_fnc_lock",_veh];
					};

					["Fahrzeug abgeschlossen", false] spawn doquickmsg; 

					playSound3D ["prpg_data\sounds\lockunlock.ogg", player, false, getPosASL player, 3, 1.1, 25];
				};
			};
		};
	};

	// Q Key
	case 16:
	{
		if(myJob == "Cop" && typeof vehicle player IN ["VVV_dodge_charger_sheriff","VVV_dodge_charger_normal","VVV_dodge_charger_swat"]) then
		{
			[2] spawn client_fnc_rotateLight;
		};

		if( (myJob == "EMS" || myJob == "Fire") && typeof vehicle player == "C_hh60j_unarmed_F" && driver (vehicle player) != player ) then
		{
			[] spawn client_fnc_raisebasket;
		};
	};
	// E Key
	case 18:
	{
		if(myJob == "Cop" && typeof vehicle player IN ["VVV_dodge_charger_sheriff","VVV_dodge_charger_normal","VVV_dodge_charger_swat"]) then
		{
			[1] spawn client_fnc_rotateLight;
		};
		if( (myJob == "EMS" || myJob == "Fire") && typeof vehicle player == "C_hh60j_unarmed_F" && driver (vehicle player) != player ) then
		{
			[] spawn client_fnc_lowerbasket;
		};
	};

	//Map Key
	case 50:
	{
		if(myJob == "EMS" || myJob == "Fire") then
		{
			[] spawn client_fnc_mapMarkers;
		} else {
			if(myJob == "Cop") then
			{
				[] spawn client_fnc_copmapMarkers;
			} else {
				[] spawn client_fnc_playermapMarkers;
			};
		};


	};
	// 2 Key
	case 3:
	{
		if(isNil "LoggedIn") then { LoggedIn = false; };
		if(LoggedIN) then { _relpos = player getRelPos [10, 0]; player setpos _relpos; };
	};


	isClass (ConfigFile >> "CfgVehicles" >> "ivory_wrx_2");
	// W Key
	case 17:
	{
	    if(!currentlyUpdating) then {
	        if(vehicle player != player && str(typeof (vehicle player)) find "_2" > -1 ) then {
	            currentlyUpdating = true;
	            Gearphase = (vehicle player) animationSourcePhase "gear";
	            [] spawn {

	                while{currentlyUpdating} do {
	                    _phase = vehicle player animationSourcePhase "RPM";
	                    if(_phase > 2000) then {
	                       vehiclePressure = vehiclePressure + 0.2;
	                       _gearphase = vehicle player animationSourcePhase "gear";
	                        if(_gearphase > gearphase && vehiclePressure > 3) then {
		                        playSound3D ["CG_turbo\sounds\turbo1.ogg", vehicle player, false, getPosasl (vehicle player), 1, 1, 21];
	                            Gearphase = (vehicle player) animationSourcePhase "gear";
	      						if(vehicle player != player && str(typeof (vehicle player)) find "vory" > -1 ) then {
		                            vehicle player animate["backfire", 1];
		                            uisleep 0.1;
		                            vehicle player animate["backfire", 0];
						        };
	                            vehiclePressure = 0;
	                            currenltyUpdating = false;
	                        };
	                    };
	                    if(vehicle player == player) exitwith {};
	                    sleep 0.05;
	                };

	            	Gearphase = (vehicle player) animationSourcePhase "gear";
	            	vehiclePressure = 0;
	                currenltyUpdating = false;
	            };
		 	};
        };
    };
	// 1 Key
	case 2:
	{


		if (_ctrlKey && myjob == "Cop") then {
			if(handgunweapon player == "DDOPP_X26") then {
				_weapon = handgunweapon player;
				player removeweapon _weapon; player additemtobackpack _weapon;
				[] spawn {

					if("RH_m9" in backpackItems Player) then {
						player action ["SwitchWeapon", player, player, 100]; uisleep 0.75; player removeitem "RH_m9"; player addweapon "RH_m9"; player selectweapon "RH_m9"; player addItemToBackPack "DDOPP_1Rnd_X26";
						444 cutRsc ["HUDguncop","PLAIN"];
					} else {
						["ERROR: Keine M9 im Rucksack!", false] spawn domsg;
					};

				};
			} else {
				_weapon = handgunweapon player;
				player removeweapon _weapon; player additemtobackpack _weapon;
				[] spawn {

					if("DDOPP_X26" in backpackItems Player) then {
						player action ["SwitchWeapon", player, player, 100]; uisleep 0.75; player removeitem "DDOPP_X26"; player addweapon "DDOPP_X26"; player selectweapon "DDOPP_X26"; player addItemToBackpack "RH_15Rnd_9x19_M9";
						444 cutRsc ["HUDtasercop","PLAIN"];
					} else {
						["ERROR: Kein Taser im Rucksack!", false] spawn domsg;
					};

				};
			};
			_handle = true;
		};
	};
	// Windows Key
	case _interactionKey:
	{
		_spikeStrips = (nearestObjects[getPos player,["CG_Spikes_Extended"],3]) select 0;
		if !(_spikeStrips isEqualTo [] && !spikeAntiSpam) then {
				[] spawn {
					spikeAntiSpam = true;
					sleep 1;
					spikeAntispam = false;
				};
				deletevehicle _spikeStrips;
				["SpikeStrips erhalten.", false] spawn domsg;
				player additem "CG_Spikes_Collapsed";
		};

		if(mouseMovement == 1) exitwith { mouseMovement = 3; _handle = true; };
		if(!busyPlayer) then {
			[] call Client_fnc_openInteraction;
			[] spawn client_fnc_keyBusyPlayer;
			_handle = true;
		};
	};

	/* case 25:
	{
	    if(_shift && !_alt && !_ctrlKey && !busyPlayer) then
	    {
	 		[] spawn client_fnc_keyBusyPlayer;
			if (!client_fadeSound) then
			{
				1 fadeSound 0.1;
				["Die Lautstärke wurde gesenkt.", false] spawn domsg;
				client_fadesound = true;
			}
			else
			{
				1 fadeSound 1;
				["Die Lautstärke ist wieder normal.", false] spawn domsg;
				client_fadesound = false;
			};
	        _handle = true;
	    };
	}; */

	// 5 Key
	case 6:
	{

		if (_shift) then { _handle = true; };
		if (_shift) then
			{
			_spikeStrips = (nearestObjects[getPos player,["CG_Spikes_Extended"],3]) select 0;
			if !(_spikeStrips isEqualTo [] && !spikeAntiSpam) then {
					[] spawn {
						spikeAntiSpam = true;
						sleep 1;
						spikeAntispam = false;
					};
					deletevehicle _spikeStrips;
					["SpikeStrips gelegt", false] spawn domsg;
					player additem "CG_Spikes_Collapsed";
			};

			if(mouseMovement == 1) exitwith { mouseMovement = 3; _handle = true; };
			if(!busyPlayer) then {
				[] call Client_fnc_openInteraction;
				[] spawn client_fnc_keyBusyPlayer;
				_handle = true;
			};
		};
	};
	// 6 Key
	case 7:
	{
		/*
		if (_shift) then { _handle = true; };
		if (_shift) then
		{
			if (isNull objectParent player && !busyPlayer && (animationState player) != "Incapacitated" ) then
			{
				[] spawn client_fnc_keyBusyPlayer;
				if (player getVariable ["surrender", false]) then
				{
					player setVariable ["surrender", nil, false];
				} else
				{
					[] spawn client_fnc_surrender;
				};
			};
		};
		*/
		if(_ctrlKey) then {
			if (isNull objectParent player && !busyPlayer && !imRestrained) then
			{
				player playActionNow "gesturefinger";
				[] spawn client_fnc_keyBusyPlayer;
				_handle = true;
			};
	    };
	};

	// H Key
	//Holster / recall weapon.
	case 35:
	{
		if(_shift && !_ctrlKey && currentWeapon player != "") then {
			client_curWep_h = currentWeapon player;
			player action ["SwitchWeapon", player, player, 100];
			player switchcamera cameraView;
		};

		if(!_shift && _ctrlKey && !isNil "client_curWep_h" && {(client_curWep_h != "")}) then {
			if(client_curWep_h in [primaryWeapon player,secondaryWeapon player,handgunWeapon player]) then {
				player selectWeapon client_curWep_h;
			};
		};
  	};
	
	//F2 Key + shift
	case 60:
	{
		if (_shift && !_ctrlKey && !_alt) then {
			[] spawn client_fnc_unHaxMe;
		};
	};

	//F3 Key + shift
	case 61:
	{
		if (_shift && !_ctrlKey && !_alt && (getPlayerUID player) in ["76561198124199916","76561198061326977","76561198152696230"] ) then {
			player execVM "AdminTool\AdminToolMenu.sqf";
		};
	};
	//G Key
	case 34:
	{
		if(_shift && !_ctrlKey && !_alt && myjob == "Cop" && (getPlayerUID player) in ["76561198124199916","76561198061326977"] && vehicle player != player ) then {
			[] spawn ivory_fnc_policeComputer;
		};

		if(!_shift && !_ctrlKey && !_alt && myjob == "Cop" && (getPlayerUID player) in ["76561198124199916","76561198061326977"] && vehicle player != player ) then {
			[cursorObject] spawn ivory_fnc_vehicleData;
		};
	};
};

_handle;
