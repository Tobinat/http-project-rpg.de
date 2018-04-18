if(!isNil "basket") then { deletevehicle basket; };
if(!isNil "lure") then { deletevehicle lure; };
if(!isNil "myRope") then { deletevehicle myrope; };

lure = "vvv_anzuelo" createvehicle [0,0,0];  
basket = "litter_civ" createvehicle [0,0,0];

vehicle player allowdamage false;
basket allowdamage false;
lure allowdamage false;

lure setpos [(getpos player select 0), (getpos player select 1), (getpos player select 2) - 2];
basket setpos [(getpos player select 0), (getpos player select 1), (getpos player select 2) - 2];

myRope = ropeCreate [vehicle player, [1.42,2.17,0], lure, [0,0,0.3], 3.5]; basket attachto [lure,[0,0,0]];


[] spawn { sleep 3; vehicle player allowdamage true; };