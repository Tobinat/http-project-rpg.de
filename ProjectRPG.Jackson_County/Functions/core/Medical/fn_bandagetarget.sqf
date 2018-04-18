if(isNil "user") then { user = player; };

if("CG_ATF_Bandage_i" in magazines player || myJob IN ["EMS","Fire"]) then {

	if(user == player) then {
		["SET",0] call Client_Fnc_DoHealth;
	} else {
		if(vehicle player == player) then { player playmove "AinvPknlMstpSnonWnonDnon_medic_1";  };
		["SET",0] remoteexec ["Client_Fnc_DoHealth",user];
	};

	if(myJob IN ["EMS","Fire"]) exitwith {};

	 ["CG_ATF_Bandage_i",0] spawn client_fnc_removeitem;

} else { hint "Potrzebujesz bandaża!"; };