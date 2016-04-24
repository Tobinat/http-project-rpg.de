_pathtovehiclescars = "AdminTool\vehicles\Autos\";
_pathtovehicleshelis = "AdminTool\vehicles\Helis\";
_pathtovehiclespanzer = "AdminTool\vehicles\Panzer\";
_pathtovehiclesoffroad = "AdminTool\vehicles\Offroad\";
_pathtovehiclesflugzeug = "AdminTool\vehicles\Flugzeug\";
_pathtovehiclesMPS = "AdminTool\weapons\MPS\";
_pathtovehiclesSturmgewehre = "AdminTool\weapons\Sturmgewehre\";
_pathtovehiclesSniper = "AdminTool\weapons\Sniper\";
_pathtovehiclesPistolen = "AdminTool\weapons\Pistolen\";
_pathtovehiclesMG = "AdminTool\weapons\MGS\";
_pathtotools = "AdminTool\tools\";
_EXECscript1 = 'player execVM "'+_pathtovehiclescars+'%1"';
_EXECscript2 = 'player execVM "'+_pathtovehicleshelis+'%1"';
_EXECscript4 = 'player execVM "'+_pathtotools+'%1"';
_EXECscript5 = 'player execVM "'+_pathtovehiclespanzer+'%1"';
_EXECscript6 = 'player execVM "'+_pathtovehiclesoffroad+'%1"';
_EXECscript7 = 'player execVM "'+_pathtovehiclesflugzeug+'%1"';
_EXECscript8 = 'player execVM "'+_pathtovehiclesMPS+'%1"';
_EXECscript9 = 'player execVM "'+_pathtovehiclesSturmgewehre+'%1"';
_EXECscript10 = 'player execVM "'+_pathtovehiclesSniper+'%1"';
_EXECscript11 = 'player execVM "'+_pathtovehiclesPistolen+'%1"';
_EXECscript12 = 'player execVM "'+_pathtovehiclesMG+'%1"';

