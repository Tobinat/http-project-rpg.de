[] spawn {
if(player getVariable  "ACE_isUnconscious" && !life_unconscious) then {
		_action = ["Du bist Ohnmächtig. Mit letzter kraft kannst du dein Handy ziehen. Möchtest du das S.L.F.D. über deine Lage informieren?","Ohnmächtig","Ja","Nein"] call BIS_fnc_guiMessage;
		life_corpse = player;
		if(!isNil "_action" && {_action}) then {
			[] call client_fnc_requestMedic;
		};
		life_unconscious = true;
	};

	if(!(player getVariable "ACE_isUnconscious") && life_unconscious) then {
		life_unconscious = false;
	};
};