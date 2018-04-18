/*
pole fishing by koil
*/
private["_chance"];
if(imfishing) exitwith {};
imfishing = true;
	player playmove "AwopPercMstpSgthWrflDnon_start1";
	sleep 1;
	_dirAdd = (-30) + random(60);
	_speed = 20;
	_Dir = (getdir player) + _dirAdd;
	_vehicle = createVehicle ["vvv_anzuelo", [getpos player select 0, getpos player select 1, (getpos player select 2) + 3],[], 0, "CAN_COLLIDE"];
	_vel = velocity _vehicle;
	_vehicle setVelocity [(_vel select 0)+(sin _dir*_speed),(_vel select 1)+(cos _dir*_speed),(_vel select 2) + 12];
	playSound3D ["vvv_fishingrod\sounds\wind2.ogg", player, false, getPosASL player, 1, 1, 8];


	sleep 2.5;

	if!(surfaceIsWater (getpos _vehicle)) exitwith {
		hint "Zgubiłeś przynętę!";
		deletevehicle _vehicle;
		imfishing = false;
	};

	hint "Dobry rzut!";
	playSound3D ["vvv_fishingrod\sounds\splash.ogg", player, false, getPosASL _vehicle, 25, 1, 85];

	_timeOut = 0;
	_total = random(6);
	_myStartSpot = getpos player;
	_fail = false;

	for "_i" from 0 to 1 step 0 do {
		sleep 3;
		_timeOut = _timeOut + 1;
		if(_timeOut > _total) exitwith {};
		if(_myStartSpot distance player > 25) exitwith { _fail = true; };
	};

	if(_fail) exitwith {
		hint "Oddaliłeś się i straciłeś przynętę.";
		deletevehicle _vehicle;
		imfishing = false;
	};

	playSound3D ["vvv_fishingrod\sounds\splash.ogg", player, false, getPosASL player, 15, 1, 45];
	hint "Masz branie, naciśnij klawisz Windows!";

	mouseMovement = 1;
	sleep 0.5;
	if(mouseMovement == 1) then { mousemovement=2; };

	_Dir = _Dir - 180;
	_vel = velocity _vehicle;
	_speed = 22;

	_timeOut = 0;

	sleep 0.5;
	playSound3D ["vvv_fishingrod\sounds\wind2.ogg", player, false, getPosASL player, 1, 1, 8];

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


	//fish array here add fish here to player etc.

	_standardFish = ["Fish_Tuna_1","Fish_Tuna_2","Fish_Tuna_3","Fish_Tuna_4","Fish_Tuna_5","Fish_Tuna_6","Fish_Mackerel_1","Fish_Mackerel_2","Fish_Mackerel_3","Fish_Mackerel_4","Fish_Mackerel_5","Fish_Mackerel_6"];
	_rareFish = ["Fish_Mackerel_7", "Fish_Tuna_7", "Fish_Trout_Rare", "Fish_Shark_Rare"];

	_myfish = "fish_tuna_1";


//gold_fishing_rod 20 - 10
//platinum_fishing_rod 40 -10
//epic_fishing_rod 60 - 10
//legendary_fishing_rod 120 - 100



    if(mouseMovement == 3) then {
    	_curWep = currentWeapon player;
    	   _chance = round (random 200);

	    	if(_curWep IN ["gold_fishing_rod","platinum_fishing_rod","epic_fishing_rod"]) then { _chance = round (random 202); };

	    	if(_curWep == "legendary_fishing_rod") then { _chance = round (random 240); };

	    	if(vehicle player != player) then { _chance = _chance + 30; };

    	    if(_chance > 198) then {
    		_myFish = _rareFish call BIS_fnc_selectRandom;
	    } else {
	    	_myFish = _standardFish call BIS_fnc_selectRandom;
		};
		hint "Złapałeś coś!";
		Player additemtobackpack _myFish;
		["FishCaught"] spawn mav_ttm_fnc_addExp;

		_chance = round (random 100);
		if(vehicle player != player) then { _chance = _chance + 10; };
		if(_curWep == "gold_fishing_rod" && _chance > 80) then { Player additemtobackpack _myFish; };
		if(_curWep == "platinum_fishing_rod" && _chance > 60) then { Player additemtobackpack _myFish; };
		if(_curWep == "epic_fishing_rod" && _chance > 40) then { Player additemtobackpack _myFish; };
		if(_curWep == "legendary_fishing_rod") then { Player additemtobackpack _myFish; };

	} else {
		hint "Byłeś zbyt wolny.";
	};

	imfishing = false;
