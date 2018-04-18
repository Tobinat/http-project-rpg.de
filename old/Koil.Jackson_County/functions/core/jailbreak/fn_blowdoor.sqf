if(typeof cursorobject == "Land_zac_prison_wall_gate") then {
	_door = cursorobject;
	player playmove "vvv_anim_lockpick";
	playSound3D ["CG_Jobs\sounds\exp\exp.ogg", player, false, getPosASL _door, 5, 1, 35]; 
	uisleep 5;
	playSound3D ["CG_Jobs\sounds\exp\exp.ogg", player, false, getPosASL _door, 5, 1, 35]; 
	uisleep 5;
	_door allowdamage false;
	uisleep 3;
	"R_60mm_HE" createvehicle (getpos _door);
	_door allowdamage true;
	_door animate ["door_1",5];
	[(getpos player)] remoteexec ["server_fnc_firestart",2];
};