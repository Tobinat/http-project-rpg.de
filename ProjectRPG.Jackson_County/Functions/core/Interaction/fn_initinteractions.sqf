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
/*
	[
		[" typeof cursortarget == ""plp_ct_HighSecMediumBlack"" "],
		["Sichere Geldmittel", " ['Sicherung',300,client_fnc_securefunds,player,'AinvPknlMstpSnonWnonDnon_medic_1',CurrentCursorTarget,""prpg_data\sounds\repair.ogg"",0] spawn client_fnc_dotask ",5]
	],

	[
		[" typeof cursorobject == ""paradadebus_civ"" "],
		["Busfahrer da?", "[] spawn client_fnc_busabfrage;",1]
	],
*/
	[
		[" myJob == ""cop"" && !(cursorTarget getVariable [""parkingTicket"", false]) && !(cursorTarget getVariable [""parkingTicket2"", false]) && currentcursortarget isKindOf ""Car"""],
		["Parkticket $250", "cursorTarget setVariable[""parkingTicket"",true,true]; [""Parkticket über $250 ausgestellt!"",false] spawn domsg;",1]
	],

	[
		[" myJob == ""cop"" && !(cursorTarget getVariable [""parkingTicket"", false]) && !(cursorTarget getVariable [""parkingTicket2"", false]) && currentcursortarget isKindOf ""Car"""],
		["Parkticket $500", "cursorTarget setVariable[""parkingTicket2"",true,true]; [""Parkticket über $500 ausgestellt!"",false] spawn domsg;",1]
	],

	[
		[" myJob == ""cop"" && currentcursortarget isKindOf ""Car"""],
		["Kennzeichen abrufen", "_numberplate = cursorTarget getVariable ""kennzeichen""; [format[""Kennzeichen: %1"",_numberplate], true] spawn domsg;",1]
	],

	[
		["client_poop > 80 && (isNull objectParent player)"],
		["Auf die Toilette gehen", " [] spawn client_fnc_takeashit; ",5]
	],

	[
		[" bankrobber == 4 && typeof cursortarget == ""plp_ct_HighSecMediumBlack"" "],
		["Nimm Bargeld", " ['Geld nehmen',180,client_fnc_takecash,player,'AinvPknlMstpSnonWnonDnon_medic_1',[CurrentCursorTarget],""prpg_data\sounds\repair.ogg"",0] spawn client_fnc_dotask ",5]
	],

	[
		[" bankrobber == 2 && typeof cursortarget == ""plp_ct_HighSecMediumBlack"""],
		["Bohrer Reparierern", " ['Repariere Bohrer',60,client_fnc_repairdrill,player,'AinvPknlMstpSnonWnonDnon_medic_1',CurrentCursorTarget,""prpg_data\sounds\repair.ogg"",0] spawn client_fnc_dotask ",5]
	],

	[
		[" ((lastforcesync + 300) < time) && client_canSync "],
		["Daten Speichern", " [] spawn client_fnc_syncData; ",5]
	],

	[
		["adminInteractions>=1"],
		["Daten Speichern", " [] spawn client_fnc_syncData; ",5]
	],

	[
		[" alive cursorTarget && cursorTarget isKindOf ""Man"" "],
		["Schlüssel geben", " [current_cars] remoteExec [""client_fnc_givekeys"",currentcursortarget]; ",5]
	],

	[
		["(licensearray select 0) == 0 && typeof CurrentCursorTarget IN [""Land_Centrelink""]"],
		["Führerschein $500", "_cashcheck = [1,500] call Client_fnc_sl_checkMoney_secure; if!(_cashCheck) exitwith { hint ""Du hast kein Geld!""; }; [] spawn client_fnc_licensetest; [500] call Client_fnc_sl_removeCash_secure; ",1]
	],

	[
		["(licensearray select 5) == 0 && typeof CurrentCursorTarget IN [""Land_Centrelink""]"],
		["LKW-Führerschein $1500", "_cashcheck = [1,1500] call Client_fnc_sl_checkMoney_secure; if!(_cashCheck) exitwith { hint ""Du hast kein Geld!""; }; [] spawn client_fnc_licensetestlkw; [1500] call Client_fnc_sl_removeCash_secure; ",1]
	],

	[
		["typeof CurrentCursorTarget == ""Land_buildingGunStore1"" && (licensearray select 1) == 0"],
		["Waffenschein $2500", "_cashcheck = [1,2500] call Client_fnc_sl_checkMoney_secure; if!(_cashCheck) exitwith { hint ""Du hast kein Geld!""; }; [""Add"",""license"",2] call client_fnc_sustain; [2500] call Client_fnc_sl_removeCash_secure; ",1]
	],


	[
		["(licensearray select 2) == 0 && typeof CurrentCursorTarget IN [""Land_Coffee_DED_Coffee_02_F"",""Land_fs_roof_F"",""Land_Coffee_DED_Coffee_01_F"",""Land_Shop_DED_Shop_01_F"",""Land_Shop_DED_Shop_02_F""]"],
		["Bergbauschein $700", "_cashcheck = [1,700] call Client_fnc_sl_checkMoney_secure; if!(_cashCheck) exitwith { hint ""Du hast kein Geld!""; }; [""Add"",""license"",3] call client_fnc_sustain; [700] call Client_fnc_sl_removeCash_secure; ",1]
	],

	[
		["(licensearray select 3) == 0 && typeof CurrentCursorTarget IN [""Land_Coffee_DED_Coffee_02_F"",""Land_fs_roof_F"",""Land_Coffee_DED_Coffee_01_F"",""Land_Shop_DED_Shop_01_F"",""Land_Shop_DED_Shop_02_F""]"],
		["Försterschein $700", "_cashcheck = [1,700] call Client_fnc_sl_checkMoney_secure; if!(_cashCheck) exitwith { hint ""Du hast kein Geld!""; }; [""Add"",""license"",4] call client_fnc_sustain; [700] call Client_fnc_sl_removeCash_secure;",1]
	],

	[
		["(licensearray select 4) == 0 && typeof CurrentCursorTarget IN [""Land_Coffee_DED_Coffee_02_F"",""Land_fs_roof_F"",""Land_Coffee_DED_Coffee_01_F"",""Land_Shop_DED_Shop_01_F"",""Land_Shop_DED_Shop_02_F""]"],
		["Angelschein $400", "_cashcheck = [1,400] call Client_fnc_sl_checkMoney_secure; if!(_cashCheck) exitwith { hint ""Du hast kein Geld!""; }; [""Add"",""license"",5] call client_fnc_sustain; [400] call Client_fnc_sl_removeCash_secure; ",1]
	],

	/*
	[
		["paintballing "],
		["Respawnen", " paintballhit = true; hint ""Respawned"";",1]
	],

	[
		["paintballing "],
		["Kugeln nehmen", " for ""_i"" from 1 to 3 do { player addItemToUniform ""140Rnd_PaintBall_blau""; }; ",1]
	],

	[
		[" player distance [3370.36,1436.92,0.00147247] < 225 && !paintballing"],
		["Starte Paintball", " [player] remoteexec [""server_fnc_paintball"",2]; ",1]
	],
	*/

	[
		[" myJob != ""cop""", " myJob == ""Mafia"" && currentcursortarget == missionVehicle && !isNull missionVehicle && player distance endOfmission < 25"],
		["Verkauf von Drogen", " ['Verkauf',60,client_fnc_finishDrugRun,player,'AinvPknlMstpSnonWnonDnon_medic_1',CurrentCursorTarget,""prpg_data\sounds\patdown1.ogg"",0] spawn client_fnc_dotask ",1]
	],

	[
		[" myJob != ""cop""", "typeof currentcursortarget == ""Land_buildingsbasement1"" && player distance getmarkerpos ""drugdump"" < 30"],
		["Drogen Verkaufen", " ['Verkaufe',30,client_fnc_dumpDrugs,player,'AinvPknlMstpSnonWnonDnon_medic_1',CurrentCursorTarget,""prpg_data\sounds\patdown1.ogg"",0] spawn client_fnc_dotask ",1]
	],
