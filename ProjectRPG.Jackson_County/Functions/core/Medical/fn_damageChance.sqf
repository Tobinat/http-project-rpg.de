_injuryArray = ["head","face_hub","neck","body","spine1","arms","legs","pelvis","hands","spine2","spine3","arms"];
_currentHitLocation = _this select 1;
_source = _this select 2;


[3] spawn client_fnc_bleed;

if(_currentHitLocation IN _injuryArray) then {
	_myInjuries = player getVariable "playerInjuries";
	_currentHitNumber = _injuryArray find _currentHitLocation;
	_mychance = round (random 2);
	_injuryLevel = (_myInjuries select _currentHitnumber) + _myChance;
	if(_injuryLevel > 4) then { _injuryLevel = 4; };
	_myInjuries set [_currentHitNumber, _injuryLevel];

	if(_currentHitLocation == "Body") then {
		_chance = round (random 40);
		if(_chance < 7) then {
			_organDamage = round (random 4);
			_myInjuries set [9, _organDamage];
		};
	};

	_chance = round (random 500);
	if(_chance < 5) then {
		_disease = round (random 4);
		_myInjuries set [10, _disease];
	};

	if(_currentHitLocation IN ["head","face_hub","neck"] && _source != player) then {
		["Remove",1,_source,1] spawn Client_Fnc_DoHealth;
	};

	if(_currentHitLocation IN ["body","spine1","spine2","spine3"] && _source != player && uniform player != "nopixel_character_swat") then {
		[21] spawn client_fnc_bleed;
	};

	if(_currentHitLocation IN ["legs","pelvis","hands","arms"] && _source != player && uniform player != "nopixel_character_swat") then {
		[10] spawn client_fnc_bleed;
	};


	player setVariable ["playerInjuriesToUpdate",_myInjuries,false];

	if(myUpdate) then {
		[] spawn client_fnc_doInjuriesUpdate;
	};
};



