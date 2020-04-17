
			
_adminList =[	
			"76561198124199916",	//Leonard
			"76561198061326977",	//Kevin
			"76561198152696230"		//Voight
			];

removeAllActions player;

if ((getPlayerUID player) in _adminList) then {
	_ShowESP = player addAction ["ESP", "AdminTool\tools\ESP.sqf"];
	_ShowESPVehicle = player addAction ["ESP Vehicle", "AdminTool\tools\ESPVehicle.sqf"];
	_ShowGearEditor = player addAction ["GearEditor", "AdminTool\tools\geareditor.sqf"];
	_ShowHeal = player addAction ["Heal", "AdminTool\tools\heal.sqf"];
	_ShowRepair = player addAction ["Repair - Flip", "AdminTool\tools\repairflip.sqf"];
	_ShowTeleport = player addAction ["Teleport", "AdminTool\tools\Tele.sqf"];
	_GottMenu = player addAction ["Gott Menu", "[]spawn ShowGottMenu"];
	_closeMenu = player addAction ["Schließen","[]spawn closemenu"];
	
	ShowGottMenu = {
		player execVM "AdminTool\tools\system.abl";
	};
	closemenu = {
		removeAllActions player;
		//player addaction [("<t color=""#FF0000"">" + ("Admin Menu") +"</t>"),"AdminTool\Admin-Pfad.sqf","",5,false,true,"",""];
	};
}