/*
	[
		[" myJob != ""cop""", "typeof currentcursortarget == ""Land_buildingsbasement1"" && player distance getmarkerpos ""drugdump"" < 30"],
		["Wasche dein Geld", " ['Ich wasche Geld',60,client_fnc_dumpMoney,player,'AinvPknlMstpSnonWnonDnon_medic_1',CurrentCursorTarget,""PRPG_Data\sounds\blindfold.ogg"",0] spawn client_fnc_dotask ",1]
	],
*/
	//[
	//	[" myJob == ""Mafia"" && (player getVariable ""Mafia"") > 5 "],
	//	["Podsłuchy", " [] spawn client_fnc_findTapped; ",1]
	//],

	[
		[" myJob == ""cop"" &&  client_aiad_actions == 2"],
		["Verwanzen", " [] spawn client_fnc_findTapped; ",1]
	],

	[
		[" myJob == ""Cop"" && (count(nearestObjects [player,[""weaponholder""],3])>0) "],
		["Konfiszieren", " [] spawn client_fnc_seizeObjects; ",1]
	],

	[
		["adminInteractions>=1"],
		["Konfiszieren", " [] spawn client_fnc_seizeObjects; ",1]
	],

	[
		[" isplayer currentcursortarget && myJob == ""Mafia"" && currentcursortarget distance player < 5"],
		["Urinieren", " [currentcursortarget] spawn client_fnc_pee; ",1]
	],

	[
	    [" myJob == ""Mafia"" "],
		["Darlehen", " [player] remoteexec [""server_fnc_MafiaOwed"",2]; ",1]
	],

	[
		[" (isplayer currentcursortarget && vehicle currentcursortarget == currentcursortarget) && myJob == ""Mafia"" && (player getvariable ""mafia"") > 5 "],
		["Gib mir einen Kredit", " [currentcursortarget] spawn Client_fnc_sl_giveLoan_secure; ",1]
	],

	  [
		[" (isplayer currentcursortarget && vehicle currentcursortarget == currentcursortarget) && myJob == ""Mafia"" && player getVariable [""Mafia"",0] > 5 "],
		[" Anruf zurückverfoilgen ", " [] spawn client_fnc_tracecall; ",1]
	   ],

	[
		[" (isplayer currentcursortarget && vehicle currentcursortarget == currentcursortarget) && myJob == ""cop"" &&  client_aiad_actions == 2 "],
		["Anruf zurückverfolgen", " [] spawn client_fnc_tracecall; ",1]
	],

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

	/* [
		[" (currentcursortarget isKindOf ""Air"" || currentcursortarget isKindOf ""Car"" || currentcursortarget isKindOf ""Boat"") && myJob == ""Cop"" && (player distance getmarkerpos ""fbiHQ"" < 30 || player distance getmarkerpos ""policeHQ"" < 30) "],
		["Nach Wanzen Suchen", " [currentcursortarget] spawn client_fnc_disTracking; ",1]
	], */

	[
		[" player distance theDrill < 5"],
		["Bohrer entfernen", " ['Packe bohrer ein',30,client_fnc_takeDrill,player,'AinvPknlMstpSnonWnonDnon_medic_1',CurrentCursorTarget,""prpg_data\sounds\repair.ogg"",0] spawn client_fnc_dotask ",1]
	],
/*
	[
		[" player distance getmarkerpos ""rally_1"" < 80 "],
		["Rally starten", " [] spawn client_fnc_doRally; ",1]
	],
*/
	[
		[" player distance getmarkerpos ""formula1"" < 40 "],
		["F1 Rennen", " [player] remoteexec [""server_fnc_raceenter"",2] ",1]
	],

	[
		[" player distance getmarkerpos ""formula1"" < 40 || player distance getmarkerpos ""rally_1"" < 80 "],
		["Runden", " createdialog ""racetimes""; ",1]
	],

	[
		[" !client_seatbelt && vehicle player != player "],
		["Anschnallen", "client_seatbelt = true; playsound ""seatbelt""; ",1]
	],

	[
		[" client_seatbelt && vehicle player != player "],
		["Abschnallen", "client_seatbelt = false; playsound ""seatbelt""; ",1]
	],
// healing
/*
	[
		["CurrentCursorTarget getVariable[""dead"",FALSE] && (count currentEMS < 0)"],
		["Reanimieren", "['Reanimiere',125,client_fnc_sendRevive,player,'AinvPknlMstpSnonWnonDnon_medic_1',CurrentCursorTarget,""prpg_data\sounds\patdown1.ogg"",0] spawn client_fnc_dotask",1]
	],

	[
		["CurrentCursorTarget getVariable[""dead"",FALSE] && (myjob == ""EMS"" || myJob == ""Fire"")"],
		["Reanimieren", "['Reanimiere',15,client_fnc_sendRevive,player,'AinvPknlMstpSnonWnonDnon_medic_1',CurrentCursorTarget,""prpg_data\sounds\patdown1.ogg"",0] spawn client_fnc_dotask; paycheck = paycheck + 125;",1]
	],

	[
		["(count currentEMS < 3) && !(myjob == ""EMS"")"],
		["Behandeln", "[] spawn client_fnc_openHealMenu;",1]
	],

	[
		["(myjob == ""EMS"" || myjob == ""Fire"")"],
		["Behandeln", "[] spawn client_fnc_openHealMenu;",1]
	],
*/
	[
		[" typeof cursorobject == ""Land_buildingshospital1"" && (count currentEMS < 1)"],
		["Selbstheilung", "[] spawn client_fnc_fullheal;",1]
	],

	[
		[" typeof cursorobject == ""Land_buildingshospital1"" && (count currentEMS < 1)"],
		["Fremdheilung", "[] spawn client_fnc_healnear;",1]
	],

	//Temporärer Workaround um Krankheiten zu Behandeln vielleicht auch einfach permanent, who gives a fuck
	[
		["myjob == ""EMS"" && currentcursortarget isKindOf ""Man""&& CurrentCursorTarget getVariable[""krank"",true] "],
		["Antibiotika verabreichen", "[cursorTarget,10,2] spawn client_fnc_fixProblem;",1]
	],


	//WIP Corona
	[
		["myjob == ""EMS"" && currentcursortarget isKindOf ""Man"" && CurrentCursorTarget getVariable[""krank"",true] "],
		["Coronavirus Test", "[cursorTarget] spawn client_fnc_testCorona;",1]
	],

	[
		[" typeof cursorobject == ""Land_buildingshospital1"""],
		["Geschlechtsumwandlung", " if(female) then {female = false; hint ""You are now male""; } else {female = true; hint ""You are now female""; }; [""NA"",""sex"",0] call client_fnc_sustain;",1]
	],

	// [
		// [" typeof cursorobject == ""Land_buildingshospital1"""],
		// ["Suche nach Wanzen", "['Szukanie pluskwy',60,client_fnc_disabletrackingme,CurrentCursorTarget,'AinvPknlMstpSnonWnonDnon_medic_1',CurrentCursorTarget,""prpg_data\sounds\repair.ogg"",100] spawn client_fnc_dotask;",1]
	// ],

	// vehicles

	[
		[" typeof cursorobject == ""Land_fs_feed_F"" "],
		["Tanken", "[] spawn client_fnc_fillvehicle;",2]
	],

	[
		["count attachedObjects player > 0 && attachedcar"],
		["Fahrzeug hinstellen", " [] spawn client_fnc_detach; ",2]
	],

	[
		["currentcursortarget in current_cars || myjob IN [""Cop"",""Fire"",""EMS""] && vehicle player == player && cursorobject iskindof ""car"" "],
		["Aus Fahrzeug ziehen", " ['Spieler herausziehen',10,client_fnc_pulloutplayers,player,'AinvPknlMstpSnonWnonDnon_medic_1',CurrentCursorTarget,""prpg_data\sounds\patdown1.ogg"",0] spawn client_fnc_dotask; ",2]
	],

	[
		["(getpos player) distance [1055,3660,0.014] < 30"],
		["Verschrotten", "[""who cares"",0,CurrentCursorTarget,player] remoteExec [""Server_fnc_updateCarStatus"",2]; paycheck = paycheck + 500; hint ""Fahrzeug wurde verschrottet, das Geld wird gutgeschrieben."";",2]
	],

	[
		["(myjob == ""Cop"" || myjob == ""EMS"") && currentcursortarget isKindOf ""Car"""],
		["Verschwinden lassen", "[""who cares"",0,currentcursortarget,player] remoteExec [""Server_fnc_updateCarStatus"",2]; hint ""Das Auto wurde von Aliens eingesammelt."";",2]
	],

	[
		["adminInteractions>=1"],
		["Verschwinden lassen", "[""who cares"",0,currentcursortarget,player] remoteExec [""Server_fnc_updateCarStatus"",2];",2]
	],

	[
		["myJob == ""Mafia"" && (getpos player) distance [7600.76,6316.81,0.00143814] < 20"],
		["Vahrzeug Verkaufen", "['Verschrotten',60,client_fnc_sellVehicle,player,'AinvPknlMstpSnonWnonDnon_medic_1',CurrentCursorTarget,""prpg_data\sounds\repair.ogg"",0] spawn client_fnc_dotask;",2]
	],

	[
		["(CurrentCursorTarget isKindOf 'Car' || CurrentCursorTarget isKindOf 'Air' || CurrentCursorTarget isKindOf 'Boat') && ( ({_x == ""prpg_item_wheel_kit""} count magazines player) != 0 || myjob == ""EMS"" || myjob == ""repairman"" || ({_x == ""prpg_item_engine_kit""} count magazines player) != 0)"],
		["Reperatur", "['Reparieren',(30 - mav_ttm_var_repairToReduce),client_fnc_repair,CurrentCursorTarget,'AinvPknlMstpSnonWnonDnon_medic_1',CurrentCursorTarget,""prpg_data\sounds\repair.ogg"",100] spawn client_fnc_dotask;",2]
	],

	[
		["(vehicle player) == player && CurrentCursorTarget in Current_Cars && cursorObject iskindof ""Car"" "],
		["Schlüssel Benutzen", "[CurrentCursorTarget] call Client_fnc_useKey",2]
	],

	[
		["(vehicle player) in Current_Cars"],
		["Schlüssel Benutzen", "[vehicle player] call Client_fnc_useKey",2]
	],

	[
		[" (currentcursortarget isKindOf ""Air"" || currentcursortarget isKindOf ""Car"" || currentcursortarget isKindOf ""Boat"") && currentcursortarget in current_cars "],
		["Drehen", " currentcursortarget setpos (getposatl currentcursortarget) ",2]
	],

	[
		[" (CurrentCursorTarget isKindOf 'Car' || CurrentCursorTarget isKindOf 'Ship') && player distance currentcursortarget < 11 && currentcursortarget in current_cars "],
		["Auto schubsen", "[] spawn Client_fnc_pushveh",2]
	],

