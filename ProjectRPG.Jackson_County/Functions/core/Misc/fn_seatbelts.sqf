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
				[] spawn KK_fnc_forceRagdoll;
				uiSleep 2;
				player switchmove "";
			};
		} else {
			if(!client_seatwarn) then {
				uiSleep 1;
				if(!client_seatwarn) then {
					427 cutRsc ["HUDseat","PLAIN"]; 
					["Pamietaj o zapieciu pasow!", false] spawn domsg;
				};
				playSound "seatwarn";
				client_seatwarn = true;
			};
			uiSleep 1;
		};
		if(client_seatbelt) then { 427 cutfadeout 1; };
	};
	if(vehicle player == player && client_seatwarn) then { client_seatwarn = false; 427 cutfadeout 1; };
	if(vehicle player == player && client_seatbelt) then { client_seatbelt = false; 427 cutfadeout 1; };
	uisleep 1;
};