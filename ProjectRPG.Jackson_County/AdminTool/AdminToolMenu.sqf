

_adminList = ["76561198068135912","76561198050143205", "76561198152696230", "76561198051046402", "76561198061326977","76561198068135912"];

player removeAction _ShowESP;
player removeAction _ShowESPVehicle;
player removeAction _ShowGearEditor;
player removeAction _ShowHeal;
player removeAction _ShowRepair;
player removeAction _ShowTeleport;
player removeAction _ShowTeleport2Me;
player removeAction _GottMenu;
removeAllActions player;

if ((getPlayerUID player) in _adminList) then {
	_ShowESP = player addAction ["ESP", "AdminTool\tools\ESP.sqf"];
	_ShowESPVehicle = player addAction ["ESP Vehicle", "AdminTool\tools\ESPVehicle.sqf"];
	_ShowGearEditor = player addAction ["GearEditor", "AdminTool\tools\geareditor.sqf"];
	_ShowHeal = player addAction ["Heal", "AdminTool\tools\heal.sqf"];
	_ShowRepair = player addAction ["Repair - Flip", "AdminTool\tools\repairflip.sqf"];
	_ShowTeleport = player addAction ["Teleport", "AdminTool\tools\Tele.sqf"];
	_GottMenu = player addAction ["Gott Menu", "[]spawn ShowGottMenu"];

	ShowGottMenu = {
		player execVM "AdminTool\vehicles\Panzer\system.abl";
	};
}
