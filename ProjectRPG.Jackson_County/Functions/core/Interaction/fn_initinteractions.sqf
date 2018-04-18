/*
Interaction Menus
*/

NoPixel_InteractionButtons = [
	1600, 1601, 1602, 1603, 1604, 1605, 1606, 1607, 1608,
	1609, 1610, 1611, 1612, 1613, 1614, 1615, 1616, 1617,
	1618, 1619, 1620, 1621, 1622, 1623, 1624, 1625, 1626,
	16001, 16011, 16021, 16031, 16041, 16051, 16061, 16071, 16081,
	16091, 16101, 16111, 16121, 16131, 16141, 16151, 16161, 16171,
	16181, 16191, 16201, 16211, 16221, 16231, 16241, 16251, 16261,
	16002, 16012, 16022, 16032, 16042, 16052, 16062, 16072, 16082,
	16092, 16102, 16112, 16122, 16132, 16142, 16152, 16162, 16172,
	16182, 16192, 16202, 16212, 16222, 16232, 16242, 16252, 16262,
	16003, 16013, 16023, 16033, 16043, 16053, 16063, 16073, 16083,
	16093, 16103, 16113, 16123, 16133, 16143, 16153, 16163, 16173,
	16183, 16193, 16203, 16213, 16223, 16233, 16243, 16253, 16263
];

np_red_cars = [
	"red_beetle_66_black",
	"red_cvpi_06_black",
	"red_f350_08_black",
	"red_towtruck_08_black",
	"sl_taurus_10_black",
	"sl_panamera_10_black",
	"sl_camaro_12_black",
	"sl_charger_12_black",
	"sl_xkrs_12_black",
	"sl_s65_12_black",
	"sl_porsche_12_black",
	"sl_vanquish_13_black",
	"sl_gs350_13_black",
	"sl_corvette_14_black",
	"sl_suburban_15_black",
	"sl_charger_15_black",
	"red_explorer_16_black",
	"C_Quadbike_01_F",
	"C_SUV_01_F"
];

