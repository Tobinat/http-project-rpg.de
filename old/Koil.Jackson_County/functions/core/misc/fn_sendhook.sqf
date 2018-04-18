// send hook CurrentCursorTarget;
_height = getposATL player;
if((_height select 2) > 15) exitwith { hint "You must be on the ground to latch this!"; };
tower = nearestObjects [player, ["Land_Cargo_Tower_V1_No1_F","Land_Cargo_Tower_V1_No2_F","Land_Cargo_Tower_V1_No3_F","Land_Cargo_Tower_V1_No4_F","Land_Cargo_Tower_V1_No5_F"], 20];
if(count tower > 0) then {
	godMode = true;
	_dick = (_this select 0);
	_vel = velocity _dick;
	_dir = direction _dick;
	deletevehicle _dick;
	_speed = 115;
	beginPoint = createVehicle ["vvv_anzuelo", player,[], 0, "CAN_COLLIDE"];
	_vehicle = createVehicle ["vvv_anzuelo", [getpos player select 0, getpos player select 1, (getpos player select 2) + 1],[], 0, "CAN_COLLIDE"];
	_vehicle setVelocity [(_vel select 0)+(sin _dir*_speed),(_vel select 1)+(cos _dir*_speed),(_vel select 2)];	
	sleep 1;
	_endpos = getpos _vehicle;
	_endpos2 = getpos (tower select 0);
	endPoint = createVehicle ["vvv_anzuelo", [(_endpos2 select 0), (_endpos2 select 1), (_endpos2 select 2) + 22],[], 0, "CAN_COLLIDE"];

	myRope = ropeCreate [beginPoint, [0,0,0], endPoint, [0,0,0]]; 
	sleep 2;
	[] spawn client_fnc_climbrope;
} else {
	hint "You are not close enough to latch on to a tower!";
};