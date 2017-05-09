// surrender CurrentCursorTarget;

player setVariable ["surrender", true, false]; //Set surrender to true

while { player getVariable ["surrender", false] && !imRestrained }  do { 
	player playMove "amovpercmstpsnonwnondnon_amovpercmstpssurwnondnon"; //Animation in
	
	// Check if player is alive.
	if (deadPlayer) then {
		player setVariable ["surrender", nil, false];
	};
};

player playMoveNow "AmovPercMstpSsurWnonDnon_AmovPercMstpSnonWnonDnon"; //Animation out