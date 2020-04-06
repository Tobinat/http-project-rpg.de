_targetpos = getpos (tower select 0);
player playmove "AmovPpneMstpSnonWnonDnon";
_timer = 50;
_dir = [player, getpos endPoint] call BIS_fnc_dirTo;
playSound3D ["CG_Jobs\sounds\jailbreak\zipline.ogg", player, false, getposasl player, 25, 1, 25];

for "_i" from 0 to 1 step 0 do {
	player setdir _dir;
	sleep 0.25;
	_vel = velocity player;
	_speed = 0.2;
	_height = getposATL player;

	player setVelocity [(_vel select 0)+(sin _dir*_speed),(_vel select 1)+(cos _dir*_speed),(_vel select 2) + 4]; 

	if(player distance endPoint < 5 || _timer == 0 || (_height select 2) > 15) exitwith {};
	_timer = _timer - 1;
};

player setpos [_targetpos select 0, _targetpos select 1, (_targetpos select 2) + 20];
deletevehicle endPoint;
deletevehicle beginPoint;
deletevehicle myRope;	
sleep 0.1;
godmode = false;