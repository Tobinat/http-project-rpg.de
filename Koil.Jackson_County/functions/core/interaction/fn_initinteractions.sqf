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

NoPixel_InteractionMenuItems = [

	[ 
		[" typeof cursortarget == ""plp_ct_HighSecMediumBlack"" "], 
		["Secure Funds", " ['Securing',300,client_fnc_securefunds,player,'AinvPknlMstpSnonWnonDnon_medic_1',[CurrentCursorTarget],""cg_mission_files\sounds\repair.ogg"",0] spawn client_fnc_dotask ",5] 
	],

	[ 
		[" bankrobber == 4 && typeof cursortarget == ""plp_ct_HighSecMediumBlack"" "], 
		["Take Cash", " ['Taking Money',180,client_fnc_takecash,player,'AinvPknlMstpSnonWnonDnon_medic_1',[CurrentCursorTarget],""cg_mission_files\sounds\repair.ogg"",0] spawn client_fnc_dotask ",5] 
	],

	[ 
		[" bankrobber == 2 && typeof cursortarget == ""plp_ct_HighSecMediumBlack"""], 
		["Repair Drill", " ['Repairing Drill',60,client_fnc_repairdrill,player,'AinvPknlMstpSnonWnonDnon_medic_1',CurrentCursorTarget,""cg_mission_files\sounds\repair.ogg"",0] spawn client_fnc_dotask ",5] 
	],


	[ 
		[" (lastforcesync + 300) < time && ( myjob != ""Cop"" && myjob != ""EMS"" && myjob != ""Fire"" ) "], 
		["Sync Data (5min CD)", "	_new = player getVariable ""wallet"";	[player, ""wallet"", _new] remoteExec [""Server_fnc_setVariable"",2]; _loadout = getunitloadout player; [player,1,getplayeruid player,name player,_loadout] remoteExec [""server_fnc_steppedsync"",2]; lastforcesync = time; ",5] 
	],

	[ 
		["  "], 
		["Give Keys", " [] spawn client_fnc_findplayerskeys; ",5] 
	],

	[ 
		[" (licensearray select 0) == 0 && (str CurrentCursorTarget find ""otros"" > -1 || str CurrentCursorTarget find ""garaje"" > -1 || str CurrentCursorTarget find ""tallerdepinturaabandonado"" > -1 || typeof CurrentCursorTarget IN [""Land_ModernShowroom""])"], 
		["Vehicle License 1.5K", "[1,1500] spawn client_fnc_tryLicense;",1] 
	],

	[
		["typeof CurrentCursorTarget == ""Land_buildingGunStore1"" && (licensearray select 1) == 0"],
		["Gun License 5K", " [2,5000] spawn client_fnc_tryLicense; ",1]
	],

	[
		["(licensearray select 2) == 0 && typeof CurrentCursorTarget IN [""Land_Coffee_DED_Coffee_02_F"",""Land_fs_roof_F"",""Land_Coffee_DED_Coffee_01_F"",""Land_Shop_DED_Shop_01_F"",""Land_Shop_DED_Shop_02_F""]"],
		["Mining License", " [""Add"",""license"",3] call client_fnc_sustain; ",1]
	],

	[
		["(licensearray select 3) == 0 && typeof CurrentCursorTarget IN [""Land_Coffee_DED_Coffee_02_F"",""Land_fs_roof_F"",""Land_Coffee_DED_Coffee_01_F"",""Land_Shop_DED_Shop_01_F"",""Land_Shop_DED_Shop_02_F""]"],
		["Wood Logging License", "[""Add"",""license"",4] call client_fnc_sustain;",1]
	],

	[
		["(licensearray select 4) == 0 && typeof CurrentCursorTarget IN [""Land_Coffee_DED_Coffee_02_F"",""Land_fs_roof_F"",""Land_Coffee_DED_Coffee_01_F"",""Land_Shop_DED_Shop_01_F"",""Land_Shop_DED_Shop_02_F""]"],
		["Fishing License", "[""Add"",""license"",5] call client_fnc_sustain;",1]
	],

	[
		["paintballing "],
		["Respawn", " paintballhit = true; hint ""Respawned"";",1]
	],

	[
		["paintballing "],
		["Refill Paintball", " for ""_i"" from 1 to 3 do { player addItemToUniform ""140Rnd_PaintBall_blau""; }; ",1]
	],

	[
		[" player distance [3370.36,1436.92,0.00147247] < 225 && !paintballing"],
		["Start Paintball", " [player] remoteexec [""server_fnc_paintball"",2]; ",1]
	],


	[
		[" myJob == ""Mafia"" && currentcursortarget == missionVehicle && !isNull missionVehicle && player distance endOfmission < 25"],
		["Finish Drug Run", " ['Dumping Drugs',300,client_fnc_finishDrugRun,player,'AinvPknlMstpSnonWnonDnon_medic_1',CurrentCursorTarget,""cg_mission_files\sounds\patdown1.ogg"",0] spawn client_fnc_dotask ",1]
	],

	[
		["typeof currentcursortarget == ""Land_buildingsbasement1"" && player distance getmarkerpos ""drugdump"" < 30"],
		["Dump Drugs", " ['Dumping Drugs',15,client_fnc_dumpDrugs,player,'AinvPknlMstpSnonWnonDnon_medic_1',CurrentCursorTarget,""cg_mission_files\sounds\patdown1.ogg"",0] spawn client_fnc_dotask ",1]
	],

	[
		[" myJob == ""Mafia"" "],
		["Open Traced Calls", " [] spawn client_fnc_findTapped; ",1]
	],

	[
		[" myJob == ""Cop"" && (count(nearestObjects [player,[""weaponholder""],3])>0) "],
		["Seize Objects", " [] spawn client_fnc_seizeObjects; ",1]
	],

	[
		[" isplayer currentcursortarget && myJob == ""Mafia"" && currentcursortarget distance player < 5"],
		["Urinate", " [currentcursortarget] spawn client_fnc_pee; ",1]
	],

	[
		[" myJob == ""Mafia"" "],
		["Open Loans", " [player] remoteexec [""server_fnc_MafiaOwed"",2]; ",1]
	],

	[
		[" (isplayer currentcursortarget && vehicle currentcursortarget == currentcursortarget) && myJob == ""Mafia"" && player getvariable ""mafia"" > 5 "],
		["Give Loan", " [currentcursortarget] spawn client_fnc_giveLoan; ",1]
	],

	[
		[" (isplayer currentcursortarget && vehicle currentcursortarget == currentcursortarget) && myJob == ""Mafia"" "],
		["Track Calls", " [] spawn client_fnc_tracecall; ",1]
	],

	[
		[" (isplayer currentcursortarget && currentcursortarget isKindOf ""Man"") && myJob == ""Mafia"" "],
		["Track Player ($250)", " ['Tracking',3,client_fnc_trackplayer,player,'vvv_anim_ticket',CurrentCursorTarget,""cg_mission_files\sounds\patdown1.ogg"",0] spawn client_fnc_dotask ",1]
	],

	[
		[" (currentcursortarget isKindOf ""Air"" || currentcursortarget isKindOf ""Car"" || currentcursortarget isKindOf ""Boat"") && myJob == ""Mafia"" "],
		["Track Car", " currentcursortarget setvariable [""tracking"",true,false]; ",1]
	],

	[
		[" player distance getmarkerpos ""rally_1"" < 80 "],
		["Rally Trials", " [] spawn client_fnc_doRally; ",1]
	],

	[
		[" player distance getmarkerpos ""formula1"" < 40 "],
		["Race Sign-In", " [player] remoteexec [""server_fnc_raceenter"",2] ",1]
	],

	[
		[" player distance getmarkerpos ""formula1"" < 40 || player distance getmarkerpos ""rally_1"" < 80 "],
		["Fastest Laps", " createdialog ""racetimes""; ",1]
	],

	[
		[" !client_seatbelt && vehicle player != player "],
		["Seatbelt On", "client_seatbelt = true;",1]
	],

	[
		[" client_seatbelt && vehicle player != player "],
		["Seatbelt Off", "client_seatbelt = false;",1]
	],
// healing

	[
		["CurrentCursorTarget getVariable[""dead"",FALSE] && (count currentEMS < 0)"],
		["CPR Player", "['Reviving',125,client_fnc_sendRevive,player,'AinvPknlMstpSnonWnonDnon_medic_1',CurrentCursorTarget,""cg_mission_files\sounds\patdown1.ogg"",0] spawn client_fnc_dotask",1]
	],


	[
		["CurrentCursorTarget getVariable[""dead"",FALSE] && (myjob == ""EMS"" || myJob == ""Fire"")"],
		["Revive Player", "['Reviving',15,client_fnc_sendRevive,player,'AinvPknlMstpSnonWnonDnon_medic_1',CurrentCursorTarget,""cg_mission_files\sounds\patdown1.ogg"",0] spawn client_fnc_dotask",1]
	],

	[
		[""],
		["Heal Near", "createdialog ""FindPlayer_Menu"";",1]
	],

	[
		[" typeof cursorobject == ""Land_buildingshospital1"""],
		["Full Heal", "[] spawn client_fnc_fullheal;",1]
	],



	[
		[" typeof cursorobject == ""Land_buildingshospital1"""],
		["Sex Change", " if(female) then {female = false; hint ""You are now male""; } else {female = true; hint ""You are now female""; }; [""NA"",""sex"",0] call client_fnc_sustain;",1]
	],




	[
		[" typeof cursorobject == ""Land_buildingshospital1"""],
		["Search Tracking", "[] spawn client_fnc_disabletrackingme;",1]
	],

	// vehicles

	[
		[" typeof cursorobject == ""Land_fs_feed_F"" "],
		["Fill Vehicle", "[] spawn client_fnc_fillvehicle;",2]
	],

	[
		["count attachedObjects player > 0 && attachedcar"],
		["Drop Vehicle", " [] spawn client_fnc_detach; ",2]
	],

	[
		["currentcursortarget in current_cars || myjob IN [""Cop"",""Fire"",""EMS""] "],
		["Pull Out Players", " ['Pulling Out Players',8,client_fnc_pulloutplayers,player,'AinvPknlMstpSnonWnonDnon_medic_1',CurrentCursorTarget,""cg_mission_files\sounds\patdown1.ogg"",0] spawn client_fnc_dotask ",2]
	],

	[
		["(getpos player) distance [1055,3660,0.014] < 30"],
		["Scrap Vehicle", "[""who cares"",0,CurrentCursorTarget,player] remoteExec [""Server_fnc_updateCarStatus"",2]; paycheck = paycheck + 500; hint ""Scrapped and Paid""",2]
	],


	[
		["myjob == ""Cop"" && currentcursortarget isKindOf ""Car"""],
		["Garage Vehicle($10)", "[""who cares"",0,currentcursortarget,player] remoteExec [""Server_fnc_updateCarStatus"",2];  paycheck = paycheck + 10; hint ""Impounded and Paid""",2]
	],


	[
		["(getpos player) distance [1055,3660,0.014] < 20 && player getvariable ""Mafia"" > 0 "],
		["Sell Vehicle", " ['Selling Vehicle',60,client_fnc_sellVehicle,player,'AinvPknlMstpSnonWnonDnon_medic_1',CurrentCursorTarget,""cg_mission_files\sounds\repair.ogg"",0] spawn client_fnc_dotask ",2]
	],

	[
		["CurrentCursorTarget isKindOf 'Car' || CurrentCursorTarget isKindOf 'Air' || CurrentCursorTarget isKindOf 'Boat' "],
		["Repair", "['Repairing',25,client_fnc_repair,CurrentCursorTarget,'AinvPknlMstpSnonWnonDnon_medic_1',CurrentCursorTarget,""cg_sndimg\sounds\repair.ogg"",100] spawn client_fnc_dotask",2]
	],

	[
		["(vehicle player) == player && CurrentCursorTarget in Current_Cars"],
		["Use Key", "[CurrentCursorTarget] call Client_fnc_useKey",2]
	],

	[
		["(vehicle player) in Current_Cars"],
		["Use Key", "[vehicle player] call Client_fnc_useKey",2]
	],	

	[
		[" (currentcursortarget isKindOf ""Air"" || currentcursortarget isKindOf ""Car"" || currentcursortarget isKindOf ""Boat"") && currentcursortarget in current_cars "],
		["Flip car", " currentcursortarget setpos (getposatl currentcursortarget) ",2]
	],

	[
		[" (CurrentCursorTarget isKindOf 'Car' || CurrentCursorTarget isKindOf 'Ship') && player distance currentcursortarget < 11 && currentcursortarget in current_cars "],
		["Push Vehicle", "[] spawn Client_fnc_pushveh",2]
	],

	[
		["CurrentCursorTarget in Current_Cars", "myhouse distance getpos player > 50"],
		["Store Garage", "['Storing Vehicle ($10)',30, Client_fnc_storeCar,player,'AinvPknlMstpSnonWnonDnon_medic_1',CurrentCursorTarget,""cg_sndimg\sounds\repair.ogg"",10] spawn client_fnc_dotask",2]
	],

	[
		["CurrentCursorTarget in Current_Cars", "myhouse distance getpos player < 50"],
		["Store Garage", "['Storing Vehicle',5, Client_fnc_storeCar,player,'AinvPknlMstpSnonWnonDnon_medic_1',CurrentCursorTarget,""cg_sndimg\sounds\repair.ogg"",0] spawn client_fnc_dotask",2]
	],



//furniture
	[
		["player distance getpos currentcursortarget < 20 && currentcursortarget IN mychairs "],
		["Spin 180", " _dir = getdir currentcursortarget; currentcursortarget setdir (_dir + 180); " ,2]
	],

	[
		[" (player distance myoffice < 25 || (player distance myhouse < 25 && player getVariable ""houselevel"" > 1 )) "],
		["Remove All Furniture", "  [0] spawn client_fnc_spawnfurniture; attachedfurniture = false; ",2]
	],


	[
		["player distance getpos currentcursortarget < 20 && count attachedobjects player == 0 && currentcursortarget IN mychairs "],
		["Remove Furniture", " _pia = mychairs FIND currentcursortarget; mychairs DELETEAT _pia; deletevehicle currentcursortarget; ",2]
	],

	[
		["player distance getpos currentcursortarget < 20 && count attachedobjects player == 0 && currentcursortarget IN mychairs "],
		["Pickup Furniture", " fuckingcouch = currentcursortarget; fuckingcouch attachto [player,[0,1.8,2]]; attachedfurniture = true; ",2]
	],

	[
		["(player distance myoffice < 25 || (player distance myhouse < 25 && player getVariable ""houselevel"" > 1 )) && attachedfurniture "],
		["Place Furniture", " [] spawn client_fnc_spawnfurniture; attachedfurniture = false; ",2]
	],

	[
		["(player distance myoffice < 25 || (player distance myhouse < 25 && player getVariable ""houselevel"" > 1 )) && player distance getpos currentcursortarget < 20 && !attachedfurniture "],
		["Pick Furniture", " createdialog ""placefurniture"" ",2]
	],


	[
		[" attachedbarrier "],
		["Place Barrier", " [] spawn client_fnc_placebarrier; ",2]
	],

	[
		["myjob == ""Cop"" || myjob ==""EMS"" || myjob == ""Fire"" "],
		["Remove Closest Barrier", "_destroy = nearestObjects [player, [""plp_up_BarrierTapePolice8m"",""plp_up_BarrierTapePolice4m"",""plp_up_BarrierTapePolice1m"",""plp_up_woodbarrierlongpolice"",""plp_up_WoodBarrierShortPoliceLightsOn""], 10]; deletevehicle (_destroy select 0); ",2]
	],

	// player to player

	[
		["CurrentCursorTarget isKindOf 'Man' && myjob == ""Cop"""],
		["Revoke Licenses", " ['Revoking',6,client_fnc_revokelicense,CurrentCursorTarget,'vvv_anim_ticket',CurrentCursorTarget,""cg_mission_files\sounds\patdown1.ogg"",0] spawn client_fnc_dotask",2]
	],

	[
		[" CurrentCursorTarget isKindOf 'Man'", "myjob == ""Cop"""],
		["Get ID", " hint format[""%1"",name currentcursortarget]; ",2]
	],

	[
		[" CurrentCursorTarget isKindOf 'Man'", "myjob == ""Cop"""],
		["Send to Jail", "createdialog ""jailprocess""",2]
	],

	[
		["!(cursortarget getVariable[""dead"",FALSE]) && CurrentCursorTarget isKindOf 'Man' && (animationstate CurrentCursorTarget) == 'amovpercmstpsnonwnondnon_amovpercmstpssurwnondnon' || (animationstate CurrentCursorTarget) == 'Incapacitated' || (animationstate CurrentCursorTarget) == 'AmovPercMstpSnonWnonDnon_Ease' || (animationstate CurrentCursorTarget) == 'Acts_AidlPsitMstpSsurWnonDnon_loop'"],
		["Pat Down", " ['Patting Down Target',8,client_fnc_startpatdown,CurrentCursorTarget,'AinvPknlMstpSnonWnonDnon_medic_1',CurrentCursorTarget,""cg_mission_files\sounds\patdown1.ogg"",0] spawn client_fnc_dotask ",2]
	],


	[
		["(CurrentCursorTarget isKindOf 'Man') && (animationstate CurrentCursorTarget) == 'incapacitated' || (animationstate CurrentCursorTarget) == 'deadstate' || (animationstate CurrentCursorTarget) == 'amovpercmstpssurwnondnon' || (animationstate CurrentCursorTarget) == 'amovpercmstpsnonwnondnon_amovpercmstpssurwnondnon'"],
		["Take Money", " ['Taking Money',10,client_fnc_takePlayerMoney,CurrentCursorTarget,'AinvPknlMstpSnonWnonDnon_medic_1',CurrentCursorTarget,""cg_mission_files\sounds\blindfold.ogg"",0] spawn client_fnc_dotask",2]
	],


	[
		["(!(cursortarget getVariable[""dead"",FALSE]) && CurrentCursorTarget isKindOf 'Man') && (animationstate CurrentCursorTarget) == 'incapacitated' || (animationstate CurrentCursorTarget) == 'deadstate' || (animationstate CurrentCursorTarget) == 'amovpercmstpssurwnondnon' || (animationstate CurrentCursorTarget) == 'amovpercmstpsnonwnondnon_amovpercmstpssurwnondnon'"],
		["Restrain", " ['Restraining',3,client_fnc_restrain,CurrentCursorTarget,'AinvPknlMstpSnonWnonDnon_medic_1',CurrentCursorTarget,""cg_mission_files\sounds\handcuff.ogg"",0] spawn client_fnc_dotask",2]
	],

	[
		[" myJob == ""Cop"" && CurrentCursorTarget isKindOf 'Man' && ((animationstate CurrentCursorTarget) == 'Acts_AidlPsitMstpSsurWnonDnon_loop' || (animationstate CurrentCursorTarget) == 'amovpercmstpssurwnondnon' || (animationstate CurrentCursorTarget) == 'amovpercmstpsnonwnondnon_amovpercmstpssurwnondnon')"],
		["Unrestrain", " ['Unrestraining',3,client_fnc_unrestrain,CurrentCursorTarget,'AinvPknlMstpSnonWnonDnon_medic_1',CurrentCursorTarget,""cg_mission_files\sounds\handcuff.ogg"",0] spawn client_fnc_dotask",2]
	],

	[
		[" myJob != ""Cop"" && CurrentCursorTarget isKindOf 'Man' && ((animationstate CurrentCursorTarget) == 'Acts_AidlPsitMstpSsurWnonDnon_loop' || (animationstate CurrentCursorTarget) == 'amovpercmstpssurwnondnon' || (animationstate CurrentCursorTarget) == 'amovpercmstpsnonwnondnon_amovpercmstpssurwnondnon')"],
		["Unrestrain", " ['Unrestraining',35,client_fnc_unrestrain,CurrentCursorTarget,'AinvPknlMstpSnonWnonDnon_medic_1',CurrentCursorTarget,""cg_mission_files\sounds\handcuff.ogg"",0] spawn client_fnc_dotask",2]
	],


	[
		[" CurrentCursorTarget isKindOf 'Man'", "(headgear CurrentCursorTarget) != 'mgsr_headbag', (animationstate CurrentCursorTarget) == 'amovpercmstpsnonwnondnon_amovpercmstpssurwnondnon' || (animationstate CurrentCursorTarget) == 'Incapacitated' || (animationstate CurrentCursorTarget) == 'AmovPercMstpSnonWnonDnon_Ease' || (animationstate CurrentCursorTarget) == 'Acts_AidlPsitMstpSsurWnonDnon_loop'"],
		["Blindfold", " ['Blindfolding',5,client_fnc_blindfold,CurrentCursorTarget,'AinvPknlMstpSnonWnonDnon_medic_1',CurrentCursorTarget,""cg_sndimg\sounds\blindfold.ogg"",0] spawn client_fnc_dotask ",2]
	],

	[
		[" CurrentCursorTarget isKindOf 'Man'", "(headgear CurrentCursorTarget) == 'mgsr_headbag' "],
		["Remove Blindfold", " ['Removing Blindfold',5,client_fnc_unblindfold,CurrentCursorTarget,'AinvPknlMstpSnonWnonDnon_medic_1',CurrentCursorTarget,""cg_sndimg\sounds\blindfold.ogg"",0] spawn client_fnc_dotask",2]
	],

	[
		[" CurrentCursorTarget isKindOf 'Man'", "(animationstate CurrentCursorTarget) == 'amovpercmstpsnonwnondnon_amovpercmstpssurwnondnon' || (animationstate CurrentCursorTarget) == 'Incapacitated' || (animationstate CurrentCursorTarget) == 'AmovPercMstpSnonWnonDnon_Ease' || (animationstate CurrentCursorTarget) == 'Acts_AidlPsitMstpSsurWnonDnon_loop'"],
		["Throw In Car", " ['Throwing in Car',10,client_fnc_putincar,CurrentCursorTarget,'AinvPknlMstpSnonWnonDnon_medic_1',CurrentCursorTarget,""cg_mission_files\sounds\patdown1.ogg"",0] spawn client_fnc_dotask ",2]
	],

	[
		[" CurrentCursorTarget isKindOf 'Man'", "(animationstate CurrentCursorTarget) == 'amovpercmstpsnonwnondnon_amovpercmstpssurwnondnon' || (animationstate CurrentCursorTarget) == 'Incapacitated' || (animationstate CurrentCursorTarget) == 'AmovPercMstpSnonWnonDnon_Ease' || (animationstate CurrentCursorTarget) == 'Acts_AidlPsitMstpSsurWnonDnon_loop'"],
		["Escort", " ['Starting Escort',5,client_fnc_attach,CurrentCursorTarget,'AinvPknlMstpSnonWnonDnon_medic_1',CurrentCursorTarget,""cg_mission_files\sounds\patdown1.ogg"",0] spawn client_fnc_dotask ",2]
	],

	[
		["count attachedObjects player == 1 && !attachedcar"],
		["Stop Escort", " ['Stopping Escort',5,client_fnc_detach,player,'AinvPknlMstpSnonWnonDnon_medic_1',CurrentCursorTarget,""cg_mission_files\sounds\patdown1.ogg"",0] spawn client_fnc_dotask ",2]
	],

	[
		["CurrentCursorTarget isKindOf 'Man' && bankrobber == 1"],
		["Give Cash", "[CurrentCursorTarget] call Client_fnc_giveCash",2]
	],

	[
		["CurrentCursorTarget isKindOf 'Man' && (myjob == ""Mafia"" || myjob == ""Fire"" || myjob == ""Cop"" || myjob == ""EMS"" || myjob == ""Judge"" || myjob == ""Lawyer"")"],
		["Promote User", "[CurrentCursorTarget] spawn client_fnc_promotionStart",2]
	],

	[
		[" myJob == ""Cop"" && CurrentCursorTarget isKindOf 'Man'"],
		["Ticket Player", " createdialog ""np_ticketpolice""; ",2]
	],

	[
		[" myJob == ""Cop"" && CurrentCursorTarget isKindOf 'Man' && getpos player distance [5556.2,6291.29,0.00143433] < 100"],
		["Send To Jail", " createdialog ""jailprocess"";",2]
	],














//shops and offices garages etc



	[
		["player distance myshop < 3"],
		["Shop Inventory", "hint ""Your crate will automatically despawn in 5 minutes - people can not use your shop while it is out!""; [player] remoteExec [""server_fnc_retreiveStore"",2]",3]
	],

	[
		["player distance myshop < 3"],
		["Shop Prices", "[shopcontent,""start""] call client_fnc_updatePrices;",3]
	],

	[
		["(typeof CurrentCursorTarget) IN [""Land_buildingCommercial1"",""Land_buildingCommercial2""]"],
		["Browse Shop", "[typeof CurrentCursorTarget,player] remoteExec [""server_fnc_retreiveStoreShopper"",2]",3]
	],

	[
		["(typeof currentcursortarget == ""Land_buildingApartments2A"" && player distance getpos currentcursortarget < 20 && player getvariable ""legal"" > 0 && player distance [8186.91,2862.51,0.00143814] < 100)"],
		["Rent Shop ($250)", " createdialog ""rentshop""",3]
	],


	[
		["(typeof currentcursortarget == ""Land_buildingApartments2A"" && player distance getpos currentcursortarget < 20 && player distance [8186.91,2862.51,0.00143814] > 200)"],
		["Rent Shop ($250)", " createdialog ""rentshop""",3]
	],


	[
		["typeof CurrentCursorTarget == ""Land_buildingBarbers1"""],
		["Barber Store", "closedialog 0; createdialog ""HairDresser_Menu""; [""Glasses""] spawn client_fnc_loadStore;",3]
	],

	[
		["typeof CurrentCursorTarget IN [""Land_ModernShowroom""]"],
		["Open Car Shop", "createdialog ""buycar"";",3]
	],

	[
		["player distance myhouse < 10 || typeof CurrentCursorTarget IN [""Land_PostB""]"],
		["Check Mail", "[] spawn client_fnc_openMail",3]
	],

	[
		["str CurrentCursorTarget find ""mailboxnorth"" > -1"],
		["Post Mail", "createdialog ""client_findMail""",3]
	],

	[ 
		["str CurrentCursorTarget find ""embarcadero"" > -1"], 
		["Boat Shop", "createdialog ""buycar"";",3] 
	],

	[
		["currentcursortarget == fishTrader"],
		["Rare Fish Sales", "closedialog 0; createdialog ""RareFish_Menu""; [""rarefish""] spawn client_fnc_LoadStore;",3]
	],

	[
		["currentcursortarget == fishTrader"],
		["Trade Rare Pelt", "closedialog 0; [] spawn client_fnc_rarePelt;",3]
	],

	[
		["typeof CurrentCursorTarget IN [""Land_Coffee_DED_Coffee_02_F"",""Land_Coffee_DED_Coffee_01_F""]"],
		["Clothing Store", "closedialog 0; createdialog ""Clothing_Menu""; [""clothing""] spawn client_fnc_LoadStore;",3]
	],

	[
		["typeof CurrentCursorTarget == ""Land_buildingGunStore1"""],
		["Gun Store", "closedialog 0; createdialog ""gun_menu""; [""gunstore""] spawn client_fnc_LoadStore;",3]
	],

	[
		["typeof CurrentCursorTarget == ""land_cg_dunkinbronuts"""],
		["Donut Menu", "closedialog 0; createdialog ""food_menu""; [""donuts""] spawn client_fnc_LoadStore;",3]
	],

	[
		["typeof CurrentCursorTarget == ""land_cg_dexters"""],
		["Pizza Menu", "closedialog 0; createdialog ""food_menu""; [""pizza""] spawn client_fnc_LoadStore;",3]
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
		["Bar Store", "closedialog 0; createdialog ""food_menu""; [""bar""] spawn client_fnc_LoadStore;",3]
	],

	[
		["typeof CurrentCursorTarget IN [""Land_Coffee_DED_Coffee_02_F"",""Land_fs_roof_F"",""Land_Coffee_DED_Coffee_01_F"",""Land_Shop_DED_Shop_01_F"",""Land_Shop_DED_Shop_02_F""]"],
		["General Store", "closedialog 0; createdialog ""GeneralStore_Menu""; [""general""] spawn client_fnc_LoadStore;",3]
	],


	[ 
		["str CurrentCursorTarget find ""tallerdepinturaabandonado"" > -1 && (getpos player) distance [1055,3660,0.014] < 20"], 
		["Impound Lot", "[CurrentCursorTarget] call Client_fnc_openCarYard",3] 
	],

	[ 
		["str CurrentCursorTarget find ""otros"" > -1 || str CurrentCursorTarget find ""garaje"" > -1 || str CurrentCursorTarget find ""tallerdepinturaabandonado"" > -1 || typeof CurrentCursorTarget IN [""Land_ModernShowroom""]"], 
		["Upgrade Vehicle", "[] spawn client_fnc_carupdate;",3] 
	],

	[
		[" (myjob == ""Cop"" && typeof cursorobject == ""Land_PoliceStation"") || (myjob == ""EMS"" && typeof cursorobject == ""Land_buildingsfiredept1"") || (myjob == ""EMS"" && typeof cursorobject == ""Land_buildingshospital1"") || myJob == ""Mafia"" && player distance myhouse < 40 "],
		["Open Job Garage", "[] spawn client_fnc_opengaragepolice;",3]
	],



	[ 
		["count attachedObjects player == 0 && !attachedcar, player distance myhouse < 30 || str CurrentCursorTarget find ""otros"" > -1 || str CurrentCursorTarget find ""garaje"" > -1 || str CurrentCursorTarget find ""tallerdepinturaabandonado"" > -1 || typeof CurrentCursorTarget IN [""Land_ModernShowroom""]"], 
		["Open Garage", "[CurrentCursorTarget] call Client_fnc_openGarage",3] 
	],

	[
		["( myJob == ""Mafia"" || myJob == ""Cop"" || myjob == ""EMS"" ) && (str CurrentCursorTarget find ""otros"" > -1 || str CurrentCursorTarget find ""garaje"" > -1 || str CurrentCursorTarget find ""tallerdepinturaabandonado"" > -1 || typeof CurrentCursorTarget IN [""Land_ModernShowroom""] ) "],
		["Open Job Garage", "[] spawn client_fnc_opengaragepolice;",3]
	],



	[ 
		["count attachedObjects player == 0 && !attachedcar, str CurrentCursorTarget find ""embarcadero"" > -1 && player distance currentcursortarget < 20"], 
		["Open Garage", "[CurrentCursorTarget] call Client_fnc_openGarage",3] 
	],

	[
		["((player distance (getMarkerPos ""houseUpgrades"")) < 30)"],
		["Upgrade House (125k)", "[] spawn client_fnc_UpgradeHouse",3]
	],

	[
		["typeof currentcursortarget == ""Land_Market_DED_Market_03_F"""],
		["Replace Phone", "closedialog 0; [] call client_fnc_checkPhone;",3]
	],

	[
		["typeof currentcursortarget == ""Land_Market_DED_Market_03_F"""],
		["Recharge Phone", "closedialog 0; [""add"",""battery"",200] call client_fnc_sustain;",3]
	],


// jobs / situational

	[
		[" myjob == ""Cop"" && (( typeof cursorobject == ""Land_PoliceStation"") || ( vehicle player != player )) "],
		["Wanted System", "createdialog ""wanted"";",4]
	],

	[
		["(typeof CurrentCursorTarget IN [""Land_Centrelink"",""Land_CommonwealthBank"",""Land_Bank_DED_House_01_F""] || str CurrentCursorTarget find ""mcl_atm"" > -1) && myJob == ""Mafia"" && (player getVariable ""Mafia"") > 4 && bankrobber == 1"],
		["Mafia Bank", "[] call Client_fnc_openMafiaATM",4]
	],

	[
		["(typeof CurrentCursorTarget IN [""Land_Centrelink"",""Land_CommonwealthBank"",""Land_Bank_DED_House_01_F""] || str CurrentCursorTarget find ""mcl_atm"" > -1) && bankrobber == 1"],
		["ATM", "[] call Client_fnc_openATM",4]
	],

	[
		["player distance myhouse < 10 || (myjob == ""Mafia"" && typeof currentcursortarget == ""Land_buildingsbasement1"")"],
		["Open House Stash", "hint ""Your crate will automatically despawn in 5 minutes!""; [player] remoteExec [""server_fnc_retreivehouse"",2]",4]
	],

	[
		["typeof currentcursortarget == ""Land_buildingscourthouse1"" && (myjob == ""Cop"" || myjob == ""Judge"")"],
		["Call Jury", "  [] spawn client_fnc_startJury; ",4]
	],

	[
		["(str CurrentCursorTarget find ""gymbench"" > -1 || str CurrentCursorTarget find ""gymrack"" > -1)"],
		["Work Out", "[""Doing Workout"",60,client_fnc_workout,player,'AmovPercMstpSnonWnonDnon_exercisePushup',player,0] spawn client_fnc_dotask; ",4]
	],

	[
		["Mayor && player distance myhouse < 25"],
		["Grab Mayor Clothes", "[150] call Client_fnc_removebank; player forceAddUniform ""vvv_traje_ejecutivo_1"";",4]
	],

	[
		["Mayor && player distance myhouse < 25"],
		["Set Taxes", "createdialog ""tax_menu"";",4]
	],

	[
		["clientarrested"],
		["Check Time", "_time = secondsLeft / 60; hint format[""%1"",_time];",4]
	],





	[
		[" (isplayer currentcursortarget && currentcursortarget isKindOf ""Man"") && myjob == ""Cop"" && player getvariable ""cop"" > 5"],
		["Raid Shop", " [player] remoteexec [""client_fnc_raidshop"",currentcursortarget]; ",4]
	],


	[
		[" (isplayer currentcursortarget && currentcursortarget isKindOf ""Man"") && myjob == ""Cop"" && player getvariable ""cop"" > 5"],
		["Raid House", " [player] remoteexec [""client_fnc_raidhouse"",currentcursortarget]; ",4]
	],

	[
		[" (isplayer currentcursortarget && currentcursortarget isKindOf ""Man"") && myjob == ""Cop"" && player getvariable ""cop"" > 8"],
		["Seize All Property", " [player] remoteexec [""client_fnc_seizeproperty"",currentcursortarget]; ",4]
	],


	[
		[""],
		["Open Wallet", "createdialog ""wallet_Menu""",4]
	],

	[
		["count (player call TFAR_fnc_radiosList) > 0"],
		["Open Phone", "createdialog ""phoneHUD""",4]
	],

	[
		["str CurrentCursorTarget find ""cabinatelefonica"" > -1 && !callInProgress && !PhonesRinging && !TryingCall"],
		["Anonymous Call", "[] spawn client_fnc_callMenuPP; ",4]
	],


	[
		["!busyPlayer && !imrestrained && !clientarrested && player distance myhouse < 30"],
		["Craft Menu", "createdialog ""client_Craft_Menu""",4]
	],

	[
		["myjob == ""EMS"" && !dispatch && (player getvariable ""EMS"") > 0 "],
		["Fire Dispatch Sign-In", "[player,""Fire Dispatch""] spawn client_fnc_jobstart;",4]
	],

	[
		[" myjob == ""Cop"" && !dispatch && (player getvariable ""cop"") > 0 "],
		["Police Dispatch Sign-in", "[player,""Police Dispatch""] spawn client_fnc_jobstart;",4]
	],

	[
		["myjob == ""EMS"" && !dispatch && (player getvariable ""ems"") > 0 "],
		["EMS Dispatch Sign-In", "[player,""Medic Dispatch""] spawn client_fnc_jobstart;",4]
	],

	[
		["dispatch"],
		["Dispatch Sign-Off", "Dispatch = false",4]
	],

	[
		["myjob == ""EMS"" && typeof cursorobject == ""Land_buildingsfiredept1"""],
		["Sign-Off Duty", "[] call client_fnc_jobEnd",4]
	],

	[
		[" myjob == ""Cop"" && typeof cursorobject == ""Land_PoliceStation"""],
		["Sign-Off Duty", "[] call client_fnc_jobEnd",4]
	],

	[
		["myjob == ""EMS"" && typeof cursorobject == ""Land_buildingshospital1"""],
		["Sign-Off Duty", "[] call client_fnc_jobEnd",4]
	],

	[
		[" (myjob == ""Cop"" && typeof cursorobject == ""Land_PoliceStation"") || (myjob == ""EMS"" && typeof cursorobject == ""Land_buildingsfiredept1"") || (myjob == ""EMS"" && typeof cursorobject == ""Land_buildingshospital1"") || myJob == ""Mafia"" && player distance myhouse < 20 "],
		["Basic Gear", "[""basic""] spawn client_fnc_setGear",4]
	],

	[
		[" (myjob == ""Cop"" && typeof cursorobject == ""Land_PoliceStation"") && player getvariable ""cop"" > 7 "],
		["Riot Gear", "[""riot""] spawn client_fnc_setGear",4]
	],



	[
		[" myjob == ""none"" && (player getvariable ""cop"") > 0 && (player getvariable ""cop"") < 5 && typeof cursorobject == ""Land_PoliceStation"" && count currentcop > 5 "],
		["Too many on duty!", "",4]
	],

	[
		[" myjob == ""none"" && (player getvariable ""cop"") > 0 && (player getvariable ""cop"") < 5 && typeof cursorobject == ""Land_PoliceStation"" && count currentcop < 6 "],
		["Cop Sign-In", "[player,""Cop""] spawn client_fnc_jobstart; ",4]
	],


	[
		[" myjob == ""none"" && (player getvariable ""cop"") > 4 && typeof cursorobject == ""Land_PoliceStation"""],
		["Cop Sign-In", "[player,""Cop""] spawn client_fnc_jobstart;",4]
	],

	[
		["myjob == ""none"" && (player getvariable ""EMS"") > 0 && typeof cursorobject == ""Land_buildingsfiredept1"""],
		["Fire Dept Sign-In", "[player,""EMS""] spawn client_fnc_jobstart;",4]
	],

	[
		["myjob == ""none"" && (player getvariable ""ems"") > 0 && typeof cursorobject == ""Land_buildingshospital1"""],
		["EMS Sign-In", "[player,""EMS""] spawn client_fnc_jobstart;",4]
	],

	[
		["myjob == ""none"" && (player getvariable ""legal"") > 3"],
		["Judge Sign-In", "[player,""Judge""] spawn client_fnc_jobstart;",4]
	],

	[
		["myjob == ""none"" && (player getvariable ""legal"") > 0"],
		["Lawyer Sign-In", "[player,""Lawyer""] spawn client_fnc_jobstart;",4]
	],

	[
		["myjob == ""Judge"" || myjob == ""Lawyer"""],
		["Sign-Off Legal", "[] call client_fnc_jobEnd",4]
	],

	[
		["myjob == ""none"" && (player getvariable ""mafia"") > 0 && player distance myhouse < 30"],
		["Mafia Sign-In", "[player,""Mafia""] spawn client_fnc_jobstart;",4]
	],

	[
		["myjob == ""Mafia"""],
		["Sign-Off Mafia", "[] call client_fnc_jobEnd",4]
	],


	[
		["(str CurrentCursorTarget find ""modelos6estateriademedicamentos"" > -1 || str CurrentCursorTarget find ""modelos6mesadeoperaciones"" > -1 || str CurrentCursorTarget find ""modelos6papeleradehospital"" > -1 || str CurrentCursorTarget find ""m6estanterialargahospital"" > -1) && player distance getmarkerpos ""drugprocess"" < 100 "],
		["Process Drug Bricks", "closedialog 0; [] spawn client_fnc_processBricks",4]
	],

	[
		["((player distance (getMarkerPos ""sales"")) < 30)"],
		["Sell Ore / wood", "closedialog 0; [] spawn client_fnc_sellOre",4]
	],

	[
		["((player distance (getMarkerPos ""peltCuring"")) < 30)"],
		["Cure Pelts", "closedialog 0; [] spawn client_fnc_refinePelts",4]
	],

	[
		["((player distance (getMarkerPos ""fishRefinery"")) < 70) || typeof (vehicle player) IN [""vvv_NewYacht"",""POP_Speed_yatch""] "],
		["Refine Fish", "closedialog 0; [] spawn client_fnc_refineFish",4]
	],

	[
		["((player distance (getMarkerPos ""logRefinery"")) < 30)"],
		["Refine Wood", "closedialog 0; [] spawn client_fnc_refineLogs",4]
	],

	[
		["((player distance (getMarkerPos ""oilRefinery"")) < 30)"],
		["Refine Oil", "closedialog 0; [] spawn client_fnc_refineoil;",4]
	],

	[
		["((player distance (getMarkerPos ""OreRefinery"")) < 30)"],
		["Refine Ore", "closedialog 0; [] spawn client_fnc_refinemetal1;",4]
	],

	[
		["ClientArrested && player distance [5616.14,6313.37,0.00143433] < 8"],
		["Craft Hacking Tool", "[""Crafting Hacking Tool"",20,client_fnc_crafthackingdevice,player,'AinvPknlMstpSnonWnonDnon_medic_1',player,0] spawn client_fnc_dotask; ",4]
	],
	
	[
		["ClientArrested && (str CurrentCursorTarget find ""gymbench"" > -1 || str CurrentCursorTarget find ""gymrack""> -1 ) && getpos player distance [5644.19,6329.73,0.00143433] < 55"],
		["Craft Lockpick", "[""Crafting Lockpick"",60,client_fnc_craftlockpick,player,'AmovPercMstpSnonWnonDnon_exercisePushup',player,0] spawn client_fnc_dotask; ",4]
	],

	[
		["typeof CurrentCursorTarget == ""Rabbit_F"" && getdammage cursorobject == 1"],
		["Skin Rabbit", "deletevehicle CurrentCursorTarget; player additem ""np_upelt""; hint ""You skinned the rabbit for its pelt!""",4]
	],

	[
		["((player distance (getMarkerPos ""fishSales"")) < 20)"],
		["Sell Fish", "closedialog 0; [] spawn client_fnc_sellFish",4]
	],

	[
		["str CurrentCursorTarget find ""plp_cts_contshippinggreen"" > -1 && getpos player distance getpos currentcursortarget < 4"],
		["Search Crate", "[""Repairing Object"",7,client_fnc_searchcrates,player,'AinvPknlMstpSnonWnonDnon_medic_1',player,""cg_sndimg\sounds\repair.ogg""] spawn client_fnc_dotask; ",4]
	],


	[
		["myjob != ""none"" && (typeof CurrentCursorTarget IN [""Land_Centrelink""] || player distance myhouse < 20)"],
		["Quit Job", "[] spawn client_fnc_jobEnd;",4]
	],

	[
		["myjob != ""none"" && typeof CurrentCursorTarget IN [""Land_Centrelink""]"],
		["Spawn Job Vehicle", "[] spawn client_fnc_spawnjobvehicle",4]
	],

	[
		["typeof CurrentCursorTarget == ""Land_Centrelink"""],
		["Search Jobs", "[player] spawn client_fnc_startjob",4]
	],

	[
		["myjob == ""Repairman"""],
		["Repair Object", "[""Repairing Object"",15,client_fnc_repairNear,player,'AinvPknlMstpSnonWnonDnon_medic_1',player,""cg_sndimg\sounds\repair.ogg""] spawn client_fnc_dotask; ",4]
	],





	[
		["getplayerUID player IN [""76561197995364867""]"],
		["Admin Panel", "closedialog 0; createdialog ""koiladmin""; ",4]
	]

];

player setVariable["loaded", 2, false];

