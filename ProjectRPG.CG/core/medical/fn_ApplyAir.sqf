/*
	fn_applyAir.sqf
	Oxygen Supply Air Kit Etc Blah Blah cunt
*/
private["_display","_curTarget"];

remoteExec ["fnc_airkit",cursorTarget];

["You have applied 3 minutes of air to your target", false] spawn domsg;
life_inv_airkit = life_inv_airkit - 1;