A3L_fnc_Zep6EvEd = [];

A3L_fnc_serverexec = [
"\Core\Network\fn_sendFunctions.sqf",
"\Core\Server\fn_buildings.sqf",
"\Core\Server\fn_buildings2.sqf",
"\Core\Network\fn_sounds.sqf"
];

A3L_fnc_PVList = [
"\Core\fn_messagesystem.sqf",
"\Core\fn_tablet.sqf",
//"\Core\Farming\fn_client.sqf",
"\Core\Network\fn_sounds.sqf",
"\Core\Functions\bank.sqf",
"\Core\Functions\message.sqf"
];

{
private ["_compiled","_preprocess"];
	_preprocess = preprocessFile (format ["\life_server\vew3s4Af%1",_x]);
	_compiled = compile _preprocess;
	[] spawn _compiled;
} foreach A3L_fnc_serverexec;

{
	private ["_compiled","_preprocess"];
	_preprocess = preprocessFile (format ["\life_server\vew3s4Af%1",_x]);
	_compiled = compile _preprocess;
	A3L_fnc_Zep6EvEd pushBack _compiled;
} foreach A3L_fnc_PVList;

A3L_fnc_Zep6EvEd = A3L_fnc_Zep6EvEd + [{A3L_fnc_dreDeta8 = true; A3L_fnc_Zep6EvEd = Nil;}];

publicVariable "A3L_fnc_Zep6EvEd";
publicVariable "A3L_CurrentVersion";
A3L_fnc_serverexec = Nil;
A3L_fnc_Zep6EvEd = Nil;

[] spawn {
	while{true} do {
		[1,format["JOB SEARCH: Mobile Vehicles are despawning in 1 minute!"]] remoteExecCall ["life_fnc_broadcast", civilian];
		uiSleep 30;
		[1,format["JOB SEARCH: Mobile Vehicles are despawning in 30 seconds!"]] remoteExecCall ["life_fnc_broadcast", civilian];
		uiSleep 30;
		{
			if (typeOf _x IN ["critgamin_vangmcc_clothing","critgamin_vangmcc_fedex","critgamin_vangmcc_food","critgamin_vangmcc_general","critgamin_vangmcc_fixit","critgamin_vangmcc_pizza"]) then
			{
				_x setVelocity [0, 0, 0];
				uiSleep 1;
				deleteVehicle _x;
			};
		} foreach vehicles;

		[1,format["JOB SEARCH: New jobs have been added to the job list!"]] remoteExecCall ["life_fnc_broadcast", civilian];

	   	jobstand setvariable ["job1",true,true];
		jobstand setvariable ["job2",true,true];
		jobstand setvariable ["job3",true,true];
		jobstand setvariable ["job4",true,true];
		jobstand setvariable ["job5",true,true];
		jobstand setvariable ["job6",true,true];	
		jobstand setvariable ["job7",true,true];
		jobstand setvariable ["job8",true,true];	
		uisleep 1800;
	};
};