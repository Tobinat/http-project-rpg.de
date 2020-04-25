params["_shop"];

if(isNil "robbedStores") then { robbedstores = []; };

if (count currentcop < 3) exitwith { ["Hier gibts nichts zu holen!",false] call domsg; };
if (_shop IN robbedstores) exitwith { ["Hier gibts nichts zu holen!",false] call domsg; };

_chance = random(100);

if(_chance > 80) then {

	if(_chance > 95) then {

		[player] remoteexec ["server_fnc_robberyCall",2];

	};

	playSound3D ["prpg_data\sounds\glassbreak.ogg", vehicle player, false, getPosasl (vehicle player), 1, 1, 45];

	if(isNil "modifier") then { modifier = 0 };

	if(modifier == 0) then { 
				


		modifier = 3;

		for "_i" from 0 to 1 step 0 do  {

			if(modifier == 0) exitwith { hint "Deine Raubwut ist zu ende"; };
			uisleep 20;
			modifier = modifier - 1;

		};

		[] spawn { uisleep 300; robbedstores = []; };

	} else { 
		if(modifier > count currentcop) then { modifier = modifier + 1;  } else { modifier = modifier + 1.5; };
			
		_amount = random(4) + 1; _amount = _amount * (modifier * 1.1); _amount = round(_amount); 

		_maxallowed = ((count currentcop) + 1) * 70;
		if(_amount > _maxallowed) then { _amount = _maxallowed; }; 

		if(_amount < 0) then { _amount = 5; };

		robbedstores pushback _shop; hint format["Du hast diese Summe entwendet: %1",_amount];
		[_amount] call Client_fnc_sl_addCash_secure;
		[player, _shop, "storeRobbery"] spawn client_fnc_createEvidence;

	};

};