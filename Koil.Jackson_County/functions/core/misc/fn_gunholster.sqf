disableSerialization;
while{true} do
{
	waitUntil {vehicle player != player};
	waitUntil {isNull objectParent player};

	428 cutRsc ["HUDGun","PLAIN"]; 

	_time = if (!client_seatbelt) then {time + 2} else {time + 4};

	[] spawn {
		uiSleep 0.1;
		if(handgunWeapon player isEqualTo "" && primaryWeapon player isEqualTo "") exitWith {};
		[player,"AmovPercMstpSnonWnonDnon"] remoteExecCall ["client_fnc_animSync"];
		player switchMove "AmovPercMstpSnonWnonDnon"; 
	};
	while {_time > time} do {
		if (currentWeapon player != "") then {
			if(animationstate player == "amovpknlmstpsraswpstdnon") then { player switchmove ""; };
			player action ["SwitchWeapon", player, player, 100];
		};
	};
	428 cutfadeout 1; 
};