/*
	[
		["CurrentCursorTarget in Current_Cars", "!imRestrained", "myhouse distance getpos player > 50"],
		["Fahrzeug einparken", "['Speichere Fahrzeug in der Garage',30, Client_fnc_storeCar,player,'AinvPknlMstpSnonWnonDnon_medic_1',CurrentCursorTarget,""prpg_data\sounds\repair.ogg"",10] spawn client_fnc_dotask",2]
	],
*/

	[
		["CurrentCursorTarget in Current_Cars", "!imRestrained", "myhouse distance getpos player < 20"],
		["Fahrzeug einparken", "['Speichere Fahrzeug in der Garage',5, Client_fnc_storeCar,player,'AinvPknlMstpSnonWnonDnon_medic_1',CurrentCursorTarget,""prpg_data\sounds\repair.ogg"",0] spawn client_fnc_dotask",2]
	],

	[
		["CurrentCursorTarget in Current_Cars", "!imRestrained", "player distance (getpos nearestObject [getPos player, ""Land_ModernShowroom""]) < 30 || ((player distance (getMarkerPos ""marker_10"")) < 20) || ((player distance (getMarkerPos ""marker_11"")) < 20) || ((player distance (getMarkerPos ""marker_13"")) < 20) || ((player distance (getMarkerPos ""marker_14"")) < 20)"],
		["Fahrzeug einparken", "['Speichere Fahrzeug in der Garage',5, Client_fnc_storeCar,player,'AinvPknlMstpSnonWnonDnon_medic_1',CurrentCursorTarget,""prpg_data\sounds\repair.ogg"",0] spawn client_fnc_dotask",2]
	],

	[
		["adminInteractions>=1"],
		["Fahrzeug einparken", "['Speichere Fahrzeug in der Garage',1, Client_fnc_storeCar,player,'AinvPknlMstpSnonWnonDnon_medic_1',CurrentCursorTarget,""prpg_data\sounds\repair.ogg"",0] spawn client_fnc_dotask",2]
	],

//furniture
	[
		["player distance getpos currentcursortarget < 20 && currentcursortarget IN mychairs "],
		["180 Grad drehen.", " _dir = getdir currentcursortarget; currentcursortarget setdir (_dir + 180); " ,2]
	],

	[
		[" (player distance myoffice < 25 || (player distance myhouse < 25 && player getVariable ""houselevel"" > 3 )) "],
		["Alle Möbel entfernen", "  [0] spawn client_fnc_spawnfurniture; attachedfurniture = false; ",2]
	],

	[
		["player distance getpos currentcursortarget < 20 && count attachedobjects player == 0 && currentcursortarget IN mychairs "],
		["Möbelstück  entfernen", " _pia = mychairs FIND currentcursortarget; mychairs DELETEAT _pia; deletevehicle currentcursortarget; ",2]
	],

	[
		["player distance getpos currentcursortarget < 20 && count attachedobjects player == 0 && currentcursortarget IN mychairs "],
		["Möbelstück bewegen", " fuckingcouch = currentcursortarget; fuckingcouch attachto [player,[0,1.8,2]]; attachedfurniture = true; ",2]
	],

	[
		["(player distance myoffice < 25 || (player distance myhouse < 25 && player getVariable ""houselevel"" > 3 )) && attachedfurniture "],
		["Platzieren", " [] spawn client_fnc_spawnfurniture; attachedfurniture = false; ",2]
	],

	[
		["(player distance myoffice < 25 || (player distance myhouse < 25 && player getVariable ""houselevel"" > 3 )) && player distance getpos currentcursortarget < 20 && !attachedfurniture "],
		["Möbelstück wählen", " createdialog ""placefurniture"" ",2]
	],


	[
		[" attachedbarrier "],
		["Barriere Platzieren", " [] spawn client_fnc_placebarrier; ",2]
	],

	[
		["myjob == ""Cop"" || myjob ==""EMS"" || myjob == ""Fire"" "],
		["Barriere entfernen", "_destroy = nearestObjects [player, [""plp_up_BarrierTapePolice8m"",""plp_up_BarrierTapePolice4m"",""plp_up_BarrierTapePolice1m"",""plp_up_woodbarrierlongpolice"",""plp_up_WoodBarrierShortPoliceLightsOn""], 10]; deletevehicle (_destroy select 0); ",2]
	],

	// player to player

	[
		["CurrentCursorTarget isKindOf 'Man' && myjob == ""Cop"""],
		["Lizenz entziehen", " ['Entziehe',5,client_fnc_revokelicense,CurrentCursorTarget,'vvv_anim_ticket',CurrentCursorTarget,""prpg_data\sounds\patdown1.ogg"",0] spawn client_fnc_dotask",2]
	],

	[
		["CurrentCursorTarget isKindOf 'Man'"],
		["Ausweis Zeigen", "[] spawn client_fnc_ShowLicense;",2]
	],

	//[
	//	[" CurrentCursorTarget isKindOf 'Man'", "(myjob == ""Cop"" || myjob == ""EMS"")"],
	//	["Beweise sammeln", " hint format[""Vor- und Nachname: %1\nSozialversicherung: %2"",name currentcursortarget, getPlayerUID currentcursortarget]; ",2]
	//],
/*
	[
		[" CurrentCursorTarget isKindOf 'Man'", "myjob == ""Cop"""],
		["Inhaftieren", "createdialog ""jailprocess""",2]
	],
*/
	[
		["!(cursortarget getVariable[""dead"",FALSE]) && CursorTarget isKindOf 'Man' && (CursorTarget getVariable [""ace_captives_isHandcuffed"",false])"],
		["Abtasten", " ['Suche',10,client_fnc_startpatdown,CurrentCursorTarget,'AinvPknlMstpSnonWnonDnon_medic_1',CurrentCursorTarget,""prpg_data\sounds\patdown1.ogg"",0] spawn client_fnc_dotask ",2]
	],

	[
		["(CurrentCursorTarget isKindOf 'Man') && !(myjob == ""Cop"" || myjob == ""Fire"" || myjob == ""EMS"") && (animationstate CurrentCursorTarget) == 'incapacitated' || (animationstate CurrentCursorTarget) == 'deadstate' || (animationstate CurrentCursorTarget) == 'amovpercmstpssurwnondnon' || (animationstate CurrentCursorTarget) == 'amovpercmstpsnonwnondnon_amovpercmstpssurwnondnon' || (animationstate CurrentCursorTarget) == 'Acts_AidlPsitMstpSsurWnonDnon_loop'"],
		["Geld Aufnehmen", " ['Sammle Geld',10,client_fnc_takePlayerMoney,CurrentCursorTarget,'AinvPknlMstpSnonWnonDnon_medic_1',CurrentCursorTarget,""PRPG_Data\sounds\blindfold.ogg"",0] spawn client_fnc_dotask",2]
	],
/*
	[
		[" myJob == ""Cop""", "!imRestrained", "(!(cursortarget getVariable[""dead"",FALSE]) && CurrentCursorTarget isKindOf 'Man') && (animationstate CurrentCursorTarget) == 'incapacitated' || (animationstate CurrentCursorTarget) == 'deadstate' || (animationstate CurrentCursorTarget) == 'amovpercmstpssurwnondnon' || (animationstate CurrentCursorTarget) == 'amovpercmstpsnonwnondnon_amovpercmstpssurwnondnon'"],
		["Handschellen anlegen", " ['Lege Acht an',3,client_fnc_restrain,CurrentCursorTarget,'AinvPknlMstpSnonWnonDnon_medic_1',CurrentCursorTarget,""prpg_data\sounds\handcuff.ogg"",0] spawn client_fnc_dotask",2]
	],
*/
	//[
	//	[" myJob != ""Cop""", "!imRestrained", "(!(cursortarget getVariable[""dead"",FALSE]) && CurrentCursorTarget isKindOf 'Man') && (animationstate CurrentCursorTarget) == 'incapacitated' || (animationstate CurrentCursorTarget) == 'deadstate' || (animationstate CurrentCursorTarget) == 'amovpercmstpssurwnondnon' || (animationstate CurrentCursorTarget) == 'amovpercmstpsnonwnondnon_amovpercmstpssurwnondnon'"],
	//	["Skuj", " ['Skuwanie',7,client_fnc_restrain,CurrentCursorTarget,'AinvPknlMstpSnonWnonDnon_medic_1',CurrentCursorTarget,""prpg_data\sounds\handcuff.ogg"",0] spawn client_fnc_dotask",2]
	//],
