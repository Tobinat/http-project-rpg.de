// send hook CurrentCursorTarget;

_height = getposATL player;
if((_height select 2) > 15) exitwith { hint "Musisz stać na ziemii!"; };

tower = nearestObjects [player, ["Land_Cargo_Tower_V1_No1_F","Land_Cargo_Tower_V1_No2_F","Land_Cargo_Tower_V1_No3_F","Land_Cargo_Tower_V1_No4_F","Land_Cargo_Tower_V1_No5_F"], 20];

if(count tower > 0) then {
	if(player distance (tower select 0) < 16) then { hint "You are too close"; };
	godMode = true;
	_speed = 115;
	beginPoint = "vvv_anzuelo" createVehiclelocal getpos player;
	beginpoint setpos getpos player;
	sleep 1;
	_endpos2 = getpos (tower select 0);
	endPoint = "vvv_anzuelo" createVehiclelocal [(_endpos2 select 0), (_endpos2 select 1), (_endpos2 select 2) + 22];
    endpoint setpos [(_endpos2 select 0), (_endpos2 select 1), (_endpos2 select 2) + 22];
	myRope = ropeCreate [beginPoint, [0,0,0], endPoint, [0,0,0]]; 
	sleep 2;
	[] spawn client_fnc_climbrope;
} else {
	hint "Jesteś zbyt daleko!";
};