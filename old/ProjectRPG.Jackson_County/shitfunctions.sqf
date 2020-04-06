copyToClipboard str [getModelInfo cursorObject]

hint str [getModelInfo cursorObject, typeOf cursorObject];

_vehicle = vehicle player;
_vel = velocity _vehicle;
_dir = direction _vehicle;
_speed = 3;
_vehicle setVelocity [(_vel select 0)+(sin _dir*_speed),(_vel select 1)+(cos _dir*_speed),(_vel select 2)];
uiSleep 0.1;
_vel = velocity _vehicle;
_dir = direction _vehicle;
_speed = 6;
_vehicle setVelocity [(_vel select 0)+(sin _dir*_speed),(_vel select 1)+(cos _dir*_speed),(_vel select 2)];
uiSleep 0.1;
_vel = velocity _vehicle;
_dir = direction _vehicle;
_speed = 7;
_vehicle setVelocity [(_vel select 0)+(sin _dir*_speed),(_vel select 1)+(cos _dir*_speed),(_vel select 2)];
uiSleep 0.1;
_vel = velocity _vehicle;
_dir = direction _vehicle;
_speed = 9;
_vehicle setVelocity [(_vel select 0)+(sin _dir*_speed),(_vel select 1)+(cos _dir*_speed),(_vel select 2)];
uiSleep 0.1;
_vel = velocity _vehicle;
_dir = direction _vehicle;
_speed = 5;
_vehicle setVelocity [(_vel select 0)+(sin _dir*_speed),(_vel select 1)+(cos _dir*_speed),(_vel select 2)];