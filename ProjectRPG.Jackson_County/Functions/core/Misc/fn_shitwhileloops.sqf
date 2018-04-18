for "_i" from 0 to 1 step 0 do 
{
if(vehicle player != player && (vehicle player isKindOf "LandVehicle")) then
	{
		if(speed vehicle player > 90 && !client_seatbelt) then
		{
			oldVehVelocity = velocity (vehicle player);
			uiSleep 0.3;
			if(speed vehicle player < 1) then
			{
				playSound "glassbreak";
				moveOut player;
				player setVelocity [(oldVehVelocity select 0) * 0.4,(oldVehVelocity select 1) * 0.4,((oldVehVelocity select 2) * 0.4) + 5];
				uiSleep 2;
				player switchmove "";
			};
		} else {
			if(!client_seatwarn) then {
				uiSleep 1;
				if(!client_seatwarn) then {
					["Pamietaj o zapieciu pasow!", false] spawn domsg;
				};
				playSound "seatwarn";
				client_seatwarn = true;
			};
			uiSleep 1;
		};
	};
	sleep 1;
};







[] spawn
{
	for "_i" from 0 to 1 step 0 do
	{
		waitUntil {vehicle player != player};
		waitUntil {isNull objectParent player};

		_time = if (!client_seatbelt) then {time + 0.8} else {time + 1.5};

		[] spawn {
			uiSleep 0.1;
			if(handgunWeapon player isEqualTo "" && primaryWeapon player isEqualTo "") exitWith {};
			[player,"AmovPercMstpSnonWnonDnon"] remoteExecCall ["client_fnc_animSync"];
			player switchMove "AmovPercMstpSnonWnonDnon"; 
		};
		while {_time > time} do {
			if (currentWeapon player != "") then {
				player action ["SwitchWeapon", player, player, 100];
			};
		};
		uiSleep 1;

	};
};