/*
	[
		[" myJob == ""Cop""", "!imRestrained", "CurrentCursorTarget isKindOf 'Man'", "(animationstate CurrentCursorTarget) == 'Acts_AidlPsitMstpSsurWnonDnon_loop' || (animationstate CurrentCursorTarget) == 'amovpercmstpssurwnondnon' || (animationstate CurrentCursorTarget) == 'amovpercmstpsnonwnondnon_amovpercmstpssurwnondnon'"],
		["Entfesseln", " ['Entfessle',5,client_fnc_unrestrain,CurrentCursorTarget,'AinvPknlMstpSnonWnonDnon_medic_1',CurrentCursorTarget,""prpg_data\sounds\handcuff.ogg"",0] spawn client_fnc_dotask",2]
	],

	[
		[" myJob != ""Cop""", "!imRestrained", "CurrentCursorTarget isKindOf 'Man'", "(animationstate CurrentCursorTarget) == 'Acts_AidlPsitMstpSsurWnonDnon_loop' || (animationstate CurrentCursorTarget) == 'amovpercmstpssurwnondnon' || (animationstate CurrentCursorTarget) == 'amovpercmstpsnonwnondnon_amovpercmstpssurwnondnon'"],
		["Entfesseln", " ['Entfessle',60,client_fnc_unrestrain,CurrentCursorTarget,'AinvPknlMstpSnonWnonDnon_medic_1',CurrentCursorTarget,""prpg_data\sounds\handcuff.ogg"",0] spawn client_fnc_dotask",2]
	],
*/
	[
		[" CurrentCursorTarget isKindOf 'Man' && (headgear CurrentCursorTarget) != 'mgsr_headbag' && (CursorTarget getVariable [""ace_captives_isHandcuffed"",false])"],
		["Augenbinde anlegen", " ['Blindfolding',5,client_fnc_blindfold,CurrentCursorTarget,'AinvPknlMstpSnonWnonDnon_medic_1',CurrentCursorTarget,""PRPG_data\sounds\blindfold.ogg"",0] spawn client_fnc_dotask ",2]
	],

	[
		[" CurrentCursorTarget isKindOf 'Man' && (headgear CurrentCursorTarget) == 'mgsr_headbag' "],
		["Augenbinde abnehmen", " ['Removing Blindfold',5,client_fnc_unblindfold,CurrentCursorTarget,'AinvPknlMstpSnonWnonDnon_medic_1',CurrentCursorTarget,""PRPG_data\sounds\blindfold.ogg"",0] spawn client_fnc_dotask",2]
	],

	/*[
		[" CurrentCursorTarget isKindOf 'Man' && !(cursorTarget getVariable [""gagged"", false])", "(animationstate CurrentCursorTarget) == 'amovpercmstpsnonwnondnon_amovpercmstpssurwnondnon' || (animationstate CurrentCursorTarget) == 'Incapacitated' || (animationstate CurrentCursorTarget) == 'AmovPercMstpSnonWnonDnon_Ease' || (animationstate CurrentCursorTarget) == 'Acts_AidlPsitMstpSsurWnonDnon_loop'"],
		["Wsadź skarpetę", " ['Wkładam skarpetę do mordy',5,client_fnc_gag,CurrentCursorTarget,'AinvPknlMstpSnonWnonDnon_medic_1',CurrentCursorTarget,""PRPG_Data\sounds\blindfold.ogg"",0] spawn client_fnc_dotask ",2]
	],

	[
		[" CurrentCursorTarget isKindOf 'Man' && (cursorTarget getVariable [""gagged"", false])"],
		["Wyciągnij skarpetę", " ['Wyciągam skarpetę z mordy',5,client_fnc_ungag,CurrentCursorTarget,'AinvPknlMstpSnonWnonDnon_medic_1',CurrentCursorTarget,""PRPG_Data\sounds\blindfold.ogg"",0] spawn client_fnc_dotask",2]
	],*/
/*
	[
		[" myJob == ""Cop"" &&  CurrentCursorTarget isKindOf 'Man'", "(animationstate CurrentCursorTarget) == 'amovpercmstpsnonwnondnon_amovpercmstpssurwnondnon' || (animationstate CurrentCursorTarget) == 'Incapacitated' || (animationstate CurrentCursorTarget) == 'AmovPercMstpSnonWnonDnon_Ease' || (animationstate CurrentCursorTarget) == 'Acts_AidlPsitMstpSsurWnonDnon_loop'"],
		["In das Auto setzen", " ['Throwing in Car',10,client_fnc_putincar,CurrentCursorTarget,'AinvPknlMstpSnonWnonDnon_medic_1',CurrentCursorTarget,""prpg_data\sounds\patdown1.ogg"",0] spawn client_fnc_dotask ",2]
	],

	//[
	//	[" myJob != ""Cop"" &&  CurrentCursorTarget isKindOf 'Man'", "(animationstate CurrentCursorTarget) == 'amovpercmstpsnonwnondnon_amovpercmstpssurwnondnon' || (animationstate CurrentCursorTarget) == 'Incapacitated' || (animationstate CurrentCursorTarget) == 'AmovPercMstpSnonWnonDnon_Ease' || (animationstate CurrentCursorTarget) == 'Acts_AidlPsitMstpSsurWnonDnon_loop'"],
	//	["Wrzuć do auta", " ['Wrzucanie do auta',5,client_fnc_putincar,CurrentCursorTarget,'AinvPknlMstpSnonWnonDnon_medic_1',CurrentCursorTarget,""prpg_data\sounds\patdown1.ogg"",0] spawn client_fnc_dotask ",2]
	//],

	[
		[" myJob != ""Fire"" && myJob != ""EMS"" && CurrentCursorTarget isKindOf 'Man'", "(animationstate CurrentCursorTarget) == 'amovpercmstpsnonwnondnon_amovpercmstpssurwnondnon' || (animationstate CurrentCursorTarget) == 'Incapacitated' || (animationstate CurrentCursorTarget) == 'AmovPercMstpSnonWnonDnon_Ease' || (animationstate CurrentCursorTarget) == 'Acts_AidlPsitMstpSsurWnonDnon_loop'"],
		["Eskortieren", " ['Beginne Eskorte',5,client_fnc_attach,CurrentCursorTarget,'AinvPknlMstpSnonWnonDnon_medic_1',CurrentCursorTarget,""prpg_data\sounds\patdown1.ogg"",0] spawn client_fnc_dotask ",2]
	],
*/
	[
		[" (myJob == ""EMS"" || myjob == ""Fire"") && CurrentCursorTarget isKindOf 'Man'"],
		["Eskortieren", " ['Beginne Eskorte',5,client_fnc_attach,CurrentCursorTarget,'AinvPknlMstpSnonWnonDnon_medic_1',CurrentCursorTarget,""prpg_data\sounds\patdown1.ogg"",0] spawn client_fnc_dotask ",2]
	],

	[
		["adminInteractions>=2"],
		["Eskortieren", " ['Beginne Eskorte',5,client_fnc_attach,CurrentCursorTarget,'AinvPknlMstpSnonWnonDnon_medic_1',CurrentCursorTarget,""prpg_data\sounds\patdown1.ogg"",0] spawn client_fnc_dotask ",2]
	],

	[
		["count attachedObjects player > 0 && !attachedcar"],
		["Loslassen", " ['Loslassen',5,client_fnc_detach,player,'AinvPknlMstpSnonWnonDnon_medic_1',CurrentCursorTarget,""prpg_data\sounds\patdown1.ogg"",0] spawn client_fnc_dotask ",2]
	],

	[
		["CurrentCursorTarget isKindOf 'Man' && bankrobber == 1"],
		["Geld geben", "[CurrentCursorTarget] call Client_fnc_sl_giveCash_secure",2]
	],

	[
		["CurrentCursorTarget isKindOf 'Man' && (myjob == ""Mafia"" || myjob == ""Fire"" || myjob == ""Cop"" || myjob == ""EMS"" || myjob == ""Judge"" || myjob == ""Lawyer"" || myjob == ""Prosecutor"")"],
		["Befördern", "[CurrentCursorTarget] spawn client_fnc_promotionStart",2]
	],

	[
		[" myJob == ""Cop"" && CurrentCursorTarget isKindOf 'Man'"],
		["Strafzettel ausgeben", " createdialog ""kruk_slpd_ticket_give""; ",2]
	],

	[
		[" myJob == ""Cop"" && cursorTarget in Current_Cars && getpos player distance [8262.96,3046.85,0.00143814] < 50"],
		["Streifenwagen", " createdialog ""prpg_slsd_license""; ",2]
	],

	[
		[" myJob == ""Cop"" && CurrentCursorTarget isKindOf 'Man' && getpos player distance [5553.52,6236.29,0.00143433] < 100"],
		["Inhaftieren", " createdialog ""jailprocess"";",2]
	],

	[
		["getpos player distance [6804.4,4635.98,0.00143957] < 20"],
		["Slotautomat", "createdialog ""SlotMachineGUI"";",2]
	],

//shops and offices garages etc
	[
		["player distance myshop < 3"],
		["Ladeninventar", "[""shop""] spawn client_fnc_retreiveCargo;",3]
	],