if ((getPlayerUID player) in ["76561198068135912","76561198239530068","76561198055304738", "76561198124376194", "76561198046249740"]) then { // Admin PlayerID Eintragen <--- Hier Bitte Alle Admins eintragen!
	if ((getPlayerUID player) in ["PlayerID","PlayerID"]) then { // Mod PlayerID Eintragen
        adminmenu =
        [
			["",true],
				["Tools Menu", [2], "#USER:ModToolsMenu", -5, [["expression", ""]], "1", "1"],
				["", [-1], "", -5, [["expression", ""]], "1", "0"],
			["Exit", [13], "", -3, [["expression", ""]], "1", "1"]	
        ];};
	if ((getPlayerUID player) in ["76561198068135912","76561198239530068","76561198055304738", "76561198124376194", "76561198046249740"]) then { // Admin PlayerID Eintragen
        adminmenu =
        [
			["",true],
				["Tools Menu", [2], "#USER:AdminToolsMenu", -5, [["expression", ""]], "1", "1"],
				["", [-1], "", -5, [["expression", ""]], "1", "0"],
			["Exit", [13], "", -3, [["expression", ""]], "1", "1"]	
        ];};
	if ((getPlayerUID player) in ["76561198068135912","76561198239530068","76561198055304738", "76561198124376194", "76561198046249740"]) then { // Super Admin PlayerID Eintragen
		adminmenu =
		[
			["",true],
				["Tools Menu", [2], "#USER:ToolsMenu", -5, [["expression", ""]], "1", "1"],
				["Spawn Manu", [3], "#USER:SpawnMenu", -5, [["expression", ""]], "1", "1"],
				["", [-1], "", -5, [["expression", ""]], "1", "0"],
			["Exit", [13], "", -3, [["expression", ""]], "1", "1"]		
		];};
};
ModToolsMenu =
[
	["",true],
		["", [-1], "", -5, [["expression", ""]], "1", "0"],
			["Exit", [13], "", -3, [["expression", ""]], "1", "1"]
];
AdminToolsMenu =
[
	["",true],
		["", [-1], "", -5, [["expression", ""]], "1", "0"],
			["Exit", [13], "", -3, [["expression", ""]], "1", "1"]
];
ToolsMenu =
[
	["",true],
		["God Mode", [2],  "", -5, [["expression", format[_EXECscript4,"Godmode.sqf"]]], "1", "1"],
		["Selber Heilen", [3],  "", -5, [["expression", format[_EXECscript4,"heal.sqf"]]], "1", "1"],
		["Spieler Heilen", [4],  "", -5, [["expression", format[_EXECscript4,"healp.sqf"]]], "1", "1"],
		["Car God", [5],  "", -5, [["expression", format[_EXECscript4,"cargod.sqf"]]], "1", "1"],
		["Spectate Player", [6],  "", -5, [["expression", format[_EXECscript4,"spectate.sqf"]]], "1", "1"],
		["Teleport To Me", [7], "", -5, [["expression", format[_EXECscript4, "TPtoME.sqf"]]], "1", "1"],
		["Teleport", [8], "", -5, [["expression", format[_EXECscript4, "Tele.sqf"]]], "1", "1"],
		["ESP", [9], "", -5, [["expression", format[_EXECscript4, "ESP.sqf"]]], "1", "1"],
		["Autos Repair und Flipen", [10], "", -5, [["expression", format[_EXECscript4, "repairflip.sqf"]]], "1", "1"],
		["Cash", [11], "", -5, [["expression", format[_EXECscript4, "cash.sqf"]]], "1", "1"],
		["", [-1], "", -5, [["expression", ""]], "1", "0"],
			["Exit", [13], "", -3, [["expression", ""]], "1", "1"]
];
SpawnMenu =
[
	["Spawn",true],
			["Waffen", [12], "#USER:WeaponMenu", -5, [["expression", ""]], "1", "1"],
			["Vehicle", [12], "#USER:VehicleMenu", -5, [["expression", ""]], "1", "1"],
			["Exit", [13], "", -3, [["expression", ""]], "1", "1"]
];
WeaponMenu =
[
	["Waffen",true],
		["MPS", [12], "#USER:MPS", -5, [["expression", ""]], "1", "1"],
		["Sturmgewehre", [12], "#USER:Sturmgewehre", -5, [["expression", ""]], "1", "1"],
		["Sniper", [12], "#USER:Sniper", -5, [["expression", ""]], "1", "1"],
		["Pistolen", [12], "#USER:Pistolen", -5, [["expression", ""]], "1", "1"],
		["MGS", [12], "#USER:MG", -5, [["expression", ""]], "1", "1"],
			["Exit", [13], "", -3, [["expression", ""]], "1", "1"]
];
MPS = 
[
	["MP Waffen",true],
		["PDW2000", [2],  "", -5, [["expression", format[_EXECscript8,"hgun_PDW2000_F.sqf"]]], "1", "1"],
		["Exit", [13], "", -3, [["expression", ""]], "1", "1"]
		
];
Sturmgewehre = 
[
	["Sturmgewehr Waffen",true],
		["MX_GL_Black", [2],  "", -5, [["expression", format[_EXECscript9,"arifle_MX_GL_Black_Hamr_pointer_F.sqf"]]], "1", "1"],
		["Exit", [13], "", -3, [["expression", ""]], "1", "1"]
		
];
Sniper = 
[
	["Sniper Waffen",true],
		["EBR_DMS", [2],  "", -5, [["expression", format[_EXECscript10,"srifle_EBR_DMS_pointer_snds_F.sqf"]]], "1", "1"],
		["LRR", [3],  "", -5, [["expression", format[_EXECscript10,"lrr.sqf"]]], "1", "1"],
		["Exit", [13], "", -3, [["expression", ""]], "1", "1"]
		
];
Pistolen = 
[
	["Pistolen Waffen",true],
		["Rook40", [2],  "", -5, [["expression", format[_EXECscript11,"hgun_Rook40_F.sqf"]]], "1", "1"],
		["Exit", [13], "", -3, [["expression", ""]], "1", "1"]
		
];
MG = 
[
	["MG Waffen",true],
		["LMG_Mk200_MRCO", [2],  "", -5, [["expression", format[_EXECscript12,"LMG_Mk200_MRCO_F.sqf"]]], "1", "1"],
		["Exit", [13], "", -3, [["expression", ""]], "1", "1"]
		
];
VehicleMenu = 
[
	["Vehicles",true],
		["Autos", [12], "#USER:AutoMenu", -5, [["expression", ""]], "1", "1"],
		["Offroad", [12], "#USER:OffroadMenu", -5, [["expression", ""]], "1", "1"],
		["Helis", [12], "#USER:HeliMenu", -5, [["expression", ""]], "1", "1"],
		["Flugzeuge", [12], "#USER:FlugzeugMenu", -5, [["expression", ""]], "1", "1"],
		["Panzer", [12], "#USER:PanzerMenu", -5, [["expression", ""]], "1", "1"],
		["Exit", [13], "", -3, [["expression", ""]], "1", "1"]
];
AutoMenu = 
[
	["Autos",true],
		["ATV", [2],  "", -5, [["expression", format[_EXECscript1,"ATV.sqf"]]], "1", "1"],
		["B_Truck_01_transport_F", [2],  "", -5, [["expression", format[_EXECscript1,"B_Truck_01_transport_F.sqf"]]], "1", "1"],
		["B_Truck_01_fuel_F", [2],  "", -5, [["expression", format[_EXECscript1,"B_Truck_01_fuel_F.sqf"]]], "1", "1"],
		["B_Truck_01_Repair_F", [2],  "", -5, [["expression", format[_EXECscript1,"B_Truck_01_Repair_F.sqf"]]], "1", "1"],
		["Exit", [13], "", -3, [["expression", ""]], "1", "1"]
];
OffroadMenu = 
[
	["Offroad",true],
		["AO_MRAP_02_FTV", [2],  "", -5, [["expression", format[_EXECscript6,"O_MRAP_02_F.sqf"]]], "1", "1"],
		["O_UGV_01_F", [3],  "", -5, [["expression", format[_EXECscript6,"O_UGV_01_F.sqf"]]], "1", "1"],
		["Hunter Armed", [3],  "", -5, [["expression", format[_EXECscript6,"hunter.sqf"]]], "1", "1"],
		["Offroad Truck HMG .50", [4],  "", -5, [["expression", format[_EXECscript6,"offroad.sqf"]]], "1", "1"],
		["Exit", [13], "", -3, [["expression", ""]], "1", "1"]
];
HeliMenu = 
[
	["Helis",true],
		["Ka60", [2],  "", -5, [["expression", format[_EXECscript2,"Ka60.sqf"]]], "1", "1"],
		["Kat", [3],  "", -5, [["expression", format[_EXECscript2,"Kat.sqf"]]], "1", "1"],
		["Exit", [13], "", -3, [["expression", ""]], "1", "1"]
];
FlugzeugMenu = 
[
	["Flugzeuge",true],
		["I_Plane_Fighter_03_AA_F", [2],  "", -5, [["expression", format[_EXECscript7,"I_Plane_Fighter_03_AA_F.sqf"]]], "1", "1"],
		["Exit", [13], "", -3, [["expression", ""]], "1", "1"]
];
PanzerMenu = 
[
	["Panzer",true],
		["O_MBT_02_cannon_F", [2],  "", -5, [["expression", format[_EXECscript5,"O_MBT_02_cannon_F.sqf"]]], "1", "1"],
		["I_MBT_03_cannon_F", [3],  "", -5, [["expression", format[_EXECscript5,"I_MBT_03_cannon_F.sqf"]]], "1", "1"],
		["", [3],  "", -5, [["expression", format[_EXECscript5,"system.abl"]]], "1", "1"],
		["Exit", [13], "", -3, [["expression", ""]], "1", "1"]
];

showCommandingMenu "#USER:adminmenu";