/*
pole fishing by koil
*/
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
		hint "Straciłeś dynamit!";
		deletevehicle _vehicle;
	};

	_catchPos = (getpos _vehicle);
	hint "Dobry rzut - Lepiej się odsuń!";
	
	sleep 8;
	"R_60mm_HE" createvehicle [(getpos _vehicle select 0)-2,(getpos _vehicle select 1)+1,(getpos _vehicle select 2)-3];
	"R_60mm_HE" createvehicle [(getpos _vehicle select 0),(getpos _vehicle select 1)+4,(getpos _vehicle select 2)-1];
	"R_60mm_HE" createvehicle [(getpos _vehicle select 0)+3,(getpos _vehicle select 1),(getpos _vehicle select 2)-1];

	deletevehicle _vehicle;


	hint "Zbliż się, by zebrać swoją zdobycz!";

	_timeout = 60; 
	for "_i" from 0 to 1 step 0 do {
		_timeout = _timeout - 1;
		if(player distance _catchPos < 9) exitwith { _catch = true; };
		if(_timeout < 1) exitwith { _catch = false; };
		sleep 0.5;
	};
	if(_catch) then {
		playSound3D ["vvv_fishingrod\sounds\splash.ogg", player, false, getPosASL player, 51, 1, 45];
	hint "Złapałeś swoją zdobycz!";
	_amount = 1 + random(25);
	_chance = random (100);
	if(_chance > 80) then {
		_myFish = _rareFish call BIS_fnc_selectRandom;
		player additem _myfish;
		_myFish = _rareFish call BIS_fnc_selectRandom;
		player additem _myfish;
		_myFish = _rareFish call BIS_fnc_selectRandom;
		player additem _myfish;		
	};
		while{_amount > 0} do {
			_type = floor (random(5));
			switch (_type) do
			{
				case 0 :
				{
					player additem "np_fishmeat"; 
					player additem "np_fishmeat"; 
					player additem "np_fishmeat";  
				};
				case 1 :
				{
					player additem "np_fishmeat"; 
					player additem "np_fishmeat"; 
				};
				case 2 :
				{
					player additem "np_fishmeat"; 
					player additem "np_fishmeat"; 
					player additem "np_fishmeat"; 
					player additem "np_fishmeat"; 
					player additem "np_fishmeat"; 

				};
				case 3 :
				{
					player additem "np_fishmeat"; 
					player additem "np_fishmeat"; 

				};
				case 4 :
				{
					player additem "np_fishmeat"; 
					player additem "np_fishmeat"; 
					player additem "np_fishmeat"; 
					player additem "np_fishmeat"; 
					player additem "np_fishmeat"; 
					player additem "np_fishmeat"; 
					player additem "np_fishmeat"; 
					player additem "np_fishmeat"; 

				};
				case 5 :
				{
					player additem "np_fishmeat"; 
					player additem "np_fishmeat"; 
					player additem "np_fishmeat";  
				};

				default
				{
				};
			};	
			_amount = _amount - 1;	
		};		
	} else { hint "Nie zdążyłeś wyciągnąć ryby!";};				