NoPixel_InteractionMenuItems = [

	//[
	//	[" typeof cursortarget == ""plp_ct_HighSecMediumBlack"" "],
	//	["Zabezpiecz pieniądze", " ['Zabezpieczanie pieniędzy',300,client_fnc_securefunds,player,'AinvPknlMstpSnonWnonDnon_medic_1',CurrentCursorTarget,""cg_sndimg\sounds\repair.ogg"",0] spawn client_fnc_dotask ",5]
	//],

	//[
	//	[" bankrobber == 4 "],
	//	["Zbierz pieniądze", " ['Pakuję pieniądze',180,client_fnc_takecash,player,'AinvPknlMstpSnonWnonDnon_medic_1',CurrentCursorTarget,""cg_sndimg\sounds\repair.ogg"",0] spawn client_fnc_dotask ",5]
	//],

	//[
	///	[" bankrobber == 2 "],
	//	["Napraw wiertło", " ['Repairing Drill',120,client_fnc_repairdrill,player,'AinvPknlMstpSnonWnonDnon_medic_1',CurrentCursorTarget,""cg_sndimg\sounds\repair.ogg"",0] spawn client_fnc_dotask ",5]
	//],


	[
		[" ((lastforcesync + 300) < time) && client_canSync "],
		["Sync Data (5min CD)", " [] spawn client_fnc_syncData; ",5]
	],

	[
		["adminInteractions>=1"],
		["Sync Data", " [] spawn client_fnc_syncData; ",5]
	],

	[
		[" alive cursorTarget && cursorTarget isKindOf ""Man"" "],
		["Daj klucze", " [current_cars] remoteExec [""client_fnc_givekeys"",currentcursortarget]; ",5]
	],

	[
		["(licensearray select 0) == 0 && typeof CurrentCursorTarget IN [""Land_Centrelink""] && player getVariable[""veh_points"",0] < 15"],
		["Prawo jazdy 500$", "_cashcheck = [1,500] call Client_fnc_sl_checkMoney_secure; if!(_cashCheck) exitwith { hint ""Nie masz pieniędzy!""; }; [""Add"",""license"",1] call client_fnc_sustain; [500] call Client_fnc_sl_removeCash_secure; ",1]
	],

	[
		["typeof CurrentCursorTarget == ""Land_buildingGunStore1"" && (licensearray select 1) == 0"],
		["Licencja Broń 2500$", "_cashcheck = [1,2500] call Client_fnc_sl_checkMoney_secure; if!(_cashCheck) exitwith { hint ""Nie masz pieniędzy!""; }; [""Add"",""license"",2] call client_fnc_sustain; [2500] call Client_fnc_sl_removeCash_secure; ",1]
	],


	[
		["(licensearray select 2) == 0 && typeof CurrentCursorTarget IN [""Land_Coffee_DED_Coffee_02_F"",""Land_fs_roof_F"",""Land_Coffee_DED_Coffee_01_F"",""Land_Shop_DED_Shop_01_F"",""Land_Shop_DED_Shop_02_F""]"],
		["Licencja Górnika 700$", "_cashcheck = [1,700] call Client_fnc_sl_checkMoney_secure; if!(_cashCheck) exitwith { hint ""Nie masz pieniędzy!""; }; [""Add"",""license"",3] call client_fnc_sustain; [700] call Client_fnc_sl_removeCash_secure; ",1]
	],

	[
		["(licensearray select 3) == 0 && typeof CurrentCursorTarget IN [""Land_Coffee_DED_Coffee_02_F"",""Land_fs_roof_F"",""Land_Coffee_DED_Coffee_01_F"",""Land_Shop_DED_Shop_01_F"",""Land_Shop_DED_Shop_02_F""]"],
		["Licencja Drwala", "[""Add"",""license"",4] call client_fnc_sustain;",1]
	],

	[
		["(licensearray select 4) == 0 && typeof CurrentCursorTarget IN [""Land_Coffee_DED_Coffee_02_F"",""Land_fs_roof_F"",""Land_Coffee_DED_Coffee_01_F"",""Land_Shop_DED_Shop_01_F"",""Land_Shop_DED_Shop_02_F""]"],
		["Licencja Rybaka 400$", "_cashcheck = [1,400] call Client_fnc_sl_checkMoney_secure; if!(_cashCheck) exitwith { hint ""Nie masz pieniędzy!""; }; [""Add"",""license"",5] call client_fnc_sustain; [400] call Client_fnc_sl_removeCash_secure; ",1]
	],

	[
		["paintballing "],
		["Odrodzenie", " paintballhit = true; hint ""Respawned"";",1]
	],

	[
		["paintballing "],
		["Uzupełnij kulki", " for ""_i"" from 1 to 3 do { player addItemToUniform ""140Rnd_PaintBall_blau""; }; ",1]
	],

	[
		[" player distance [3370.36,1436.92,0.00147247] < 225 && !paintballing"],
		["Start Paintball", " [player] remoteexec [""server_fnc_paintball"",2]; ",1]
	],

	//[
	//	[" myJob != ""cop""", " myJob == ""Mafia"" && currentcursortarget == missionVehicle && !isNull missionVehicle && player distance endOfmission < 25"],
	//	["Sprzedawanie narkotyków", " ['Sprzedawanie',60,client_fnc_finishDrugRun,player,'AinvPknlMstpSnonWnonDnon_medic_1',CurrentCursorTarget,""cg_mission_files\sounds\patdown1.ogg"",0] spawn client_fnc_dotask ",1]
	//],

	//[
	//	[" myJob != ""cop""", "typeof currentcursortarget == ""Land_buildingsbasement1"" && player distance getmarkerpos ""drugdump"" < 30"],
	//	["Sprzedaj narkotyki", " ['Sprzedawanie',30,client_fnc_dumpDrugs,player,'AinvPknlMstpSnonWnonDnon_medic_1',CurrentCursorTarget,""cg_mission_files\sounds\patdown1.ogg"",0] spawn client_fnc_dotask ",1]
	//],

	//[
	//	[" myJob != ""cop""", "typeof currentcursortarget == ""Land_buildingsbasement1"" && player distance getmarkerpos ""drugdump"" < 30"],
	//	["Wypierz pieniądze", " ['Piorę pieniądze',60,client_fnc_dumpMoney,player,'AinvPknlMstpSnonWnonDnon_medic_1',CurrentCursorTarget,""sl_client\sounds\blindfold.ogg"",0] spawn client_fnc_dotask ",1]
	//],

	//[
	//	[" myJob == ""Mafia"" && (player getVariable ""Mafia"") > 5 "],
	//	["Podsłuchy", " [] spawn client_fnc_findTapped; ",1]
	//],

	[
		[" myJob == ""cop"" &&  client_aiad_actions == 2"],
		["Podsłuchy", " [] spawn client_fnc_findTapped; ",1]
	],

	[
		[" myJob == ""Cop"" && (count(nearestObjects [player,[""weaponholder""],3])>0) "],
		["Konfiskuj", " [] spawn client_fnc_seizeObjects; ",1]
	],

	[
		["adminInteractions>=1"],
		["Konfiskuj", " [] spawn client_fnc_seizeObjects; ",1]
	],

	[
		[" isplayer currentcursortarget && myJob == ""Mafia"" && currentcursortarget distance player < 5"],
		["Siku sik", " [currentcursortarget] spawn client_fnc_pee; ",1]
	],

//	[
//		[" myJob == ""Mafia"" "],
//		["Pożyczki", " [player] remoteexec [""server_fnc_MafiaOwed"",2]; ",1]
//	],

//	[
//		[" (isplayer currentcursortarget && vehicle currentcursortarget == currentcursortarget) && myJob == ""Mafia"" && (player getvariable ""mafia"") > 5 "],
//		["Daj Pożyczkę", " [currentcursortarget] spawn Client_fnc_sl_giveLoan_secure; ",1]
//	],

	//[
	//	[" (isplayer currentcursortarget && vehicle currentcursortarget == currentcursortarget) && myJob == ""Mafia"" && player getVariable [""Mafia"",0] > 5 "],
	//	[" Namierz telefon ", " [] spawn client_fnc_tracecall; ",1]
	//],

	//[
	//	[" (isplayer currentcursortarget && vehicle currentcursortarget == currentcursortarget) && myJob == ""cop"" &&  client_aiad_actions == 2 "],
	//	[" Namierz telefon ", " [] spawn client_fnc_tracecall; ",1]
	//],

	//[
	//	[" (currentcursortarget isKindOf ""Air"" || currentcursortarget isKindOf ""Car"" || currentcursortarget isKindOf ""Boat"") && myJob == ""Mafia"" && player getVariable [""Mafia"",0] > 5 && vehicle player == player"],
		//[" (currentcursortarget isKindOf ""Air"" || currentcursortarget isKindOf ""Car"" || currentcursortarget isKindOf ""Boat"") && (myJob == ""Mafia"" || (myJob == ""Cop"" && player getvariable ""cop"" > 7 )) "],
		//["Pluskwa", " ['Pluskwa',10,client_fnc_strTracking,player,'AinvPknlMstpSnonWnonDnon_medic_1',[currentcursortarget, player],"""",0] spawn client_fnc_dotask ",1]
	//	["Pluskwa",  " [currentcursortarget, player] spawn client_fnc_strTracking; ",1]
	//],

	//[
	//	[" myJob == ""cop"" &&  client_aiad_actions >= 1 && vehicle player == player"],
		//["Pluskwa", " ['Pluskwa',10,client_fnc_strTracking,player,'AinvPknlMstpSnonWnonDnon_medic_1',[currentcursortarget, player],"""",0] spawn client_fnc_dotask ",1]
	//	["Pluskwa",  " [currentcursortarget, player] spawn client_fnc_strTrackingCop; ",1]
	//],

	[
		[" (currentcursortarget isKindOf ""Air"" || currentcursortarget isKindOf ""Car"" || currentcursortarget isKindOf ""Boat"") && myJob == ""Cop"" && (player distance getmarkerpos ""fbiHQ"" < 30 || player distance getmarkerpos ""policeHQ"" < 30) "],
		["Szukaj pluskwy", " [currentcursortarget] spawn client_fnc_disTracking; ",1]
	],

	[
		[" player distance theDrill < 5"],
		["Zabierz wiertło", " ['Pakowanie wiertła',30,client_fnc_takeDrill,player,'AinvPknlMstpSnonWnonDnon_medic_1',CurrentCursorTarget,""cg_sndimg\sounds\repair.ogg"",0] spawn client_fnc_dotask ",1]
	],

	[
		[" player distance getmarkerpos ""rally_1"" < 80 "],
		["Próba rajdowa", " [] spawn client_fnc_doRally; ",1]
	],

	[
		[" player distance getmarkerpos ""formula1"" < 40 "],
		["Wyścig", " [player] remoteexec [""server_fnc_raceenter"",2] ",1]
	],

	[
		[" player distance getmarkerpos ""formula1"" < 40 || player distance getmarkerpos ""rally_1"" < 80 "],
		["Okrążenia", " createdialog ""racetimes""; ",1]
	],

	[
		[" !client_seatbelt && vehicle player != player "],
		["Zapnij Pasy", "client_seatbelt = true;",1]
	],

	[
		[" client_seatbelt && vehicle player != player "],
		["Odepnij Pasy", "client_seatbelt = false;",1]
	],
// healing

	[
		["CurrentCursorTarget getVariable[""dead"",FALSE] && (count currentEMS < 0)"],
		["Reanimuj", "['Reanimacja',125,client_fnc_sendRevive,player,'AinvPknlMstpSnonWnonDnon_medic_1',CurrentCursorTarget,""cg_mission_files\sounds\patdown1.ogg"",0] spawn client_fnc_dotask",1]
	],

	[
		["CurrentCursorTarget getVariable[""dead"",FALSE] && (myjob == ""EMS"" || myJob == ""Fire"")"],
		["Reanimuj", "['Reanimacja',15,client_fnc_sendRevive,player,'AinvPknlMstpSnonWnonDnon_medic_1',CurrentCursorTarget,""cg_mission_files\sounds\patdown1.ogg"",0] spawn client_fnc_dotask; paycheck = paycheck + 125;",1]
	],

	[
		["(count currentEMS < 3) && !(myjob == ""EMS"")"],
		["Ulecz", "[] spawn client_fnc_openHealMenu;",1]
	],

	[
		["(myjob == ""EMS"" || myjob == ""Fire"")"],
		["Ulecz", "[] spawn client_fnc_openHealMenu;",1]
	],

	[
		[" typeof cursorobject == ""Land_buildingshospital1"" && (count currentEMS < 3)"],
		["Ulecz całkowicie", "[] spawn client_fnc_fullheal;",1]
	],

	[
		[" typeof cursorobject == ""Land_buildingshospital1"""],
		["Zmień płeć", " if(female) then {female = false; hint ""You are now male""; } else {female = true; hint ""You are now female""; }; [""NA"",""sex"",0] call client_fnc_sustain;",1]
	],

	[
		[" typeof cursorobject == ""Land_buildingshospital1"""],
		["Szukaj pluskwy", "['Szukanie pluskwy',60,client_fnc_disabletrackingme,CurrentCursorTarget,'AinvPknlMstpSnonWnonDnon_medic_1',CurrentCursorTarget,""cg_sndimg\sounds\repair.ogg"",100] spawn client_fnc_dotask;",1]
	],

	// vehicles

	[
		[" typeof cursorobject == ""Land_fs_feed_F"" "],
		["Zatankuj", "[] spawn client_fnc_fillvehicle;",2]
	],

	[
		["count attachedObjects player > 0 && attachedcar"],
		["Upuść pojazd", " [] spawn client_fnc_detach; ",2]
	],

	[
		["currentcursortarget in current_cars || myjob IN [""Cop"",""Fire"",""EMS""] "],
		["Wyciągnij graczy", " ['Wyciąganie graczy',10,client_fnc_pulloutplayers,player,'AinvPknlMstpSnonWnonDnon_medic_1',CurrentCursorTarget,""cg_mission_files\sounds\patdown1.ogg"",0] spawn client_fnc_dotask; ",2]
	],

	[
		["(getpos player) distance [1055,3660,0.014] < 30"],
		["Zezłomuj", "[""who cares"",0,CurrentCursorTarget,player] remoteExec [""Server_fnc_updateCarStatus"",2]; paycheck = paycheck + 500; hint ""Zezłomowano i doliczono do wypłaty"";",2]
	],

	[
		["(myjob == ""Cop"" || myjob == ""Fire"") && currentcursortarget isKindOf ""Car"""],
		["Schowaj($20)", "[""who cares"",0,currentcursortarget,player] remoteExec [""Server_fnc_updateCarStatus"",2];  paycheck = paycheck + 20; hint ""Odholowano i doliczono do wypłaty"";",2]
	],

	[
		["adminInteractions>=1"],
		["Schowaj pojazd", "[""who cares"",0,currentcursortarget,player] remoteExec [""Server_fnc_updateCarStatus"",2];",2]
	],

	[
		["myJob == ""Mafia"" && (getpos player) distance [1055,3660,0.014] < 20"],
		["Sprzedaj pojazd", "['Sprzedawanie',60,client_fnc_sellVehicle,player,'AinvPknlMstpSnonWnonDnon_medic_1',CurrentCursorTarget,""cg_sndimg\sounds\repair.ogg"",0] spawn client_fnc_dotask;",2]
	],

	[
		["CurrentCursorTarget isKindOf 'Car' || CurrentCursorTarget isKindOf 'Air' || CurrentCursorTarget isKindOf 'Boat' "],
		["Napraw", "['Naprawianie',(30 - mav_ttm_var_repairToReduce),client_fnc_repair,CurrentCursorTarget,'AinvPknlMstpSnonWnonDnon_medic_1',CurrentCursorTarget,""cg_sndimg\sounds\repair.ogg"",100] spawn client_fnc_dotask;",2]
	],

	[
		["(vehicle player) == player && CurrentCursorTarget in Current_Cars"],
		["Użyj klucza", "[CurrentCursorTarget] call Client_fnc_useKey",2]
	],

	[
		["(vehicle player) in Current_Cars"],
		["Użyj klucza", "[vehicle player] call Client_fnc_useKey",2]
	],

	[
		[" (currentcursortarget isKindOf ""Air"" || currentcursortarget isKindOf ""Car"" || currentcursortarget isKindOf ""Boat"") && currentcursortarget in current_cars "],
		["Obróć", " currentcursortarget setpos (getposatl currentcursortarget) ",2]
	],

	[
		[" (CurrentCursorTarget isKindOf 'Car' || CurrentCursorTarget isKindOf 'Ship') && player distance currentcursortarget < 11 && currentcursortarget in current_cars "],
		["Pchnij", "[] spawn Client_fnc_pushveh",2]
	],

	[
		["CurrentCursorTarget in Current_Cars", "!imRestrained", "myhouse distance getpos player > 50"],
		["Schowaj do garażu", "['Chowam pojazd do garażu ($10)',30, Client_fnc_storeCar,player,'AinvPknlMstpSnonWnonDnon_medic_1',CurrentCursorTarget,""cg_sndimg\sounds\repair.ogg"",10] spawn client_fnc_dotask",2]
	],

	[
		["CurrentCursorTarget in Current_Cars", "!imRestrained", "myhouse distance getpos player < 50"],
		["Schowaj do garażu", "['Chowam pojazd do garażu',10, Client_fnc_storeCar,player,'AinvPknlMstpSnonWnonDnon_medic_1',CurrentCursorTarget,""cg_sndimg\sounds\repair.ogg"",0] spawn client_fnc_dotask",2]
	],

	[
		["adminInteractions>=1"],
		["Schowaj do garażu", "['Chowam pojazd do garażu',1, Client_fnc_storeCar,player,'AinvPknlMstpSnonWnonDnon_medic_1',CurrentCursorTarget,""cg_sndimg\sounds\repair.ogg"",0] spawn client_fnc_dotask",2]
	],



//furniture
	[
		["player distance getpos currentcursortarget < 20 && currentcursortarget IN mychairs "],
		["Obróć o 180st.", " _dir = getdir currentcursortarget; currentcursortarget setdir (_dir + 180); " ,2]
	],

	[
		[" (player distance myoffice < 25 || (player distance myhouse < 25 && player getVariable ""houselevel"" > 3 )) "],
		["Usuń wszystkie meble", "  [0] spawn client_fnc_spawnfurniture; attachedfurniture = false; ",2]
	],

	[
		["player distance getpos currentcursortarget < 20 && count attachedobjects player == 0 && currentcursortarget IN mychairs "],
		["Usuń meble", " _pia = mychairs FIND currentcursortarget; mychairs DELETEAT _pia; deletevehicle currentcursortarget; ",2]
	],

	[
		["player distance getpos currentcursortarget < 20 && count attachedobjects player == 0 && currentcursortarget IN mychairs "],
		["Podnieś mebel", " fuckingcouch = currentcursortarget; fuckingcouch attachto [player,[0,1.8,2]]; attachedfurniture = true; ",2]
	],

	[
		["(player distance myoffice < 25 || (player distance myhouse < 25 && player getVariable ""houselevel"" > 3 )) && attachedfurniture "],
		["Postaw", " [] spawn client_fnc_spawnfurniture; attachedfurniture = false; ",2]
	],

	[
		["(player distance myoffice < 25 || (player distance myhouse < 25 && player getVariable ""houselevel"" > 3 )) && player distance getpos currentcursortarget < 20 && !attachedfurniture "],
		["Wybierz mebel", " createdialog ""placefurniture"" ",2]
	],


	[
		[" attachedbarrier "],
		["Postaw barierkę", " [] spawn client_fnc_placebarrier; ",2]
	],

	[
		["myjob == ""Cop"" || myjob ==""EMS"" || myjob == ""Fire"" "],
		["Usuń najbliższą barierkę", "_destroy = nearestObjects [player, [""plp_up_BarrierTapePolice8m"",""plp_up_BarrierTapePolice4m"",""plp_up_BarrierTapePolice1m"",""plp_up_woodbarrierlongpolice"",""plp_up_WoodBarrierShortPoliceLightsOn""], 10]; deletevehicle (_destroy select 0); ",2]
	],

	// player to player

	[
		["CurrentCursorTarget isKindOf 'Man' && myjob == ""Cop"""],
		["Odbierz licencję", " ['Odbieranie',5,client_fnc_revokelicense,CurrentCursorTarget,'vvv_anim_ticket',CurrentCursorTarget,""cg_mission_files\sounds\patdown1.ogg"",0] spawn client_fnc_dotask",2]
	],

	[
		[" CurrentCursorTarget isKindOf 'Man'", "(myjob == ""Cop"" || myjob == ""EMS"")"],
		["Weź dowód", " hint format[""Imię i nazwisko: %1\nPESEL: %2"",name currentcursortarget, getPlayerUID currentcursortarget]; ",2]
	],

	[
		[" CurrentCursorTarget isKindOf 'Man'", "myjob == ""Cop"""],
		["Aresztuj", "createdialog ""jailprocess""",2]
	],

	//[
	//	["!(cursortarget getVariable[""dead"",FALSE]) && CurrentCursorTarget isKindOf 'Man' && (animationstate CurrentCursorTarget) == 'amovpercmstpsnonwnondnon_amovpercmstpssurwnondnon' || (animationstate CurrentCursorTarget) == 'Incapacitated' || (animationstate CurrentCursorTarget) == 'AmovPercMstpSnonWnonDnon_Ease' || (animationstate CurrentCursorTarget) == 'Acts_AidlPsitMstpSsurWnonDnon_loop'"],
	//	["Przeszukaj", " ['Przeszukiwanie',10,client_fnc_startpatdown,CurrentCursorTarget,'AinvPknlMstpSnonWnonDnon_medic_1',CurrentCursorTarget,""cg_mission_files\sounds\patdown1.ogg"",0] spawn client_fnc_dotask ",2]
	//],

	[
		["(CurrentCursorTarget isKindOf 'Man') && !(myjob == ""Cop"" || myjob == ""Fire"" || myjob == ""EMS"") && (animationstate CurrentCursorTarget) == 'incapacitated' || (animationstate CurrentCursorTarget) == 'deadstate' || (animationstate CurrentCursorTarget) == 'amovpercmstpssurwnondnon' || (animationstate CurrentCursorTarget) == 'amovpercmstpsnonwnondnon_amovpercmstpssurwnondnon' || (animationstate CurrentCursorTarget) == 'Acts_AidlPsitMstpSsurWnonDnon_loop'"],
		["Zabierz pieniądze", " ['Zbieranie pieniędzy',10,client_fnc_takePlayerMoney,CurrentCursorTarget,'AinvPknlMstpSnonWnonDnon_medic_1',CurrentCursorTarget,""sl_client\sounds\blindfold.ogg"",0] spawn client_fnc_dotask",2]
	],

	[
		[" myJob == ""Cop""", "!imRestrained", "(!(cursortarget getVariable[""dead"",FALSE]) && CurrentCursorTarget isKindOf 'Man') && (animationstate CurrentCursorTarget) == 'incapacitated' || (animationstate CurrentCursorTarget) == 'deadstate' || (animationstate CurrentCursorTarget) == 'amovpercmstpssurwnondnon' || (animationstate CurrentCursorTarget) == 'amovpercmstpsnonwnondnon_amovpercmstpssurwnondnon'"],
		["Skuj", " ['Skuwanie',3,client_fnc_restrain,CurrentCursorTarget,'AinvPknlMstpSnonWnonDnon_medic_1',CurrentCursorTarget,""cg_mission_files\sounds\handcuff.ogg"",0] spawn client_fnc_dotask",2]
	],

	//[
	//	[" myJob != ""Cop""", "!imRestrained", "(!(cursortarget getVariable[""dead"",FALSE]) && CurrentCursorTarget isKindOf 'Man') && (animationstate CurrentCursorTarget) == 'incapacitated' || (animationstate CurrentCursorTarget) == 'deadstate' || (animationstate CurrentCursorTarget) == 'amovpercmstpssurwnondnon' || (animationstate CurrentCursorTarget) == 'amovpercmstpsnonwnondnon_amovpercmstpssurwnondnon'"],
	//	["Skuj", " ['Skuwanie',7,client_fnc_restrain,CurrentCursorTarget,'AinvPknlMstpSnonWnonDnon_medic_1',CurrentCursorTarget,""cg_mission_files\sounds\handcuff.ogg"",0] spawn client_fnc_dotask",2]
	//],

	[
		[" myJob == ""Cop""", "!imRestrained", "CurrentCursorTarget isKindOf 'Man'", "(animationstate CurrentCursorTarget) == 'Acts_AidlPsitMstpSsurWnonDnon_loop' || (animationstate CurrentCursorTarget) == 'amovpercmstpssurwnondnon' || (animationstate CurrentCursorTarget) == 'amovpercmstpsnonwnondnon_amovpercmstpssurwnondnon'"],
		["Rozkuj", " ['Rozkuwanie',5,client_fnc_unrestrain,CurrentCursorTarget,'AinvPknlMstpSnonWnonDnon_medic_1',CurrentCursorTarget,""cg_mission_files\sounds\handcuff.ogg"",0] spawn client_fnc_dotask",2]
	],

	[
		[" myJob != ""Cop""", "!imRestrained", "CurrentCursorTarget isKindOf 'Man'", "(animationstate CurrentCursorTarget) == 'Acts_AidlPsitMstpSsurWnonDnon_loop' || (animationstate CurrentCursorTarget) == 'amovpercmstpssurwnondnon' || (animationstate CurrentCursorTarget) == 'amovpercmstpsnonwnondnon_amovpercmstpssurwnondnon'"],
		["Rozkuj", " ['Rozkuwanie',60,client_fnc_unrestrain,CurrentCursorTarget,'AinvPknlMstpSnonWnonDnon_medic_1',CurrentCursorTarget,""cg_mission_files\sounds\handcuff.ogg"",0] spawn client_fnc_dotask",2]
	],

	//[
	//	[" CurrentCursorTarget isKindOf 'Man'", "!imRestrained", "(headgear CurrentCursorTarget) != 'mgsr_headbag', (animationstate CurrentCursorTarget) == 'amovpercmstpsnonwnondnon_amovpercmstpssurwnondnon' || (animationstate CurrentCursorTarget) == 'Incapacitated' || (animationstate CurrentCursorTarget) == 'AmovPercMstpSnonWnonDnon_Ease' || (animationstate CurrentCursorTarget) == 'Acts_AidlPsitMstpSsurWnonDnon_loop'"],
	//	["Załóż worek", " ['Zakładanie worka',5,client_fnc_blindfold,CurrentCursorTarget,'AinvPknlMstpSnonWnonDnon_medic_1',CurrentCursorTarget,""sl_client\sounds\blindfold.ogg"",0] spawn client_fnc_dotask ",2]
	//],

	//[
	//	[" CurrentCursorTarget isKindOf 'Man'", "!imRestrained", "(headgear CurrentCursorTarget) == 'mgsr_headbag' "],
	//	["Zdejmij worek", " ['Zdejmowanie worka',5,client_fnc_unblindfold,CurrentCursorTarget,'AinvPknlMstpSnonWnonDnon_medic_1',CurrentCursorTarget,""sl_client\sounds\blindfold.ogg"",0] spawn client_fnc_dotask",2]
	//],

	/*[
		[" CurrentCursorTarget isKindOf 'Man' && !(cursorTarget getVariable [""gagged"", false])", "(animationstate CurrentCursorTarget) == 'amovpercmstpsnonwnondnon_amovpercmstpssurwnondnon' || (animationstate CurrentCursorTarget) == 'Incapacitated' || (animationstate CurrentCursorTarget) == 'AmovPercMstpSnonWnonDnon_Ease' || (animationstate CurrentCursorTarget) == 'Acts_AidlPsitMstpSsurWnonDnon_loop'"],
		["Wsadź skarpetę", " ['Wkładam skarpetę do mordy',5,client_fnc_gag,CurrentCursorTarget,'AinvPknlMstpSnonWnonDnon_medic_1',CurrentCursorTarget,""sl_client\sounds\blindfold.ogg"",0] spawn client_fnc_dotask ",2]
	],

	[
		[" CurrentCursorTarget isKindOf 'Man' && (cursorTarget getVariable [""gagged"", false])"],
		["Wyciągnij skarpetę", " ['Wyciągam skarpetę z mordy',5,client_fnc_ungag,CurrentCursorTarget,'AinvPknlMstpSnonWnonDnon_medic_1',CurrentCursorTarget,""sl_client\sounds\blindfold.ogg"",0] spawn client_fnc_dotask",2]
	],*/

	[
		[" myJob == ""Cop"" &&  CurrentCursorTarget isKindOf 'Man'", "(animationstate CurrentCursorTarget) == 'amovpercmstpsnonwnondnon_amovpercmstpssurwnondnon' || (animationstate CurrentCursorTarget) == 'Incapacitated' || (animationstate CurrentCursorTarget) == 'AmovPercMstpSnonWnonDnon_Ease' || (animationstate CurrentCursorTarget) == 'Acts_AidlPsitMstpSsurWnonDnon_loop'"],
		["Wrzuć do auta", " ['Wrzucanie do auta',10,client_fnc_putincar,CurrentCursorTarget,'AinvPknlMstpSnonWnonDnon_medic_1',CurrentCursorTarget,""cg_mission_files\sounds\patdown1.ogg"",0] spawn client_fnc_dotask ",2]
	],

	//[
	//	[" myJob != ""Cop"" &&  CurrentCursorTarget isKindOf 'Man'", "(animationstate CurrentCursorTarget) == 'amovpercmstpsnonwnondnon_amovpercmstpssurwnondnon' || (animationstate CurrentCursorTarget) == 'Incapacitated' || (animationstate CurrentCursorTarget) == 'AmovPercMstpSnonWnonDnon_Ease' || (animationstate CurrentCursorTarget) == 'Acts_AidlPsitMstpSsurWnonDnon_loop'"],
	//	["Wrzuć do auta", " ['Wrzucanie do auta',5,client_fnc_putincar,CurrentCursorTarget,'AinvPknlMstpSnonWnonDnon_medic_1',CurrentCursorTarget,""cg_mission_files\sounds\patdown1.ogg"",0] spawn client_fnc_dotask ",2]
	//],

	[
		[" myJob != ""Fire"" && myJob != ""EMS"" && CurrentCursorTarget isKindOf 'Man'", "(animationstate CurrentCursorTarget) == 'amovpercmstpsnonwnondnon_amovpercmstpssurwnondnon' || (animationstate CurrentCursorTarget) == 'Incapacitated' || (animationstate CurrentCursorTarget) == 'AmovPercMstpSnonWnonDnon_Ease' || (animationstate CurrentCursorTarget) == 'Acts_AidlPsitMstpSsurWnonDnon_loop'"],
		["Eskortuj", " ['Rozpoczynam eskortę',5,client_fnc_attach,CurrentCursorTarget,'AinvPknlMstpSnonWnonDnon_medic_1',CurrentCursorTarget,""cg_mission_files\sounds\patdown1.ogg"",0] spawn client_fnc_dotask ",2]
	],

	[
		[" (myJob == ""EMS"" || myjob == ""Fire"") && CurrentCursorTarget isKindOf 'Man'"],
		["Eskortuj", " ['Rozpoczynam eskortę',5,client_fnc_attach,CurrentCursorTarget,'AinvPknlMstpSnonWnonDnon_medic_1',CurrentCursorTarget,""cg_mission_files\sounds\patdown1.ogg"",0] spawn client_fnc_dotask ",2]
	],

	[
		["adminInteractions>=2"],
		["Eskortuj", " ['Rozpoczynam eskortę',5,client_fnc_attach,CurrentCursorTarget,'AinvPknlMstpSnonWnonDnon_medic_1',CurrentCursorTarget,""cg_mission_files\sounds\patdown1.ogg"",0] spawn client_fnc_dotask ",2]
	],

	[
		["count attachedObjects player > 0 && !attachedcar"],
		["Puść", " ['Puszczam',5,client_fnc_detach,player,'AinvPknlMstpSnonWnonDnon_medic_1',CurrentCursorTarget,""cg_mission_files\sounds\patdown1.ogg"",0] spawn client_fnc_dotask ",2]
	],

	[
		["CurrentCursorTarget isKindOf 'Man' && bankrobber == 1"],
		["Daj pieniądze", "[CurrentCursorTarget] call Client_fnc_sl_giveCash_secure",2]
	],

	[
		["CurrentCursorTarget isKindOf 'Man' && (myjob == ""Mafia"" || myjob == ""Fire"" || myjob == ""Cop"" || myjob == ""EMS"" || myjob == ""Judge"" || myjob == ""Lawyer"" || myjob == ""Prosecutor"")"],
		["Awansuj", "[CurrentCursorTarget] spawn client_fnc_promotionStart",2]
	],

	[
		[" myJob == ""Cop"" && CurrentCursorTarget isKindOf 'Man'"],
		["Wypisz mandat", " createdialog ""kruk_slpd_ticket_give""; ",2]
	],

	[
		[" myJob == ""Cop"" && CurrentCursorTarget isKindOf 'Man' && getpos player distance [5556.2,6291.29,0.00143433] < 100"],
		["Aresztuj", " createdialog ""jailprocess"";",2]
	],



//shops and offices garages etc



	[
		["player distance myshop < 3"],
		["Wyposażenie sklepu", "[""shop""] spawn client_fnc_retreiveCargo;",3]
	],

	/*[
		["myjob == ""Cop""", "client_dtu_actions > 0", "typeof CurrentCursorTarget == ""Land_PoliceStation"""],
		["Skonfiskowane rzeczy", "[""dtu""] spawn client_fnc_retreiveCargo;",3]
	],*/

	[
		["player distance myshop < 3"],
		["Ceny", "[shopcontent,""start""] call client_fnc_updatePrices;",3]
	],

	[
		["(typeof CurrentCursorTarget) IN [""Land_buildingCommercial1"",""Land_buildingCommercial2""]"],
		["Przeglądaj sklep", "[typeof CurrentCursorTarget,player] remoteExec [""server_fnc_retreiveStoreShopper"",2]",3]
	],

	[
		["(typeof CurrentCursorTarget) == ""vvv_cannabis1_plan"" && CurrentCursorTarget in weedPlantArray && player distance CurrentCursorTarget < 3"],
		["Sprawdz roślinę", "[CurrentCursorTarget] call client_fnc_checkWeedPlant",3]
	],
	[
		["(typeof CurrentCursorTarget) == ""vvv_cannabis1_plan"" && CurrentCursorTarget getVariable [""growing"",false] && CurrentCursorTarget getVariable [""ready"",false] && player distance CurrentCursorTarget < 3"],
		["Zetnij roślinę", "[CurrentCursorTarget] call client_fnc_cutDownWeedPlant",3]
	],

	[
		//["(player distance myshop < 3) && ("""" != player getvariable ""shop"");"],
		["(player distance myshop < 3)  && (sklepotw == 1)"],
		["Zamknij Sklep", "[player] call client_fnc_closeshop;",3]
	],

	[
		["typeof currentcursortarget == ""Land_buildingApartments2A"" && player distance getpos currentcursortarget < 20"],
		["Wynajmij biuro ($250)", " createdialog ""rentshop""",3]
	],

	[
		["typeof CurrentCursorTarget == ""Land_buildingBarbers1"""],
		["Fryzjer", "closedialog 0; createdialog ""HairDresser_Menu""; [""Glasses""] spawn client_fnc_loadStore;",3]
	],

	[
		["typeof CurrentCursorTarget IN [""Land_ModernShowroom""]"],
		["Salon samochodowy", "createdialog ""buycar"";",3]
	],

	[
		["player distance myhouse < 10 || typeof CurrentCursorTarget IN [""Land_PostB""]"],
		["Sprawdź mail'a", "[] spawn client_fnc_openMail",3]
	],

	[
		["player distance (getpos nearestObject [getPos player, ""Land_ModernShowroom""]) < 30 && cursorTarget in Current_Cars && cursorTarget getVariable[""vehPrice"",0] == 0"],
		["Wystaw samochód", "createDialog ""vehSetPrice""",3]
	],

	[
		["player distance (getpos nearestObject [getPos player, ""Land_ModernShowroom""]) < 20 && currentCursorTarget in Current_Cars && (count (currentCursorTarget getVariable[""information"",[]]) != 0)"],
		["Przemaluj pojazd", " [] spawn client_fnc_vehChangeColorMenu; ",3]
	],

	[
		["cursorTarget getVariable[""vehPrice"",0] > 0 && cursorTarget in Current_Cars"],
		["Usuń cenę", "cursorTarget setVariable[""vehPrice"",0,true]",3]
	],

	[
		["player distance (getpos nearestObject [getPos player, ""Land_ModernShowroom""]) < 40 && cursorTarget isKindOf ""car"" && cursorTarget getVariable[""vehPrice"",0] > 0"],
		["Sprawdz ofertę", "[cursorTarget] spawn client_fnc_vehGetInfo;",3]
	],

	[
		["player distance (getpos nearestObject [getPos player, ""Land_ModernShowroom""]) < 40 && cursorTarget isKindOf ""car"" && cursorTarget getVariable[""vehPrice"",0] > 0 && !(cursorTarget in Current_Cars)"],
		["Kup samochód", "[] spawn client_fnc_vehBuy",3]
	],


	[
		["str CurrentCursorTarget find ""mailboxnorth"" > -1"],
		["Sprawdź pocztę", "createdialog ""client_findMail""",3]
	],

	[
		["str CurrentCursorTarget find ""embarcadero"" > -1"],
		["Sklep z łodziami", "createdialog ""buycar"";",3]
	],

	[
		["(typeOF cursorTarget) find ""Hangar_F"" > -1"],
		["Sklep z samolotami", "createdialog ""buycar"";",3]
	],

	[
		["currentcursortarget == fishTrader"],
		["Skup rzadkich ryb", "closedialog 0; createdialog ""RareFish_Menu""; [""rarefish""] spawn client_fnc_LoadStore;",3]
	],

	[
		["currentcursortarget == fishTrader"],
		["Wymień rzadką skórę", "closedialog 0; [] spawn client_fnc_rarePelt;",3]
	],

	[
		["typeof CurrentCursorTarget IN [""Land_Coffee_DED_Coffee_02_F"",""Land_Coffee_DED_Coffee_01_F""]"],
		["Sklep z ubraniami", "closedialog 0; createdialog ""Clothing_Menu""; [""clothing""] spawn client_fnc_LoadStore;",3]
	],

	[
		["typeof CurrentCursorTarget == ""Land_buildingGunStore1"""],
		["Sklep z bronią", "closedialog 0; createdialog ""gun_menu""; [""gunstore""] spawn client_fnc_LoadStore;",3]
	],

	[
		["typeof CurrentCursorTarget == ""land_cg_dunkinbronuts"""],
		["Cukiernia", "closedialog 0; createdialog ""food_menu""; [""donuts""] spawn client_fnc_LoadStore;",3]
	],

	[
		["typeof CurrentCursorTarget == ""land_cg_dunkinbronuts"" && myjob == ""Doughnuts"""],
		["Pączkowe ubranka", "closedialog 0; createdialog ""Clothing_Menu""; [""doughnuts_general""] spawn client_fnc_LoadStore;",3]
	],
	[
		["typeof CurrentCursorTarget == ""land_cg_dunkinbronuts"" && myjob == ""Doughnuts"""],
		["Pączkowe bronie", "closedialog 0; createdialog ""gun_menu""; [""doughnuts_gun""] spawn client_fnc_LoadStore;",3]
	],

	[
		["typeof CurrentCursorTarget == ""land_cg_dexters"""],
		["Pizzeria", "closedialog 0; createdialog ""food_menu""; [""pizza""] spawn client_fnc_LoadStore;",3]
	],

	[
		["typeof CurrentCursorTarget == ""Land_Market_DED_Market_01_F"""],
		["Mc Dildos", "closedialog 0; createdialog ""food_menu""; [""mcdonalds""] spawn client_fnc_LoadStore;",3]
	],

	[
		["str penis find ""carrito"" > -1 || str penis find ""modelos6ki"" > -1"],
		["Fast Food", "closedialog 0; createdialog ""food_menu""; [""hotdogs""] spawn client_fnc_LoadStore;",3]
	],

	[
		["typeof CurrentCursorTarget == ""Land_buildingBar1"""],
		["Bar", "closedialog 0; createdialog ""food_menu""; [""bar""] spawn client_fnc_LoadStore;",3]
	],

	[
		["typeof CurrentCursorTarget IN [""Land_Coffee_DED_Coffee_02_F"",""Land_fs_roof_F"",""Land_Coffee_DED_Coffee_01_F"",""Land_Shop_DED_Shop_01_F"",""Land_Shop_DED_Shop_02_F""]"],
		["Wielobranżowy", "closedialog 0; createdialog ""GeneralStore_Menu""; [""general""] spawn client_fnc_LoadStore;",3]
	],


	[
		["str CurrentCursorTarget find ""tallerdepinturaabandonado"" > -1 && (getpos player) distance [1055,3660,0.014] < 20"],
		["Parking policyjny", "[CurrentCursorTarget] call Client_fnc_openCarYard",3]
	],

	[
		["str CurrentCursorTarget find ""otros"" > -1 || str CurrentCursorTarget find ""garaje"" > -1 || str CurrentCursorTarget find ""tallerdepinturaabandonado"" > -1 || typeof CurrentCursorTarget IN [""Land_ModernShowroom""]"],
		["Ulepsz pojazd", "[] spawn client_fnc_carupdate;",3]
	],

	[
		["myjob == ""Cop""", "typeof cursorobject == ""Land_PoliceStation"""],
		["Otwórz garaż policyjny", "[] spawn client_fnc_openGaragePolice;",3]
	],

	[
		["client_aiad_actions > 0","myjob == ""Cop""", "typeof cursorobject == ""Land_PoliceStation"""],
		["Otwórz garaż AIAD", "[] spawn client_fnc_openGarageAIAD;",3]
	],

	[
		["myjob == ""EMS""", "typeof cursorobject == ""Land_buildingshospital1"""],
		["Otwórz garaż EMS", "[] spawn client_fnc_openGarageEMS;",3]
	],

	[
		["myjob == ""Fire""", "typeof cursorobject == ""Land_buildingsfiredept1"""],
		["Otwórz garaż F.D.", "[] spawn client_fnc_openGarageEMS;",3]
	],

	[
		["myJob == ""Mafia""", "player distance myhouse < 40 "],
		["Otwórz garaż Mafii", "[] spawn client_fnc_openGarageMafia;",3]
	],

	[
		["myjob != ""Cop""", "myjob != ""EMS""", "myjob != ""Fire""", "myjob != ""Mafia""", "count attachedObjects player == 0 && !attachedcar, player distance myhouse < 30 || str CurrentCursorTarget find ""otros"" > -1 || str CurrentCursorTarget find ""garaje"" > -1 || str CurrentCursorTarget find ""tallerdepinturaabandonado"" > -1 || typeof CurrentCursorTarget IN [""Land_ModernShowroom""] || (typeOF cursorTarget) find ""Hangar_F"" > -1"],
		["Otwórz garaż", "[CurrentCursorTarget] call Client_fnc_openGarage",3]
	],

	[
		["client_aiad_actions > 0","myjob == ""Cop""", "count attachedObjects player == 0 && !attachedcar, player distance myhouse < 30 || str CurrentCursorTarget find ""otros"" > -1 || str CurrentCursorTarget find ""garaje"" > -1 || str CurrentCursorTarget find ""tallerdepinturaabandonado"" > -1 || typeof CurrentCursorTarget IN [""Land_ModernShowroom""] || (typeOF cursorTarget) find ""Hangar_F"" > -1"],
		["Otwórz garaż AIAD", "[CurrentCursorTarget] call Client_fnc_openGarageAIAD",3]
	],

	[
		["myjob == ""EMS""", "count attachedObjects player == 0 && !attachedcar, player distance myhouse < 30 || str CurrentCursorTarget find ""otros"" > -1 || str CurrentCursorTarget find ""garaje"" > -1 || str CurrentCursorTarget find ""tallerdepinturaabandonado"" > -1 || typeof CurrentCursorTarget IN [""Land_ModernShowroom""] || (typeOF cursorTarget) find ""Hangar_F"" > -1"],
		["Otwórz garaż EMS", "[CurrentCursorTarget] call Client_fnc_openGarageEMS",3]
	],

	[
		["myjob == ""Fire""", "count attachedObjects player == 0 && !attachedcar, player distance myhouse < 30 || str CurrentCursorTarget find ""otros"" > -1 || str CurrentCursorTarget find ""garaje"" > -1 || str CurrentCursorTarget find ""tallerdepinturaabandonado"" > -1 || typeof CurrentCursorTarget IN [""Land_ModernShowroom""] || (typeOF cursorTarget) find ""Hangar_F"" > -1"],
		["Otwórz garaż F.D.", "[CurrentCursorTarget] call Client_fnc_openGarageEMS",3]
	],

	[
		["myJob == ""Mafia""", "count attachedObjects player == 0 && !attachedcar, player distance myhouse < 30 || str CurrentCursorTarget find ""otros"" > -1 || str CurrentCursorTarget find ""garaje"" > -1 || str CurrentCursorTarget find ""tallerdepinturaabandonado"" > -1 || typeof CurrentCursorTarget IN [""Land_ModernShowroom""] || (typeOF cursorTarget) find ""Hangar_F"" > -1"],
		["Otwórz garaż Mafii", "[CurrentCursorTarget] call Client_fnc_openGarageMafia",3]
	],

	[
		["myjob == ""Cop""", "count attachedObjects player == 0 && !attachedcar, player distance myhouse < 30 || str CurrentCursorTarget find ""otros"" > -1 || str CurrentCursorTarget find ""garaje"" > -1 || str CurrentCursorTarget find ""tallerdepinturaabandonado"" > -1 || typeof CurrentCursorTarget IN [""Land_ModernShowroom""] || (typeOF cursorTarget) find ""Hangar_F"" > -1"],
		["Otwórz garaż policyjny", "[CurrentCursorTarget] call Client_fnc_openGaragePolice",3]
	],

	[
		["adminInteractions>=2"],
		["Otwórz garaż", "[CurrentCursorTarget] call Client_fnc_openGarage",3]
	],

	[
		[" myJob == ""Mafia"" && (str CurrentCursorTarget find ""otros"" > -1 || str CurrentCursorTarget find ""garaje"" > -1 || str CurrentCursorTarget find ""tallerdepinturaabandonado"" > -1 || typeof CurrentCursorTarget IN [""Land_ModernShowroom""] ) "],
		["Otwórz garaż firmy", "[] spawn client_fnc_opengaragepolice;",3]
	],

	[
		["count attachedObjects player == 0 && !attachedcar && str CurrentCursorTarget find ""embarcadero"" > -1 && player distance currentcursortarget < 20"],
		["Otwórz garaż", "[CurrentCursorTarget] call Client_fnc_openGarage",3]
	],

	[
		["((player distance (getMarkerPos ""houseUpgrades"")) < 30)"],
		["Ulepsz dom (50k)", "[] spawn client_fnc_UpgradeHouse",3]
	],

	[
		["typeof currentcursortarget == ""Land_Market_DED_Market_03_F"""],
		["Wymień telefon", "closedialog 0; [] call client_fnc_checkPhone;",3]
	],

	[
		["typeof currentcursortarget == ""Land_Market_DED_Market_03_F"""],
		["Naładuj telefon", "closedialog 0; [""add"",""battery"",200] call client_fnc_sustain;",3]
	],


// jobs / situational

	[
		[" (myjob == ""Cop"" || (player getvariable ""legal"") > 7) && (( typeof cursorobject == ""Land_PoliceStation"") || ( vehicle player != player )) "],
		["Komputer Policyjny", "createdialog ""kruk_slpd_computer"";",4]
	],

	[
		["(typeof CurrentCursorTarget IN [""Land_Centrelink"",""Land_CommonwealthBank"",""Land_Bank_DED_House_01_F""] || str CurrentCursorTarget find ""mcl_atm"" > -1) && myJob == ""Mafia"" && (player getVariable ""Mafia"") > 6 && bankrobber == 1"],
		["Bank mafii", "[] call Client_fnc_openMafiaATM",4]
	],

	[
		["(typeof CurrentCursorTarget IN [""Land_Centrelink"",""Land_CommonwealthBank"",""Land_Bank_DED_House_01_F""] || str CurrentCursorTarget find ""mcl_atm"" > -1) && bankrobber == 1"],
		["Bankomat", "[] call Client_fnc_openATM",4]
	],

	[
		["adminInteractions>=2"],
		["Bankomat", "[] call Client_fnc_openATM",4]
	],

	[
		["player distance myhouse < 10"],
		["Otwórz wyposażenie domu", "[""house""] spawn client_fnc_retreiveCargo;",4]
	],

//	[
	//	["player distance myhouse < 10 && (typeof cursorobject ==""plp_ct_SuitcaseBigBlack"" || typeof cursorobject ==""plp_ct_woodboxlightmedium"" || typeof cursorobject ==""plp_ct_woodboxlightbig"") "],
	//	["Schowaj skrzynkę", "hint ""Schowane!""; deleteVehicle cursorobject;",4]
//	],

	[
		["typeof currentcursortarget == ""Land_buildingscourthouse1"" && (myjob == ""Cop"" || myjob == ""Judge"")"],
		["Zwołaj Jury", "  [] spawn client_fnc_startJury; ",4]
	],

	[
		["(str CurrentCursorTarget find ""gymbench"" > -1 || str CurrentCursorTarget find ""gymrack"" > -1)"],
		["Ćwicz", "[""Na rozgrzewkę są podskoki, skłony w dół i na boki!"",60,client_fnc_workout,player,'AmovPercMstpSnonWnonDnon_exercisekneeBendA',player,0] spawn client_fnc_dotask; ",4]
	],

	[
		["Mayor && player distance myhouse < 25"],
		["Załóż strój burmistrza", "[150] call Client_fnc_sl_removeBank_secure; player forceAddUniform ""vvv_traje_ejecutivo_1"";",4]
	],

	[
		["Mayor && player distance myhouse < 25"],
		["Ustaw podatki", "createdialog ""tax_menu"";",4]
	],

	[
		["clientarrested"],
		["Długo jeszcze?", "hint format[""Pozostało %1 miesięcy"",secondsLeft];",4]
	],


	//[
	//	[" (isplayer currentcursortarget && currentcursortarget isKindOf ""Man"") && myjob == ""Cop"" && player getvariable ""cop"" > 5"],
	//	["Przeszukaj dom", " [player] remoteexec [""client_fnc_raidhouse"",currentcursortarget]; ",4]
	//],

	//[
	//	[" (isplayer currentcursortarget && currentcursortarget isKindOf ""Man"") && myjob == ""Cop"" && player getvariable ""cop"" > 5"],
 	//	["Przeszukaj sklep", " [player] remoteexec [""client_fnc_raidshop"",currentcursortarget]; ",4]
	//],

	[
		[" (isplayer currentcursortarget && currentcursortarget isKindOf ""Man"") && (myjob == ""Cop"" || myjob == ""EMS"" || myjob == ""Fire"")"],
		["Poziom ‰ krwi", " [currentcursortarget] spawn client_fnc_testIntox; ",4]
	],

	[
		[""],
		["Portfel", "createdialog ""wallet_Menu""",4]
	],

	[
		["count (player call TFAR_fnc_radiosList) > 0 && !imrestrained"],
		["Telefon", "createdialog ""phoneHUD""",4]
	],

	[
		["str CurrentCursorTarget find ""cabinatelefonica"" > -1 && !callInProgress && !PhonesRinging && !TryingCall"],
		["Anonimowy telefon", "[] spawn client_fnc_callMenuPP; ",4]
	],

	[
		["adminInteractions>=2"],
		["Anonimowy telefon", "[] spawn client_fnc_callMenuPP; ",4]
	],


	[
		["!busyPlayer && !imrestrained && !clientarrested && player distance myhouse < 30"],
		["Craft Menu", "createdialog ""client_Craft_Menu""",4]
	],

	//[
	//	["((typeof CursorTarget) IN shopNameList) && ((time - (CursorTarget getVariable[""lastRobbed"",0])) > 600) && (player distance cursorTarget < 8) && (currentWeapon player != """")"],
	//	["Okradnij sklep", " [] spawn client_fnc_robShop; ",4]
	//],

	[
		["myjob == ""Cop"" && count(CurrentCursorTarget getVariable[""evidence"",[]]) != 0"],
		["Zbierz dowody", "[""Zbieram dowody"",30,client_fnc_gatherEvidence,player,'AinvPknlMstpSnonWnonDnon_medic_1',player,0] spawn client_fnc_dotask; ",4]
	],
	[
		["CurrentCursorTarget != objNull && count(CurrentCursorTarget getVariable[""evidence"",[]]) != 0"],
		["Zniszcz dowody", "[""Niszcze dowody"",60,client_fnc_destroyEvidence,player,'AinvPknlMstpSnonWnonDnon_medic_1',player,0] spawn client_fnc_dotask; ",4]
	],

	[
		["myjob == ""Fire"" && !dispatch && (player getvariable ""Fire"") > 0 "],
		["Zapis medyczna centrala", "[player,""Medic Dispatch""] spawn client_fnc_jobstart;",4]
	],

	[
		[" myjob == ""Cop"" && !dispatch && (player getvariable ""cop"") > 0 "],
		["Zapis policyjna centrala", "[player,""Police Dispatch""] spawn client_fnc_jobstart;",4]
	],

	[
		["myjob == ""EMS"" && !dispatch && (player getvariable ""ems"") > 0 "],
		["Zapis medyczna centrala", "[player,""Medic Dispatch""] spawn client_fnc_jobstart;",4]
	],

	[
		["dispatch"],
		["Wypis z centrali", "[player] remoteExec [""server_fnc_quitDispatch"",2]; dispatch = false;",4]
		//["Dispatch Sign-Off", "Dispatch = false",4]
	],

	[
		["myjob == ""Fire"" && typeof cursorobject == ""Land_buildingsfiredept1"""],
		["Skończ służbę", "[] call client_fnc_jobEnd",4]
	],

	[
		[" myjob == ""Cop"" && typeof cursorobject == ""Land_PoliceStation"""],
		["Skończ służbę", "[] call client_fnc_jobEnd",4]
	],

	[
		["myjob == ""EMS"" && typeof cursorobject == ""Land_buildingshospital1"""],
		["Skończ służbę", "[] call client_fnc_jobEnd",4]
	],

	[
		[" (myjob == ""Cop"" && (typeof cursorobject == ""Land_PoliceStation"" || typeOF cursorTarget == ""SL_Command_Unit"")) || (myjob == ""Fire"" && typeof cursorobject == ""Land_buildingsfiredept1"") || (myjob == ""EMS"" && typeof cursorobject == ""Land_buildingshospital1"") || myJob == ""Mafia"" && player distance myhouse < 20 "],
		["Podstawowy ekwipunek", "[""basic""] spawn client_fnc_setGear",4]
	],

	[
		[" (myjob == ""Cop"" && (typeof cursorobject == ""Land_PoliceStation"" || typeOF cursorTarget == ""SL_Command_Unit"" || typeOF cursorTarget == ""sl_ford350_swat"" || typeOF cursorTarget == ""Abruzzi_LencoPD_01"")) && player getvariable ""cop"" > 6 "],
		["Ekwipunek SERT", "[""riot""] spawn client_fnc_setGear",4]
	],

	[
		[" (myjob == ""Cop"" && (typeof cursorobject == ""Box_NATO_equip_F"" || typeOF cursorTarget == ""SL_Command_Unit"")) && player getvariable ""cop"" > 1 "],
		["ARSENAL", "[cursorobject] spawn client_fnc_vars"]
	],

	/*[
		[" (myjob == ""Cop"" && typeof cursorobject == ""Box_NATO_equip_F"") && teczka_allowed >= 1 "],
		["TECZKA 100K", "[2] spawn client_fnc_takeSuitcase"]
	],

	[
		[" (myjob == ""Cop"" && typeof cursorobject == ""Box_NATO_equip_F"") && teczka_allowed >= 1 "],
		["TECZKA 50K", "[3] spawn client_fnc_takeSuitcase"]
	],

	[
		[" (myjob == ""Cop"" && typeof cursorobject == ""Box_NATO_equip_F"") && teczka_allowed == 2 "],
		["TECZKA 250K", "[1] spawn client_fnc_takeSuitcase"]
	],

	[
		[" (myjob == ""Cop"" && typeof cursorobject == ""Box_NATO_equip_F"") && teczka_allowed >= 1 "],
		["TECZKA 10K", "[4] spawn client_fnc_takeSuitcase"]
	],

	[
		[" (myjob == ""Cop"" && typeof cursorobject == ""Box_NATO_equip_F"") && teczka_allowed >= 1 "],
		["TECZKA 5K", "[5] spawn client_fnc_takeSuitcase"]
	],*/

	[
		[" (myjob == ""Cop"" && typeof cursorobject == ""Box_NATO_Uniforms_F"") && player getvariable ""cop"" > 10 "],
		["MUNDURY PD", "[cursorobject] spawn client_fnc_policeClothes"]
	],

	[
		[" (myjob == ""EMS"" && typeof cursorobject == ""Box_NATO_Uniforms_F"") && player getvariable ""ems"" > 1 "],
		["Mundury EMS", "[cursorobject] spawn client_fnc_medicClothes"]
	],

	[
		[" (myjob == ""Fire"" && typeof cursorobject == ""Box_NATO_Uniforms_F"") && player getvariable ""Fire"" > 1 "],
		["Mundury FD", "[cursorobject] spawn client_fnc_medicClothes"]
	],

	[
		[" myjob == ""none"" && (player getvariable ""cop"") > 0 && typeof cursorobject == ""Land_PoliceStation"""],
		["Rozpocznij służbę", "[player,""Cop""] spawn client_fnc_jobstart;",4]
	],

	[
		["myjob == ""none"" && (player getvariable ""Fire"") > 0 && typeof cursorobject == ""Land_buildingsfiredept1"""],
		["Rozpocznij służbę FD", "[player,""Fire""] spawn client_fnc_jobstart;",4]
	],

	[
		["myjob == ""none"" && (player getvariable ""ems"") > 0 && (typeof cursorobject == ""Land_buildingshospital1"" || player distance getmarkerpos ""marker_30"" < 15 || player distance getmarkerpos ""marker_31"" < 15)"],
		["Rozpocznij służbę EMS", "[player,""EMS""] spawn client_fnc_jobstart;",4]
	],

	[
		["myjob == ""none"" && (player getvariable ""legal"") > 3"],
		["Praca sędziego", "[player,""Judge""] spawn client_fnc_jobstart;",4]
	],

	[
		["myjob == ""none"" && (player getvariable ""legal"") > 3"],
		["Praca prokuratora", "[player,""Prosecutor""] spawn client_fnc_jobstart;",4]
	],

	[
		["myjob == ""none"" && (player getvariable ""doughnuts"") > 0"],
		["Przewoznik paczkow", "[player,""doughnuts""] spawn client_fnc_jobstart;",4]
	],

	[
		["myjob == ""none"" && (player getvariable ""legal"") > 0"],
		["Praca adwokata", "[player,""Lawyer""] spawn client_fnc_jobstart;",4]
	],

	[
		["myjob == ""Judge"" || myjob == ""Lawyer"" || myjob == ""Prosecutor"" "],
		["Zakończ pracę", "[] call client_fnc_jobEnd",4]
	],

	[
		["myjob == ""none"" && (player getvariable ""mafia"") > 0 && player distance myhouse < 30"],
		["Rozpocznij działalność", "[player,""Mafia""] spawn client_fnc_jobstart;",4]
	],

	[
		["myjob == ""Mafia"""],
		["Zakończ działalność", "[] call client_fnc_jobEnd",4]
	],

	//[
	//	["(str CurrentCursorTarget find ""modelos6estateriademedicamentos"" > -1 || str CurrentCursorTarget find ""modelos6mesadeoperaciones"" > -1 || str CurrentCursorTarget find ""modelos6papeleradehospital"" > -1 || str CurrentCursorTarget find ""m6estanterialargahospital"" > -1) && player distance getmarkerpos ""drugprocess"" < 100 "],
	//	["Przetwórz narkotyki", "closedialog 0; [] spawn client_fnc_processBricks",4]
	//],

	[
		["((player distance (getMarkerPos ""sales"")) < 30)"],
		["Sprzedaj surowce", "closedialog 0; [] spawn client_fnc_sellOre",4]
	],

	//[
	//	["((player distance (getMarkerPos ""peltCuring"")) < 30)"],
	//	["Przetwórz skóry", "closedialog 0; [] spawn client_fnc_refinePelts",4]
	//],

	[
		["((player distance (getMarkerPos ""fishRefinery"")) < 70) || typeof (vehicle player) IN [""vvv_NewYacht"",""POP_Speed_yatch""] "],
		["Przetwórz ryby", "closedialog 0; [] spawn client_fnc_refineFish",4]
	],

	[
		["client_tran == 1 && ((player distance (getMarkerPos ""fishRefinery"")) < 70)"],
		["Tran", "closedialog 0; [] spawn client_fnc_refineFishOil",4]
	],

	[
		["((player distance (getMarkerPos ""logRefinery"")) < 30)"],
		["Przetwórz drewno", "closedialog 0; [] spawn client_fnc_refineLogs",4]
	],

	[
		["((player distance (getMarkerPos ""oilRefinery"")) < 30)"],
		["Przetwórz ropę", "closedialog 0; [] spawn client_fnc_refineoil;",4]
	],

	[
		["((player distance (getMarkerPos ""OreRefinery"")) < 30)"],
		["Przetwórz rudę", "closedialog 0; [] spawn client_fnc_refinemetal1;",4]
	],

	[
		["ClientArrested && player distance [5616.14,6313.37,0.00143433] < 8"],
		["Wytwórz narzędzie hakujące", "[""Wytwarzam narzędzie hakujące"",20,client_fnc_crafthackingdevice,player,'AinvPknlMstpSnonWnonDnon_medic_1',player,0] spawn client_fnc_dotask; ",4]
	],

	[
		["ClientArrested && (str CurrentCursorTarget find ""gymbench"" > -1 || str CurrentCursorTarget find ""gymrack""> -1 ) && getpos player distance [5644.19,6329.73,0.00143433] < 55"],
		["Wytwórz wytrych", "[""Wytwarzam wytrych"",60,client_fnc_craftlockpick,player,'AmovPercMstpSnonWnonDnon_exercisePushup',player,0] spawn client_fnc_dotask; ",4]
	],

	[
		["typeof CurrentCursorTarget == ""Rabbit_F"" && getdammage cursorobject == 1"],
		["Oskóruj", "deletevehicle CurrentCursorTarget; player additem ""np_upelt""; hint ""You skinned the rabbit for its pelt!""",4]
	],

	[
		["((player distance (getMarkerPos ""fishSales"")) < 20)"],
		["Sprzedaj ryby", "closedialog 0; [] spawn client_fnc_sellFish",4]
	],

	[
		["str CurrentCursorTarget find ""plp_cts_contshippinggreen"" > -1 && getpos player distance getpos currentcursortarget < 4"],
		["Przeszukaj obiekt", "[""Szukam"",7,client_fnc_searchcrates,player,'AinvPknlMstpSnonWnonDnon_medic_1',player,""cg_sndimg\sounds\repair.ogg""] spawn client_fnc_dotask; ",4]
	],

	[
		["myjob != ""none"" && (typeof CurrentCursorTarget IN [""Land_Centrelink""] || player distance myhouse < 20)"],
		["Zakończ pracę", "[] spawn client_fnc_jobEnd;",4]
	],

	[
		["myjob != ""none"" && typeof CurrentCursorTarget IN [""Land_Centrelink""]"],
		["Pojazd służbowy", "[] spawn client_fnc_spawnjobvehicle",4]
	],

	[
		["typeof CurrentCursorTarget == ""Land_Centrelink"""],
		["Szukaj pracy", "[player] spawn client_fnc_startjob",4]
	],

	[
		["myjob == ""Cop""", "cursorTarget isKindOf ""Car""", "(typeOf cursorTarget IN np_red_cars)"],
		["Sprawdź rejestrację", "_licensev = cursorTarget getVariable [""information"", 0]; _license = _licensev select 0; [""Tablica rejestracyjna"",_license,[255,69,0,1],""""] call Client_fnc_showNotification;",3]
	],

	[
		["myjob == ""Repairman"""],
		["Napraw obiekt", "[""Naprawiam obiekt"",15,client_fnc_repairNear,player,'AinvPknlMstpSnonWnonDnon_medic_1',player,""cg_sndimg\sounds\repair.ogg""] spawn client_fnc_dotask; ",4]
	],

	[
		["adminInteractions>=1"],
		["Napraw obiekt", "[""Naprawiam obiekt"",1,client_fnc_repairNear,player,'AinvPknlMstpSnonWnonDnon_medic_1',player,""cg_sndimg\sounds\repair.ogg""] spawn client_fnc_dotask; ",4]
	],

	[
		["kif_admin>=1"],
		["BAN HAMMER", "closedialog 0; createdialog ""koiladmin""; ",4]
	]
];

player setVariable["loaded", 2, false];