//Cop Aservatenkammer
	/*[
		["myjob == ""Cop""", "client_dtu_actions > 0", "typeof CurrentCursorTarget == ""Land_PoliceStation"""],
		["Skonfiskowane rzeczy", "[""dtu""] spawn client_fnc_retreiveCargo;",3]
	],*/

	[
		["player distance myshop < 3"],
		["Preise", "[shopcontent,""start""] call client_fnc_updatePrices;",3]
	],

	[
		["(typeof CurrentCursorTarget) IN [""Land_buildingCommercial1"",""Land_buildingCommercial2""]"],
		["Laden durchsuchen", "[typeof CurrentCursorTarget,player] remoteExec [""server_fnc_retreiveStoreShopper"",2]",3]
	],

	[
		["(typeof CurrentCursorTarget) == ""vvv_cannabis1_plan"" && CurrentCursorTarget in weedPlantArray && player distance CurrentCursorTarget < 3"],
		["Anlage überprüfen", "[CurrentCursorTarget] call client_fnc_checkWeedPlant",3]
	],
	[
		["(typeof CurrentCursorTarget) == ""vvv_cannabis1_plan"" && CurrentCursorTarget getVariable [""growing"",false] && CurrentCursorTarget getVariable [""ready"",false] && player distance CurrentCursorTarget < 3"],
		["Pflanzen beschneiden", "[CurrentCursorTarget] call client_fnc_cutDownWeedPlant",3]
	],

	[
		//["(player distance myshop < 3) && ("""" != player getvariable ""shop"");"],
		["(player distance myshop < 3)  && (sklepotw == 1)"],
		["Laden schließen", "[player] call client_fnc_closeshop;",3]
	],

	[
		["typeof currentcursortarget == ""Land_buildingApartments2A"" && player distance getpos currentcursortarget < 20"],
		["Büro Mieten ($250)", " createdialog ""rentshop""",3]
	],

	[
		["typeof CurrentCursorTarget == ""Land_buildingBarbers1"""],
		["Friseur", "closedialog 0; createdialog ""HairDresser_Menu""; [""Glasses""] spawn client_fnc_loadStore;",3]
	],

	[
		["typeof CurrentCursorTarget IN [""Land_ModernShowroom""]"],
		["Autohaus", "createdialog ""buycar"";",3]
	],

	[
		["player distance myhouse < 10 || typeof CurrentCursorTarget IN [""Land_PostB""]"],
		["Postfach", "[] spawn client_fnc_openMail",3]
	],

	[
		["player distance (getpos nearestObject [getPos player, ""Land_ModernShowroom""]) < 30 && cursorTarget in Current_Cars && cursorTarget getVariable[""vehPrice"",0] == 0"],
		["Auto verkaufen", "createDialog ""vehSetPrice""",3]
	],

	[
		["player distance (getpos nearestObject [getPos player, ""Land_ModernShowroom""]) < 20 && currentCursorTarget in Current_Cars && (count (currentCursorTarget getVariable[""information"",[]]) != 0)"],
		["Fahrzeug neu Lakieren", " [] spawn client_fnc_vehChangeColorMenu; ",3]
	],

	[
		["cursorTarget getVariable[""vehPrice"",0] > 0 && cursorTarget in Current_Cars"],
		["Preis Löschen", "cursorTarget setVariable[""vehPrice"",0,true]",3]
	],

	[
		["player distance (getpos nearestObject [getPos player, ""Land_ModernShowroom""]) < 40 && cursorTarget isKindOf ""car"" && cursorTarget getVariable[""vehPrice"",0] > 0"],
		["Angebot Überprüfen", "[cursorTarget] spawn client_fnc_vehGetInfo;",3]
	],

	[
		["player distance (getpos nearestObject [getPos player, ""Land_ModernShowroom""]) < 40 && cursorTarget isKindOf ""car"" && cursorTarget getVariable[""vehPrice"",0] > 0 && !(cursorTarget in Current_Cars)"],
		["Auto Kaufen", "[] spawn client_fnc_vehBuy",3]
	],


	[
		["str CurrentCursorTarget find ""mailboxnorth"" > -1"],
		["Postfach", "createdialog ""client_findMail""",3]
	],

	[
		["str CurrentCursorTarget find ""embarcadero"" > -1"],
		["Bootsladen", "createdialog ""buycar"";",3]
	],

	[
		["(typeOF cursorTarget) find ""Hangar_F"" > -1"],
		["Flugzeughändler", "createdialog ""buycar"";",3]
	],

	[
		["currentcursortarget == fishTrader"],
		["Ankauf seltener Fische", "closedialog 0; createdialog ""RareFish_Menu""; [""rarefish""] spawn client_fnc_LoadStore;",3]
	],

	[
		["currentcursortarget == fishTrader"],
		["Pelze öffnen", "closedialog 0; [] spawn client_fnc_rarePelt;",3]
	],

	[
		["typeof CurrentCursorTarget IN [""Land_Coffee_DED_Coffee_02_F"",""Land_Coffee_DED_Coffee_01_F""]"],
		["Kleidungsladen", "closedialog 0; createdialog ""Clothing_Menu""; [""clothing""] spawn client_fnc_LoadStore;",3]
	],

	[
		["typeof CurrentCursorTarget == ""Land_buildingGunStore1"""],
		["Waffenladen", "closedialog 0; createdialog ""gun_menu""; [""gunstore""] spawn client_fnc_LoadStore;",3]
	],

	//Test
	[
		["myjob == ""Cop"" && typeof cursorobject == ""Land_PoliceStation"""],
		["Cop Ausrüstung", "closedialog 0; createdialog ""GeneralStore_Menu""; [""cops""] spawn client_fnc_LoadStore;",3]
	],
/*
	[
		["myjob == ""Cop"" && typeof cursorobject == ""Land_PoliceStation"""],
		["Cop Waffenladen", "closedialog 0; createdialog ""Cops_GUN_Menu""; [""copwaffen""] spawn client_fnc_LoadStore;",3]
	],

	[
		["myjob == ""Cop"" && typeof cursorobject == ""Land_PoliceStation"""],
		["Cop Kleidungsladen", "closedialog 0; createdialog ""Cop_Clothing_Menu""; [""copskleidung""] spawn client_fnc_LoadStore;",3]
	],

	[
		["myjob == ""Cop"" && typeof cursorobject == ""Land_PoliceStation"""],
		["Cop Westen", "closedialog 0; createdialog ""Cop_Clothing_Menu""; [""copvests""] spawn client_fnc_LoadStore;",3]
	],
*/
	[
		["(myjob == ""EMS"" || myJob == ""Fire"") && typeof cursorobject == ""Land_buildingshospital1"""],
		["EMS Ausrüstung", "closedialog 0; createdialog ""GeneralStore_Menu""; [""medic""] spawn client_fnc_LoadStore;",3]
	],
