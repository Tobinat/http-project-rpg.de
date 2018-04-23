waituntil {!alive player ; !isnull (finddisplay 46)};
if ((getPlayerUID player) in ["76561198068135912","76561198050143205", "76561198152696230", "76561198051046402", "76561198061326977","76561198124376194"]) then {
	sleep 1;
	player addaction [("<t color=""#FF0000"">" + ("Admin Menu") +"</t>"),"AdminTool\Admin-Pfad.sqf","",5,false,true,"",""];
};
