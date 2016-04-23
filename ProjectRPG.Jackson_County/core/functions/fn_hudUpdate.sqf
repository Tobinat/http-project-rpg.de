/*
	File: fn_hudUpdate.sqf
	#FIX privates
*/

private["_injurytext","_ui","_food","_water","_health","_money","_cash","_ammo","_stam","_select","_ammocount","_selectcount","_bulletcount","_dam","_fps","_watermark","_lowfood","_lowhealth","_lowdrink","_bleeding","_wounded","_fracture","_unconcious","_woundedon","_fractureon","_unconciouson","_diseaseon","_currentactions","_currentactionson","_battery","_karma","_progfood","_progwater","_proghealth","_progfps","_progstamina","_progmags","_progammo","_progselect","_progbattery","_progkarma","_progpoop","_progdirt","_tfrchat"];

hud_fnc_ui_check =
{	
	disableSerialization;
	if(phone_s_2) exitwith {};
	_ui = uiNameSpace getVariable ["playerHUD",displayNull];
	if(isNull _ui) exitWith
	{
		[] call life_fnc_hudSetup;
		_ui = uiNameSpace getVariable ["playerHUD",displayNull];
		_ui;
	};
	_ui;
};








hud_fnc_loop =
{
	if(phone_s_2) exitwith {};
	_ui = call hud_fnc_ui_check;

	_fps = _ui displayCtrl 23515;
    _fps ctrlSetText format["%1", round diag_fps];

	_statusbar = _ui displayCtrl 23520;
	_message = [serverTime,"HH:MM:SS"] call BIS_fnc_secondsToString;
	_statusbar ctrlSetText format["%1",_message];

	_karma = _ui displayCtrl 23605;
	_karma ctrlSetText format["Level %1", karma_level];

	_battery = _ui displayCtrl 23610;
	_battery ctrlSetText format["Battery: %1", life_battery];

	_ammo = _ui displayCtrl 23525;
	_amountmag = {_x == (currentmagazine player)} count magazines player;
	_ammo ctrlSetText format["%1 Mags", format["%1",_amountmag]];
	_bamountmag = _amountmag / 100;
	_bamountmag = _bamountmag * 3;


	_bullet = _ui displayCtrl 23530;
	_ammocount = (player ammo (currentWeapon player));
	_magazineClass = currentMagazine player;
	_maxammo = getNumber(configFile >> "CfgMagazines" >> _magazineClass >> "count");
	_fuck = 0;
	if(_ammocount > 0) then
	{
		_fuck = _ammocount / _maxammo;
	};
	_ammocount = (player ammo (currentWeapon player));
	_bullet ctrlSetText format["%1 Rounds", format["%1",_ammocount]];


	_select = _ui displayCtrl 23535;
	_gunmode = currentWeaponMode player;
	if(vehicle player != player || currentweapon player == "") then { _gunmode = "No"; };
	_select ctrlSetText format["%1 Firemode", format["%1",_gunmode]];










		_mylife = _ui displayCtrl 444440;

		if ( myhealth > 0 ) then
		{
			if(myHealth > 0.8) exitwith {
				_message = "<img size='2.5' image='icons2\health6.paa'/>";
				_mylife ctrlSetStructuredText parseText format["%1",_message];
			};
			if(myHealth > 0.6) exitwith {
				_message = "<img size='2.5' image='icons2\health5.paa'/>";
				_mylife ctrlSetStructuredText parseText format["%1",_message];
			};		
			if(myHealth > 0.45) exitwith {
				_message = "<img size='2.5' image='icons2\health4.paa'/>";
				_mylife ctrlSetStructuredText parseText format["%1",_message];
			};	

			if(myHealth > 0.3) exitwith {
				_message = "<img size='2.5' image='icons2\health3.paa'/>";
				_mylife ctrlSetStructuredText parseText format["%1",_message];
			};
			if(myHealth > 0.15) exitwith {
				_message = "<img size='2.5' image='icons2\health2.paa'/>";
				_mylife ctrlSetStructuredText parseText format["%1",_message];
			};		
			if(myHealth > 0) exitwith {
				_message = "<img size='2.5' image='icons2\health1.paa'/>";
				_mylife ctrlSetStructuredText parseText format["%1",_message];
			};				
		}
		else
		{
			_message = "";
			_mylife ctrlSetStructuredText parseText format["%1",_message];
		};
		_mylife ctrlCommit 0;


		_myfood = _ui displayCtrl 444441;

		if ( life_hunger < 65 ) then
		{


			if(life_hunger > 60) exitwith {
				_message = "<img size='2.5' image='icons2\food1.paa'/>";
				_myfood ctrlSetStructuredText parseText format["%1",_message];
			};
			if(life_hunger > 50) exitwith {
				_message = "<img size='2.5' image='icons2\food2.paa'/>";
				_myfood ctrlSetStructuredText parseText format["%1",_message];
			};		
			if(life_hunger > 40) exitwith {
				_message = "<img size='2.5' image='icons2\food3.paa'/>";
				_myfood ctrlSetStructuredText parseText format["%1",_message];
			};	

			if(life_hunger > 30) exitwith {
				_message = "<img size='2.5' image='icons2\food4.paa'/>";
				_myfood ctrlSetStructuredText parseText format["%1",_message];
			};
			if(life_hunger > 15) exitwith {
				_message = "<img size='2.5' image='icons2\food5.paa'/>";
				_myfood ctrlSetStructuredText parseText format["%1",_message];
			};		
			if(life_hunger > 0) exitwith {
				_message = "<img size='2.5' image='icons2\food6.paa'/>";
				_myfood ctrlSetStructuredText parseText format["%1",_message];
			};	


		}
		else
		{
			_message = "";
			_myfood ctrlSetStructuredText parseText format["%1",_message];
		};
		_myfood ctrlCommit 0;



		_mydrink = _ui displayCtrl 444442;
		if ( life_thirst < 65 ) then
		{
			if(life_thirst > 60) exitwith {
				_message = "<img size='2.5' image='icons2\drink1.paa'/>";
				_mydrink ctrlSetStructuredText parseText format["%1",_message];
			};
			if(life_thirst > 50) exitwith {
				_message = "<img size='2.5' image='icons2\drink2.paa'/>";
				_mydrink ctrlSetStructuredText parseText format["%1",_message];
			};		
			if(life_thirst > 40) exitwith {
				_message = "<img size='2.5' image='icons2\drink3.paa'/>";
				_mydrink ctrlSetStructuredText parseText format["%1",_message];
			};	

			if(life_thirst > 30) exitwith {
				_message = "<img size='2.5' image='icons2\drink4.paa'/>";
				_mydrink ctrlSetStructuredText parseText format["%1",_message];
			};
			if(life_thirst > 15) exitwith {
				_message = "<img size='2.5' image='icons2\drink5.paa'/>";
				_mydrink ctrlSetStructuredText parseText format["%1",_message];
			};		
			if(life_thirst > 0) exitwith {
				_message = "<img size='2.5' image='icons2\drink6.paa'/>";
				_mydrink ctrlSetStructuredText parseText format["%1",_message];
			};	

		}
		else
		{
			_message = "";
			_mydrink ctrlSetStructuredText parseText format["%1",_message];
		};
		_mydrink ctrlCommit 0;




		_pizzas = _ui displayCtrl 444443;

		if ( life_pizza > 0 ) then
		{
			_message = "<img size='2' image='icons\pizza.paa'/>";

			_pizzas ctrlSetStructuredText parseText format["%1",_message];
		}
		else
		{
			_message = "";
			_pizzas ctrlSetStructuredText parseText format["%1",_message];
		};
		_pizzas ctrlCommit 0;


		_donuts = _ui displayCtrl 444444;

		if ( life_bro > 1 ) then
		{
			_message = "<img size='2' image='icons\donuts.paa'/>";
			_donuts ctrlSetStructuredText parseText format["%1",_message];
		}
		else
		{
			_message = "";
			_donuts ctrlSetStructuredText parseText format["%1",_message];
		};
		_donuts ctrlCommit 0;	


		_enrgy = _ui displayCtrl 444445;

		if ( life_num > 1 ) then
		{
			_message = "<img size='2' image='icons\energy.paa'/>";
			_enrgy ctrlSetStructuredText parseText format["%1",_message];
		}
		else
		{
			_message = "";
			_enrgy ctrlSetStructuredText parseText format["%1",_message];
		};
		_enrgy ctrlCommit 0;





		_PhoneCall = _ui displayCtrl 444446;

		if ( callInProgress || PhoneDisabled ) then
		{
			private["_message"];
			if ( callInProgress ) then {
				_message = "<img size='2' image='icons\phonecall.paa'/>";
			} else {
				_message = "<img size='2' image='icons\nophone.paa'/>";
			};
			_PhoneCall ctrlSetStructuredText parseText format["%1",_message];
		}
		else
		{
			_message = "";
			_PhoneCall ctrlSetStructuredText parseText format["%1",_message];
		};
		_PhoneCall ctrlCommit 0;

		_earPlugs = _ui displayCtrl 444447;
		if ( life_fadeSound ) then
		{
			_message = "<img size='2' image='icons\ears.paa'/>";
			_earPlugs ctrlSetStructuredText parseText format["%1",_message];
		}
		else
		{
			_message = "";
			_earPlugs ctrlSetStructuredText parseText format["%1",_message];
		};
		_earPlugs ctrlCommit 0;

		//update gopro
		_gopro = _ui displayCtrl 444448;
		if ( life_gopro && "CG_Pro_Item_i" in magazines player ) then
		{
			_message = "<img size='2' image='icons\record.paa'/>";
			_gopro ctrlSetStructuredText parseText format["%1",_message];
		}
		else
		{
			if ( life_gopro ) then
			{
				life_gopro = false;
			};
			_message = "";
			_gopro ctrlSetStructuredText parseText format["%1",_message];
		};
		_gopro ctrlCommit 0;


		//update drug usage
		_dgopro = _ui displayCtrl 444449;
		if ( life_crazy > 0 ) then
		{
			_message = "<img size='2' image='icons\druggedup.paa'/>";
			_dgopro ctrlSetStructuredText parseText format["%1",_message];
		}
		else
		{
			_message = "";
			_dgopro ctrlSetStructuredText parseText format["%1",_message];
		};
		_dgopro ctrlCommit 0;

		//update drug usage
		_wdgopro = _ui displayCtrl 444450;
		if ( life_bonging ) then
		{
			_message = "<img size='2' image='icons\onweed.paa'/>";
			_wdgopro ctrlSetStructuredText parseText format["%1",_message];
		}
		else
		{
			_message = "";
			_wdgopro ctrlSetStructuredText parseText format["%1",_message];
		};
		_wdgopro ctrlCommit 0;


		//update battery
		_bewdgopro = _ui displayCtrl 444451;
		if ( life_battery < 30 ) then
		{
			_message = "<img size='2' image='icons\battery.paa'/>";
			_bewdgopro ctrlSetStructuredText parseText format["%1",_message];
		}
		else
		{
			_message = "";
			_bewdgopro ctrlSetStructuredText parseText format["%1",_message];
		};
		_bewdgopro ctrlCommit 0;	


		//update battery
		_tbewdgopro = _ui displayCtrl 444452;
		if ( life_poop > 80 ) then
		{
			_message = "<img size='2' image='icons\toilet.paa'/>";
			_tbewdgopro ctrlSetStructuredText parseText format["%1",_message];
		}
		else
		{
			_message = "";
			_tbewdgopro ctrlSetStructuredText parseText format["%1",_message];
		};
		_tbewdgopro ctrlCommit 0;	


		//update work
		_tbewdgopro = _ui displayCtrl 444453;
		if ( has_job ) then
		{
			_message = "<img size='2' image='icons2\working.paa'/>";
			_tbewdgopro ctrlSetStructuredText parseText format["%1",_message];
		}
		else
		{
			_message = "";
			_tbewdgopro ctrlSetStructuredText parseText format["%1",_message];
		};
		_tbewdgopro ctrlCommit 0;



		//update seatbekt

		_tbewdgopro = _ui displayCtrl 444454;
		if ( vehicle player != player ) then
		{
			if(life_seatbelt) then {
				_message = "<img size='2' image='icons2\seatbelton.paa'/>";
				_tbewdgopro ctrlSetStructuredText parseText format["%1",_message];
			} else {
				_message = "<img size='2' image='icons2\seatbeltoff.paa'/>";
				_tbewdgopro ctrlSetStructuredText parseText format["%1",_message];
			};
		}
		else
		{
			_message = "";
			_tbewdgopro ctrlSetStructuredText parseText format["%1",_message];
		};
		_tbewdgopro ctrlCommit 0;


		//update nos
		_tbewdgopro = _ui displayCtrl 444455;
		if ( life_nos_count > 0 ) then
		{
			_message = "<img size='2' image='icons2\nos.paa'/>";
			_tbewdgopro ctrlSetStructuredText parseText format["%1",_message];
		}
		else
		{
			_message = "";
			_tbewdgopro ctrlSetStructuredText parseText format["%1",_message];
		};
		_tbewdgopro ctrlCommit 0;




	// Medical Loop 
	_bleeding = _ui displayCtrl 23570;
	_wounded = _ui displayCtrl 23575;
	_fracture = _ui displayCtrl 23580;
	_unconcious = _ui displayCtrl 23585;
	_disease = _ui displayCtrl 23590;
	_severe_injury = _ui displayCtrl 23595;
	im_hurt = false;
	_dam = myHealth;
	_dam = round(_dam * 100);
	_dam = round(100 - _dam);
	if(!im_dead) then
	{
		_injurytext = "";
		if(player getVariable["severeInjuries",FALSE]) then
		{
			_bool = isForcedWalk player;
			if(!_bool) then {
				player forceWalk true;
			};
			_injurytext = "Starker Schmerz";
			_severe_injury ctrlSetStructuredText parseText format["<img size='0.07' image='icons\drugs.paa'/><t size='0.03px'> %1</t>",_injurytext];
			_severe_injury ctrlCommit 0;
		} else {
			_injurytext = "";
			_severe_injury ctrlSetStructuredText parseText format["%1",_injurytext];
			_severe_injury ctrlCommit 0;
		};

		koildeb = player getVariable ["bleedingon", 1];
		if(koildeb > 1) then
		{
			im_hurt = true;
			_bleedingon = "Leichte Blutung";
			_chancerr = round (random 1000);
			if(_chancerr > 980) then
			{
				 ["Remove",0.01] call fnc_doHealth;
			};
			if(koildeb == 2) then
			{
				_bleedingon = "Head Cuts";
			};
			if(koildeb == 3) then
			{
				_bleedingon = "Platzwunde";
				_chancez = round (random 1000);
				if(_chancez > 990) then
				{
					if(isNull objectParent player) then
					{
						[] spawn KK_fnc_forceRagdoll;
					};
					[2] spawn life_fnc_hudElements;
				};
			};
			if(koildeb == 4) then
			{
				_bleedingon = "Kopf Trauma";
				_chancez = round (random 1000);
				if(_chancez > 990) then
				{
					if(isNull objectParent player) then
					{
						[] spawn KK_fnc_forceRagdoll;
					};
					[1] spawn life_fnc_hudElements;
				};
			};
			if(koildeb == 5) then
			{
				_bleedingon = "Hirnschwellung";
				_chancez = round (random 1000);
				if(_chancez > 990) then
				{
					if(isNull objectParent player) then
					{
						[] spawn KK_fnc_forceRagdoll;
					};
					[1] spawn life_fnc_hudElements;
				};
			};
			_bleeding ctrlSetStructuredText parseText format["<img size='0.07' image='icons\head.paa'/><t size='0.03px'> %1</t>",_bleedingon];
			_bleeding ctrlCommit 0;
		}
		else
		{
			_bleedingon = "";
			_bleeding ctrlSetText format["%1", _bleedingon];
			_bleeding ctrlCommit 0;
		};
		koildebi = player getVariable ["woundedon", 1];
		if(koildebi > 1) then
		{
			_woundedon = "Torso Schnitte";
			im_hurt = true;
			if(koildebi == 2) then
			{
				_woundedon = "Torso Schnitte";
			};
			if(koildebi == 3) then
			{
				_woundedon = "Torso Schnitte";
			};
			if(koildebi == 4) then
			{
				_woundedon = "Torso Fraktur";
				_chancez = round (random 1000);
				if(_chancez > 990) then
				{
					if(isNull objectParent player) then
					{
						[] spawn KK_fnc_forceRagdoll;
					};
					[1] spawn life_fnc_hudElements;
				};
			};
			if(koildebi == 5) then
			{
				_woundedon = "Innere Blutung";
				_chancez = round (random 1000);
				if(_chancez > 990) then
				{
					if(isNull objectParent player) then
					{
						[] spawn KK_fnc_forceRagdoll;
					};
					[1] spawn life_fnc_hudElements;
				};
			};
			_chancea = round (random 1000);
			if(_chancea > 980) then
			{
				 ["Remove",0.05] call fnc_doHealth;
			};
			_wounded ctrlSetStructuredText parseText format["<img size='0.07' image='icons\chest.paa'/><t size='0.03px'> %1</t>",_woundedon];
			_wounded ctrlCommit 0;
		}
		else
		{
			_woundedon = "";
			_wounded ctrlSetText format["%1", _woundedon];
			_wounded ctrlCommit 0;
		};
		koildebii = player getVariable ["fractureon", 1];
		if(koildebii > 1) then
		{
			im_hurt = true;
			_fractureon = "Fraktur";
			_chancef = round (random 1000);
			if(_chancef > 980) then
			{
				 ["Remove",0.05] call fnc_doHealth;
			};
			if(koildebii == 2) then
			{
				_fractureon = "Linker Arm Schnitt";
			};
			if(koildebii == 3) then
			{
				_fractureon = "Linker Arm Wunde";
			};
			if(koildebii == 4) then
			{
				_fractureon = "Linker Arm Fraktur";
				_chancez = round (random 1000);
				if(_chancez > 990) then
				{
					if(isNull objectParent player) then
					{
						[] spawn KK_fnc_forceRagdoll;
					};
					[2] spawn life_fnc_hudElements;
				};
			};
			if(koildebii == 5) then
			{
				_fractureon = "Rechter Arm schnitte";
			};
			if(koildebii == 6) then
			{
				_fractureon = "Rechter Arm Wunde";
			};
			if(koildebii == 7) then
			{
				_fractureon = "Rechter Arm Fraktur";
				_chancez = round (random 1000);
				if(_chancez > 990) then
				{
					if(isNull objectParent player) then
					{
						[] spawn KK_fnc_forceRagdoll;
					};
					[2] spawn life_fnc_hudElements;
				};
			};
			_fracture ctrlSetStructuredText parseText format["<img size='0.07' image='icons\arm.paa'/><t size='0.03px'> %1</t>",_fractureon];
			_fracture ctrlCommit 0;
		}
		else
		{
			_fractureon = "";
			_fracture ctrlSetText format["%1", _fractureon];
		};
		koildebiii = player getVariable ["unconciouson", 1];
		if(koildebiii > 1) then
		{
			_unconciouson = "Linkes Bein Schnitte";
			im_hurt = true;
			_chancez = round (random 1000);
			if(_chancez > 980) then
			{
				 ["Remove",0.05] call fnc_doHealth;
			};
			if(koildebiii == 2) then
			{
				_unconciouson = "Linkes Bein Schnitte";
			};
			if(koildebiii == 3) then
			{
				_unconciouson = "Linkes Bei Wunde";
				_chancez = round (random 1000);
				if(_chancez > 990) then
				{
					if(isNull objectParent player) then
					{
						[] spawn KK_fnc_forceRagdoll;
					};
					[2] spawn life_fnc_hudElements;
				};
			};
			if(koildebiii == 4) then
			{
				player setFatigue 1;
				_unconciouson = "Linkes Bei Fraktur";
				_chancez = round (random 1000);
				if(_chancez > 990) then
				{
					if(isNull objectParent player) then
					{
						[] spawn KK_fnc_forceRagdoll;
					};
					[1] spawn life_fnc_hudElements;
				};
			};
			if(koildebiii == 5) then
			{
				_unconciouson = "Rechtes Bein Schnitte";
			};
			if(koildebiii == 6) then
			{
				_unconciouson = "Rechtes Bein Wunde";
				_chancez = round (random 1000);
				if(_chancez > 990) then
				{
					if(isNull objectParent player) then
					{
						[] spawn KK_fnc_forceRagdoll;
					};
					[2] spawn life_fnc_hudElements;
				};
			};
			if(koildebiii == 7) then
			{
				player setFatigue 1;
				_unconciouson = "Rechtes Bein Fraktur";
				_chancez = round (random 1000);
				if(_chancez > 990) then
				{
					if(isNull objectParent player) then
					{
						[] spawn KK_fnc_forceRagdoll;
					};
					[1] spawn life_fnc_hudElements;
				};
			};
			_unconcious ctrlSetStructuredText parseText format["<img size='0.07' image='icons\foot.paa'/><t size='0.03px'> %1</t>",_unconciouson];
			_unconcious ctrlCommit 0;
		}
		else
		{
			_unconciouson = "";
			_unconcious ctrlSetText format["%1", _unconciouson];
		};
		koildebiiii = player getVariable ["diseaseon",1];
		if(koildebiiii > 1) then
		{
			_diseaseon = "Ebola Symptome";
			im_hurt = true;
			if(koildebiiii == 2) then
			{
				_diseaseon = "Ebola Symptome";
			};
			if(koildebiiii == 3) then
			{
				_diseaseon = "Sars Symptome";
			};
			if(koildebiiii == 4) then
			{
				_diseaseon = "Starke Infektion";
			};
			if(koildebiiii == 5) then
			{
				_diseaseon = "Kleine Pocken";
			};
			if(koildebiiii == 6) then
			{
				_diseaseon = "Influenza";
			};
			if(koildebiiii > 6) then
			{
				_diseaseon = "Malaria";
			};
			_disease ctrlSetStructuredText parseText format["<img size='0.07' image='icons\sick.paa'/><t size='0.03px'> %1</t>",_diseaseon];
			_disease ctrlCommit 0;

			_chances = round (random 600);
			if(_chances > 595) then {
				playSound3D ["cg_sndimg\sounds\cough1.ogg", player, false, getPosASL player, 3, 1, 45];
				playSound3D ["cg_sndimg\sounds\cough2.ogg", player, false, getPosASL player, 3, 1, 45];
				[1] spawn life_fnc_HudElements;
				_diseaseSpreadPlayers = player nearEntities ["Man", 5];
				{
					if(isplayer _x) then {
						if (goggles _x IN GoggleList || headgear _x IN HatList || side player == independent) then {
							_chancesread = round (random 100);
							if(side player == independent) then { _chancesread = _chancesread - 30; };
							if(_chancesread > 65) then {
								_x setVariable ["diseaseon",koildebiiii, true];
							};
						} else {
							_x SetVariable ["diseaseon",koildebiiii, true];
						};
					};
				}foreach _diseaseSpreadPlayers;
			} else {
				_chances = round (random 1000);
				if(_chances > 950) then
				{
					player enableFatigue true;
					player setFatigue 0;
					[1] spawn life_fnc_HudElements;
					_coughtype = round (random 4);
					if(_coughtype == 1) then
					{
						playSound3D ["cg_sndimg\sounds\cough1.ogg", player, false, getPosASL player, 3, 1, 45];
					};
					if(_coughtype == 2) then
					{
						playSound3D ["cg_sndimg\sounds\cough2.ogg", player, false, getPosASL player, 3, 1, 45];
					};
					if(_coughtype == 3) then
					{
						playSound3D ["cg_sndimg\sounds\cough3.ogg", player, false, getPosASL player, 3, 1, 45];
					};
					if(_coughtype == 4) then
					{
						playSound3D ["cg_sndimg\sounds\cough4.ogg", player, false, getPosASL player, 3, 1, 45];
					};
					if(_chances > 975) then
					{
						if(isNull objectParent player) then
						{
							[] spawn KK_fnc_forceRagdoll;
						};
					["Remove",0.05] call fnc_doHealth;
					};
				};
			};
		}
		else
		{
			_diseaseon = "";
			_disease ctrlSetText format["%1", _diseaseon];
		};
	};
	if(isNil "fnc_totalpain") exitWith {};
	[] spawn fnc_totalpain;
};