/*
	[
		["(myjob == ""EMS"" || myJob == ""Fire"") && typeof cursorobject == ""Land_buildingshospital1"""],
		["EMS Kleiderkammer", "closedialog 0; createdialog ""Med_Clothing_Menu""; [""medickleidung""] spawn client_fnc_LoadStore;",3]
	],

	[
		["(myjob == ""EMS"" || myJob == ""Fire"") && typeof cursorobject == ""Land_buildingsfiredept1"""],
		["FD Ausrüstung", "closedialog 0; createdialog ""GeneralStore_Menu""; [""fd""] spawn client_fnc_LoadStore;",3]
	],

	[
		["(myjob == ""EMS"" || myJob == ""Fire"") && typeof cursorobject == ""Land_buildingsfiredept1"""],
		["FD Kleiderkammer", "closedialog 0; createdialog ""Med_Clothing_Menu""; [""fdkleidung""] spawn client_fnc_LoadStore;"]
	],
*/
	[
		["typeof CurrentCursorTarget == ""land_cg_dunkinbronuts"""],
		["Bäckerrei", "closedialog 0; createdialog ""food_menu""; [""donuts""] spawn client_fnc_LoadStore;",3]
	],

	[
		["typeof CurrentCursorTarget == ""land_cg_dunkinbronuts"" && myjob == ""Doughnuts"""],
		["Arbeitskleidung", "closedialog 0; createdialog ""Clothing_Menu""; [""doughnuts_general""] spawn client_fnc_LoadStore;",3]
	],
	[
		["typeof CurrentCursorTarget == ""land_cg_dunkinbronuts"" && myjob == ""Doughnuts"""],
		["Waffenladen", "closedialog 0; createdialog ""gun_menu""; [""doughnuts_gun""] spawn client_fnc_LoadStore;",3]
	],

	[
		["typeof CurrentCursorTarget == ""land_cg_dexters"""],
		["Pizzeria", "closedialog 0; createdialog ""food_menu""; [""pizza""] spawn client_fnc_LoadStore;",3]
	],

	[
		["typeof CurrentCursorTarget == ""land_cg_dexters"""],
		["Ripperino Pizza", "[] spawn client_fnc_pizza;",3]
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
		["Markt", "closedialog 0; createdialog ""GeneralStore_Menu""; [""general""] spawn client_fnc_LoadStore;",3]
	],

	[
		["str CurrentCursorTarget find ""tallerdepinturaabandonado"" > -1 && getpos player distance [7600.76,6316.81,0.00143814] < 30"],
		["Abschlepphof", "[CurrentCursorTarget] call Client_fnc_openCarYard",3]
	],

	[
		["str CurrentCursorTarget find ""otros"" > -1 || str CurrentCursorTarget find ""garaje"" > -1 || str CurrentCursorTarget find ""tallerdepinturaabandonado"" > -1 || typeof CurrentCursorTarget IN [""Land_ModernShowroom""]"],
		["Fahrzeug Tunen", "[] spawn client_fnc_carupdate;",3]
	],

	[
		["myjob == ""Cop""", "typeof cursorobject == ""Land_FuelStation_01_workshop_F"" && !attachedcar && vehicle player == player"],
		["Polizeigarage", "[] spawn client_fnc_openGaragePolice;",3]
	],

	[
		["myjob == ""Cop""", "typeof cursorobject == ""Land_PoliceStation"" && !attachedcar && getpos player distance [5579.38,6205.82,0.00143433] < 50 && vehicle player == player"],
		["Polizeigarage", "[] spawn client_fnc_openGaragePolice;",3]
	],

	[
		["client_aiad_actions > 0","myjob == ""Cop""", "typeof cursorobject == ""Land_PoliceStation"" && !attachedcar"],
		["AIAD-Garage", "[] spawn client_fnc_openGarageAIAD;",3]
	],

	[
		["myjob == ""EMS""", "typeof cursorobject == ""Land_buildingshospital1"" && !attachedcar"],
		["S.L.F.D.-Garage", "[] spawn client_fnc_openGarageEMS;",3]
	],

	[
		["myjob == ""EMS""", "typeof cursorobject == ""Land_buildingsfiredept1"" && !attachedcar"],
		["S.L.F.D.-Garage", "[] spawn client_fnc_openGarageEMS;",3]
	],

	[
		["myjob == ""EMS""", "typeof cursorobject == ""Land_Rxo_Air_Garage_Office"" && !attachedcar"],
		["S.L.F.D.-Garage", "[] spawn client_fnc_openGarageEMS;",3]
	],

	[
		["myjob == ""Cop""", "typeof cursorobject == ""Land_Rxo_Air_Garage_Office"" && !attachedcar"],
		["Polizeigarage", "[] spawn client_fnc_openGaragePolice;",3]
	],
	
	[
		["myJob == ""Mafia""", "player distance myhouse < 40 && !attachedcar"],
		["Mafiagarage", "[] spawn client_fnc_openGarageMafia;",3]
	],

	[
		["myjob != ""Cop""", "myjob != ""EMS""", "myjob != ""Fire""", "myjob != ""Mafia""", "count attachedObjects player == 0 && !attachedcar, player distance myhouse < 10 || str CurrentCursorTarget find ""otros"" > -1 || str CurrentCursorTarget find ""garaje"" > -1 || str CurrentCursorTarget find ""tallerdepinturaabandonado"" > -1 || typeof CurrentCursorTarget IN [""Land_ModernShowroom"",""Land_rmair_ParkingBooth""] || (typeOF cursorTarget) find ""Hangar_F"" > -1 || str CurrentCursorTarget find ""embarcadero"" > -1"],
		["Garage", "[CurrentCursorTarget] call Client_fnc_openGarage",3]
	],

	[
		["client_aiad_actions > 0","myjob == ""Cop""", "count attachedObjects player == 0 && !attachedcar, player distance myhouse < 10 || str CurrentCursorTarget find ""otros"" > -1 || str CurrentCursorTarget find ""garaje"" > -1 || str CurrentCursorTarget find ""tallerdepinturaabandonado"" > -1 || typeof CurrentCursorTarget IN [""Land_ModernShowroom""] || (typeOF cursorTarget) find ""Hangar_F"" > -1"],
		["AIAD-Garage", "[CurrentCursorTarget] call Client_fnc_openGarageAIAD",3]
	],

	[
		["myjob == ""EMS""", "count attachedObjects player == 0 && !attachedcar, player distance myhouse < 10 || str CurrentCursorTarget find ""otros"" > -1 || str CurrentCursorTarget find ""garaje"" > -1 || str CurrentCursorTarget find ""tallerdepinturaabandonado"" > -1 || typeof CurrentCursorTarget IN [""Land_ModernShowroom""] || (typeOF cursorTarget) find ""Hangar_F"" > -1"],
		["S.L.F.D. Garage", "[CurrentCursorTarget] call Client_fnc_openGarageEMS",3]
	],

	[
		["myjob == ""Fire""", "count attachedObjects player == 0 && !attachedcar, player distance myhouse < 10 || str CurrentCursorTarget find ""otros"" > -1 || str CurrentCursorTarget find ""garaje"" > -1 || str CurrentCursorTarget find ""tallerdepinturaabandonado"" > -1 || typeof CurrentCursorTarget IN [""Land_ModernShowroom""] || (typeOF cursorTarget) find ""Hangar_F"" > -1"],
		["F.D.-Garage", "[CurrentCursorTarget] call Client_fnc_openGarageEMS",3]
	],

	[
		["myJob == ""Mafia""", "count attachedObjects player == 0 && !attachedcar, player distance myhouse < 10 || str CurrentCursorTarget find ""otros"" > -1 || str CurrentCursorTarget find ""garaje"" > -1 || str CurrentCursorTarget find ""tallerdepinturaabandonado"" > -1 || typeof CurrentCursorTarget IN [""Land_ModernShowroom""] || (typeOF cursorTarget) find ""Hangar_F"" > -1"],
		["Mafiagarage", "[CurrentCursorTarget] call Client_fnc_openGarageMafia",3]
	],

	[
		["myjob == ""Cop""", "count attachedObjects player == 0 && !attachedcar, player distance myhouse < 10 || str CurrentCursorTarget find ""otros"" > -1 || str CurrentCursorTarget find ""garaje"" > -1 || str CurrentCursorTarget find ""tallerdepinturaabandonado"" > -1 || typeof CurrentCursorTarget IN [""Land_ModernShowroom""] || (typeOF cursorTarget) find ""Hangar_F"" > -1"],
		["Polizeigarage", "[CurrentCursorTarget] call Client_fnc_openGaragePolice",3]
	],

	[
		["adminInteractions>=2"],
		["Garage", "[CurrentCursorTarget] call Client_fnc_openGarage",3]
	],

	[
		[" myJob == ""Mafia"" && (str CurrentCursorTarget find ""otros"" > -1 || str CurrentCursorTarget find ""garaje"" > -1 || str CurrentCursorTarget find ""tallerdepinturaabandonado"" > -1 || typeof CurrentCursorTarget IN [""Land_ModernShowroom""] ) "],
		["Firmengarage", "[] spawn client_fnc_opengaragepolice;",3]
	],
/*
	[
		["count attachedObjects player == 0 && !attachedcar && str CurrentCursorTarget find ""embarcadero"" > -1 && player distance currentcursortarget < 20"],
		["Garage", "[CurrentCursorTarget] call Client_fnc_openGarage",3]
	],
*/
	[
		["((player distance (getMarkerPos ""houseUpgrades"")) < 20)"],
		["Haus verbessern (20k)", "[] spawn client_fnc_UpgradeHouse",3]
	],

	[
		["typeof currentcursortarget == ""Land_Market_DED_Market_03_F"""],
		["Telefon austauschen", "closedialog 0; [] call client_fnc_checkPhone;",3]
	],

	[
		["typeof currentcursortarget == ""Land_Market_DED_Market_03_F"""],
		["Telefon aufladen", "closedialog 0; [""add"",""battery"",200] call client_fnc_sustain;",3]
	],

// jobs / situational

	[
		[" myjob == ""Cop"" && (( typeof cursorobject == ""Land_PoliceStation"") || ( vehicle player != player )) "],
		["Polizeicomputer", "createdialog ""kruk_slpd_computer"";",4]
	],

	[
		[" (player getvariable ""legal"") > 1 && (( typeof cursorobject == ""Land_PoliceStation"") || ( typeof cursorobject == ""Land_prpg_courthouse"") || player distance myhouse < 15 ) "],
		["Polizeicomputer", "createdialog ""kruk_slpd_computer"";",4]
	],

	[
		["(typeof CurrentCursorTarget IN [""Land_Centrelink"",""Land_CommonwealthBank"",""Land_Bank_DED_House_01_F""] || str CurrentCursorTarget find ""mcl_atm"" > -1) && myJob == ""Mafia"" && (player getVariable ""Mafia"") > 6 && bankrobber == 1"],
		["Mafiabank", "[] call Client_fnc_openMafiaATM",4]
	],

	[
		["(typeof CurrentCursorTarget IN [""Land_Centrelink"",""Land_CommonwealthBank"",""Land_Bank_DED_House_01_F""] || str CurrentCursorTarget find ""mcl_atm"" > -1) && bankrobber == 1"],
		["ATM", "[] call Client_fnc_openATM",4]
	],

	[
		["adminInteractions>=2"],
		["ATM", "[] call Client_fnc_openATM",4]
	],

	[
		["player distance myhouse < 10"],
		["Hausinventar", "[""house""] spawn client_fnc_retreiveCargo;",4]
	],

	[
		["typeof currentcursortarget == ""Land_prpg_courthouse"" && (myjob == ""Judge"")"],
		["Jury einberufen", "  [] spawn client_fnc_startJury; ",4]
	],

	[
		["(str CurrentCursorTarget find ""gymbench"" > -1 || str CurrentCursorTarget find ""gymrack"" > -1)"],
		["Training", "[""Muskeltraining"",60,client_fnc_workout,player,'AmovPercMstpSnonWnonDnon_exercisePushup',player,0] spawn client_fnc_dotask; ",4]
	],

	[
		["Mayor && player distance myhouse < 10"],
		["Mayor Loadout", "[150] call Client_fnc_sl_removeBank_secure; player forceAddUniform ""vvv_traje_ejecutivo_1"";",4]
	],

	[
		["Mayor && player distance myhouse < 10"],
		["Steuern festlegen", "createdialog ""tax_menu"";",4]
	],

	[
		["Mayor"],
		["Der Präsident kommt", "[] spawn client_fnc_musik;",4]
	],

	[
		["clientarrested"],
		["Haftzeit", "hint format[""Noch %1 Monate"",secondsLeft];",4]
	],

	[
		[" (isplayer currentcursortarget && currentcursortarget isKindOf ""Man"") && myjob == ""Cop"" && player getvariable ""cop"" > 5"],
		["Haus durchsuchen", " [player] remoteexec [""client_fnc_raidhouse"",currentcursortarget]; ",4]
	],

	[
		[" (isplayer currentcursortarget && currentcursortarget isKindOf ""Man"") && myjob == ""Cop"" && player getvariable ""cop"" > 5"],
 		["Geschäft durchsuchen ", " [player] remoteexec [""client_fnc_raidshop"",currentcursortarget]; ",4]
	],

	[
		[" (isplayer currentcursortarget && currentcursortarget isKindOf ""Man"") && (myjob == ""Cop"" || myjob == ""EMS"" || myjob == ""Fire"")"],
		["Alkoholtest", " [currentcursortarget] spawn client_fnc_testIntox; ",4]
	],

	[
		[" (isplayer currentcursortarget && currentcursortarget isKindOf ""Man"") && (myjob == ""EMS"" || myjob == ""Fire"")"],
		["Drogentest", " [currentcursortarget] spawn client_fnc_testdrug; ",4]
	],

	[
		[""],
		["Brieftasche", "createdialog ""wallet_Menu""",4]
	],

	[
		["count (player call TFAR_fnc_radiosList) > 0 && !imrestrained && !(player getVariable [""ace_captives_isHandcuffed"",false])"],
		["Telefon", "createdialog ""phoneHUD""",4]
	],

	[
		["str CurrentCursorTarget find ""cabinatelefonica"" > -1 && !callInProgress && !PhonesRinging && !TryingCall"],
		["Anonymes telefon", "[] spawn client_fnc_callMenuPP; ",4]
	],

	[
		["adminInteractions>=2"],
		["Anonymes telefon", "[] spawn client_fnc_callMenuPP; ",4]
	],

	[
		["!busyPlayer && !imrestrained && !clientarrested && player distance myhouse < 30 && typeof cursorobject == ""prpg_workbench_normal"""],
		["Werkbank", "createdialog ""client_Craft_Menu""",3]
	],

	[
		["!busyPlayer && !imrestrained && !clientarrested && player distance myhouse < 30 && typeof cursorobject == ""prpg_workbench_clothing"""],
		["Kleidungswerkbank", "createdialog ""client_Craft_Menu_clothing""",3]
	],

	[
		["!busyPlayer && !imrestrained && !clientarrested && player distance myhouse < 30 && typeof cursorobject == ""prpg_workbench_weapon"""],
		["Waffenwerkbank", "createdialog ""client_Craft_Menu_weapon""",3]
	],

	[
		["!busyPlayer && !imrestrained && !clientarrested && player distance myhouse < 30 && typeof cursorobject == ""prpg_workbench_car"""],
		["Automobilwerkbank", "createdialog ""client_Craft_Menu_car""",3]
	],

	[
		["!busyPlayer && !imrestrained && !clientarrested && player distance myhouse < 30 && typeof cursorobject == ""prpg_workbench_normal"""],
		["Werkbank einsammeln", "[] call client_fnc_pickupworkbench",4]
	],

	[
		["!busyPlayer && !imrestrained && !clientarrested && player distance myhouse < 30 && typeof cursorobject == ""prpg_workbench_clothing"""],
		["Werkbank einsammeln", "[] call client_fnc_pickupclothingworkbench",4]
	],

	[
		["!busyPlayer && !imrestrained && !clientarrested && player distance myhouse < 30 && typeof cursorobject == ""prpg_workbench_weapon"""],
		["Werkbank einsammeln", "[] call client_fnc_pickupweaponworkbench",4]
	],

	[
		["!busyPlayer && !imrestrained && !clientarrested && player distance myhouse < 30 && typeof cursorobject == ""prpg_workbench_car"""],
		["Werkbank einsammeln", "[] call client_fnc_pickupcarworkbench",4]
	],

	[
		["((typeof CursorTarget) IN shopNameList) && ((time - (CursorTarget getVariable[""lastRobbed"",0])) > 1) && (player distance cursorTarget < 8) && (currentWeapon player != """")"],
		["Laden Ausrauben", " [] spawn client_fnc_robShop; ",4]
	],

	[
		["myjob == ""Cop"" && count(CurrentCursorTarget getVariable[""evidence"",[]]) != 0"],
		["Beweise Sammeln", "[""Sammle Beweise"",30,client_fnc_gatherEvidence,player,'AinvPknlMstpSnonWnonDnon_medic_1',player,0] spawn client_fnc_dotask; ",4]
	],
	[
		["CurrentCursorTarget != objNull && count(CurrentCursorTarget getVariable[""evidence"",[]]) != 0"],
		["Beweise zerstören", "[""Zerstöre Beweise"",60,client_fnc_destroyEvidence,player,'AinvPknlMstpSnonWnonDnon_medic_1',player,0] spawn client_fnc_dotask; ",4]
	],

	[
		["myjob == ""Fire"" && !dispatch && (player getvariable ""Fire"") > 0 "],
		["Notrufzentrale", "[player,""Medic Dispatch""] spawn client_fnc_jobstart;",4]
	],

	[
		[" myjob == ""Cop"" && !dispatch && (player getvariable ""cop"") > 0 "],
		["Notrufzentrale", "[player,""Police Dispatch""] spawn client_fnc_jobstart;",4]
	],

	[
		["myjob == ""EMS"" && !dispatch && (player getvariable ""ems"") > 0 "],
		["Notrufzentrale", "[player,""Medic Dispatch""] spawn client_fnc_jobstart;",4]
	],

	[
		["dispatch"],
		["Notrufzentrale verlassen", "[player] remoteExec [""server_fnc_quitDispatch"",2]; dispatch = false;",4]
	],

	[
		["myjob == ""Fire"" && typeof cursorobject == ""Land_buildingsfiredept1"" && vehicle player == player"],
		["Dienst beenden", "[] call client_fnc_jobEnd",4]
	],

	[
		[" myjob == ""Cop"" && typeof cursorobject == ""Land_PoliceStation"" && vehicle player == player"],
		["Dienst beenden", "[] call client_fnc_jobEnd",4]
	],

	[
		["myjob == ""EMS"" && typeof cursorobject == ""Land_buildingshospital1"" && vehicle player == player"],
		["Dienst beenden", "[] call client_fnc_jobEnd",4]
	],

	[
		[" (myjob == ""Cop"" && (typeof cursorobject == ""Land_PoliceStation"" || typeOF cursorTarget == ""SL_Command_Unit"")) || myJob == ""Mafia"" && player distance myhouse < 20 "],
		["Grundausstattung", "[""highthreat""] spawn client_fnc_setGear",4]
	],
/*
	[
		[" (myjob == ""Cop"" && (typeof cursorobject == ""Land_PoliceStation"" || typeOF cursorTarget == ""SL_Command_Unit"")) || myJob == ""Mafia"" && player distance myhouse < 20 "],
		["High Threat Loadout", "[""highthreat""] spawn client_fnc_setGear",4]
	],
*/
	[
		["(myjob == ""EMS"" && (typeof cursorobject == ""Land_buildingshospital1"" || typeof cursorobject == ""Land_buildingsfiredept1""))"],
		["EMS Loadout", "[""basic""] spawn client_fnc_setGear",4]
	],

	[
		["(myjob == ""EMS"" && (typeof cursorobject == ""Land_buildingshospital1"" || typeof cursorobject == ""Land_buildingsfiredept1""))"],
		["FD Loadout", "[""fire""] spawn client_fnc_setGear",4]
	],

	[
		["(myjob == ""EMS"" && (typeof cursorobject == ""Land_buildingshospital1"" || typeof cursorobject == ""Land_buildingsfiredept1"") && player getvariable ""ems"" > 4)"],
		["Doktor Loadout", "[""doktor""] spawn client_fnc_setGear",4]
	],

	[
		["(myjob == ""EMS"" && (typeof cursorobject == ""Land_buildingshospital1"" || typeof cursorobject == ""Land_buildingsfiredept1"") && player getvariable ""ems"" > 5)"],
		["Tactical Loadout", "[""tac""] spawn client_fnc_setGear",4]
	],

	[
		["(myjob == ""EMS"" && (typeof cursorobject == ""Land_buildingshospital1"" || typeof cursorobject == ""Land_buildingsfiredept1"") && player getvariable ""ems"" > 4)"],
		["Seuchenschutz", "[""cdc""] spawn client_fnc_setGear",4]
	],

/*
	[
		[" (myjob == ""Cop"" && (typeof cursorobject == ""Land_PoliceStation"" || typeOF cursorTarget == ""SL_Command_Unit"" || typeOF cursorTarget == ""sl_ford350_swat"" || typeOF cursorTarget == ""Abruzzi_LencoPD_01"")) && player getvariable ""cop"" > 6 "],
		["Austattung Sondereinsatzeinheit", "[""riot""] spawn client_fnc_setGear",4]
	],
*/
/*
	[
		[" myjob == ""cop"" && typeof cursorobject == ""plp_cts_PlasticBoxBlack"" "], 
		["Ausrüstung", "[cursortarget] spawn client_fnc_vars"]
	],
*/ 
	/*
	//Geldtransporte
	[
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
	],
*/
/*
	[
		[" (myjob == ""EMS"" && typeof cursorobject == ""Land_buildingshospital1"") && player getvariable ""ems"" > 1 "],
		["Kleiderkammer EMS", "[cursorobject] spawn client_fnc_medicClothes"]
	],

	[
		[" (myjob == ""Fire"" && typeof cursorobject == ""Land_buildingsfiredept1"") && player getvariable ""Fire"" > 1 "],
		["Kleiderkammer FD", "[cursorobject] spawn client_fnc_medicClothes"]
	],
*/
	[
		[" myjob == ""none"" && (player getvariable ""cop"") > 0 && typeof cursorobject == ""Land_PoliceStation"" && vehicle player == player"],
		["Dienst beginnen", "[player,""Cop""] spawn client_fnc_jobstart;",4]
	],
/*
	[
		["myjob == ""none"" && (player getvariable ""Fire"") > 0 && typeof cursorobject == ""Land_buildingsfiredept1"""],
		["Dienst beginnen", "[player,""Fire""] spawn client_fnc_jobstart;",4]
	],
*/
	[
		["myjob == ""none"" && (player getvariable ""ems"") > 0 && (typeof cursorobject == ""Land_buildingshospital1"" || typeof cursorobject == ""Land_buildingsfiredept1"") && vehicle Player == player"],
		["Dienst beginnen", "[player,""EMS""] spawn client_fnc_jobstart;",4]
	],

	[
		["myjob == ""none"" && ((player getvariable ""legal"") == 3 || (player getvariable ""legal"") == 10)"],
		["Als Richter Arbeiten", "[player,""Judge""] spawn client_fnc_jobstart;",4]
	],

	[
		["myjob == ""none"" && ((player getvariable ""legal"") == 2 || (player getvariable ""legal"") == 9)"],
		["Als Staatsanwalt Arbeiten", "[player,""Prosecutor""] spawn client_fnc_jobstart;",4]
	],

	[
		["myjob == ""none"" && (player getvariable ""doughnuts"") > 0"],
		["Karriere starten", "[player,""doughnuts""] spawn client_fnc_jobstart;",4]
	],

	[
		["myjob == ""none"" && (player getvariable ""legal"") == 1"],
		["Als Anwalt Arbeiten", "[player,""Lawyer""] spawn client_fnc_jobstart;",4]
	],

	[
		["myjob == ""Judge"" || myjob == ""Lawyer"" || myjob == ""Prosecutor"" "],
		["Dienst beenden", "[] call client_fnc_jobEnd",4]
	],

	[
		["myjob == ""none"" && (player getvariable ""mafia"") > 0 && player distance myhouse < 30"],
		["Beginne mit den Mafia geschäften", "[player,""Mafia""] spawn client_fnc_jobstart;",4]
	],

	[
		["myjob == ""Mafia"""],
		["Geschäfte beenden", "[] call client_fnc_jobEnd",4]
	],

	[
		["(str CurrentCursorTarget find ""modelos6estateriademedicamentos"" > -1 || str CurrentCursorTarget find ""modelos6mesadeoperaciones"" > -1 || str CurrentCursorTarget find ""modelos6papeleradehospital"" > -1 || str CurrentCursorTarget find ""m6estanterialargahospital"" > -1) && player distance getmarkerpos ""drugprocess"" < 100 "],
		["Drogen prozessieren", "closedialog 0; [] spawn client_fnc_processBricks",4]
	],

	[
		["((player distance (getMarkerPos ""sales"")) < 30)"],
		["Rohstoffe verkaufen", "closedialog 0; [] spawn client_fnc_sellOre",4]
	],

	[
		["((player distance (getMarkerPos ""peltCuring"")) < 30)"],
		["Pelze verkaufen", "closedialog 0; [] spawn client_fnc_refinePelts",4]
	],

	[
		["((player distance (getMarkerPos ""fishRefinery"")) < 70) || typeof (vehicle player) IN [""vvv_NewYacht"",""POP_Speed_yatch""] "],
		["Fisch Verarbeiten", "closedialog 0; [] spawn client_fnc_refineFish",4]
	],

	[
		["client_tran == 1 && ((player distance (getMarkerPos ""fishRefinery"")) < 70)"],
		["Tran", "closedialog 0; [] spawn client_fnc_refineFishOil",4]
	],

	[
		["((player distance (getMarkerPos ""logRefinery"")) < 30)"],
		["Holz verarbeiten", "closedialog 0; [] spawn client_fnc_refineLogs",4]
	],

	[
		["((player distance (getMarkerPos ""oilRefinery"")) < 30)"],
		["Öl raffiniern", "closedialog 0; [] spawn client_fnc_refineoil;",4]
	],
	
	[
		["((player distance (getMarkerPos ""oilRefinery"")) < 30)"],
		["Gummi Produzieren", "closedialog 0; [] spawn client_fnc_refineoil2;",4]
	],

	[
		["((player distance (getMarkerPos ""OreRefinery"")) < 30)"],
		["Erze verarbeiten", "closedialog 0; [] spawn client_fnc_refinemetal1;",4]
	],
	
	[
		["((player distance (getMarkerPos ""weber"")) < 30)"],
		["Stoff weben", "closedialog 0; [] spawn client_fnc_refinegarn;",4]
	],

	[
		["ClientArrested && player distance [5616.14,6313.37,0.00143433] < 8"],
		["Hacking-Tool Herstellen", "[""Erstelle Hacking-Tool"",20,client_fnc_crafthackingdevice,player,'AinvPknlMstpSnonWnonDnon_medic_1',player,0] spawn client_fnc_dotask; ",4]
	],

	[
		["ClientArrested && (str CurrentCursorTarget find ""gymbench"" > -1 || str CurrentCursorTarget find ""gymrack""> -1 ) && getpos player distance [5571.2,6289.79,0.00143433] < 55"],
		["Stelle Dietrich her", "[""Dietrich Feilen"",60,client_fnc_craftlockpick,player,'AmovPercMstpSnonWnonDnon_exercisePushup',player,0] spawn client_fnc_dotask; ",4]
	],

	[
		["typeof CurrentCursorTarget == ""Rabbit_F"" && getdammage cursorobject == 1 && getpos player distance cursorobject < 3"],
		["Haut abziehen", "deletevehicle CurrentCursorTarget; player additem ""np_upelt""; hint ""Du hast den Hasen gehäutet!""",4]
	],

	[
		["typeof CurrentCursorTarget == ""Sheep_random_F"" && getdammage cursorobject == 1 && getpos player distance cursorobject < 3"],
		["Haut abziehen", "deletevehicle CurrentCursorTarget; player additem ""np_upelt""; player additem ""np_upelt""; player additem ""np_upelt""; hint ""Du hast das Schaf gehäutet!""",4]
	],

	[
		["typeof CurrentCursorTarget == ""Goat_random_F"" && getdammage cursorobject == 1 && getpos player distance cursorobject < 3"],
		["Haut abziehen", "deletevehicle CurrentCursorTarget; player additem ""np_upelt""; player additem ""np_upelt""; player additem ""np_upelt""; hint ""Du hast die Ziege gehäutet!""",4]
	],

	[
		["((player distance (getMarkerPos ""fishSales"")) < 20)"],
		["Fische verkaufen", "closedialog 0; [] spawn client_fnc_sellFish",4]
	],

	[
		["str Cursorobject find ""cargo"" > -1 && getpos player distance getpos cursorobject < 8 && ({_x == ""cg_lockpick""} count magazines player) != 0"],
		["Container knacken", "[""Öffne Container"",15,client_fnc_searchcrates,player,'AinvPknlMstpSnonWnonDnon_medic_1',player,""prpg_data\sounds\repair.ogg""] spawn client_fnc_dotask; ",4]
	],

	[
		["myjob != ""none"" && (typeof CurrentCursorTarget IN [""Land_Centrelink""] || player distance myhouse < 20)"],
		["Job beenden", "[] spawn client_fnc_jobEnd;",4]
	],

	[
		["myjob != ""none"" && typeof CurrentCursorTarget IN [""Land_Centrelink""]"],
		["Firmenwagen", "[] spawn client_fnc_spawnjobvehicle",4]
	],

	[
		["typeof CurrentCursorTarget == ""Land_Centrelink"""],
		["Arbeitsamt", "[player] spawn client_fnc_startjob",4]
	],

	//[
	//	["myjob == ""Cop""", "cursorTarget isKindOf ""Car""", "(typeOf cursorTarget IN np_red_cars)"],
	//	["Kenzeichen überprüfen", "_licensev = cursorTarget getVariable [""information"", 0]; _license = _licensev select 0; [""Kennzeichen"",_license,[255,69,0,1],""""] call Client_fnc_showNotification;",3]
	//],

	[
		["myjob == ""Repairman"""],
		["Repariere das Objekt", "[""Ich repariere das Objekt"",15,client_fnc_repairNear,player,'AinvPknlMstpSnonWnonDnon_medic_1',player,""prpg_data\sounds\repair.ogg""] spawn client_fnc_dotask; ",4]
	],

	[
		["typeof CurrentCursorTarget == ""prpg_kamaz_6550"" && ((cursorTarget distance (getMarkerPos ""marker_5"")) < 100) && cursortarget animationPhase ""dizel_slang"" < 0.5"],
		["Öl Abpumpen", "[]spawn client_fnc_pumpOil;",4]
	],

	[
		["adminInteractions>=1"],
		["Objekt reparieren", "[""Ich repariere das Objekt"",1,client_fnc_repairNear,player,'AinvPknlMstpSnonWnonDnon_medic_1',player,""prpg_data\sounds\repair.ogg""] spawn client_fnc_dotask; ",4]
	],

	[
		["myJob == ""Cop"" && CurrentCursorTarget isKindOf 'Man' && (CursorTarget getVariable [""ace_captives_isHandcuffed"",false]) &&  ({_x == ""np_beefsoup""} count magazines player) != 0"],
		["Essen geben", " [""add"",""food"",100] remoteExec [""client_fnc_sustain"", cursorTarget]; [""add"",""poop"",10] remoteExec [""client_fnc_sustain"", cursorTarget]; [""np_beefsoup"",0] spawn client_fnc_removeitem; ",4]
	],

	[
		["myJob == ""Cop"" && CurrentCursorTarget isKindOf 'Man' && (CursorTarget getVariable [""ace_captives_isHandcuffed"",false]) &&  ({_x == ""np_water""} count magazines player) != 0"],
		["Trinken geben", " [""add"",""drink"",100] remoteExec [""client_fnc_sustain"", cursorTarget]; [""np_water"",0] spawn client_fnc_removeitem; ",4]
	],

	[
		["kif_admin>=1"],
		["BAN HAMMER", "closedialog 0; createdialog ""koiladmin""; ",4]
	]
	// SPIELAUTOMATEN FÜR DIE ZUKUNFT // KOMMA NICHT VERGESSEN !!!!!!!!!!!!!!!!!!!!!!!!!!
	//[
	//	["getpos player distance [6803.76,4640.5,0.00143814] < 15"],
	//	["Spielautomat","    ",4]
	//]
];

player setVariable["loaded", 2, false];
