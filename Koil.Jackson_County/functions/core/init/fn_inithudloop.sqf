/*
Updated HUD by Koil. -- if hud breaks add im_dead = false;to revive or cpr scripts tehe.. cuntr.
*/
disableSerialization;
private["_injurytext","_ui","_food","_water","_health","_money","_cash","_ammo","_stam","_select","_ammocount","_selectcount","_bulletcount","_dam","_fps","_watermark","_lowfood","_lowhealth","_lowdrink","_bleeding","_wounded","_fracture","_unconcious","_woundedon","_fractureon","_unconciouson","_diseaseon","_currentactions","_currentactionson","_battery","_karma","_progfood","_progwater","_proghealth","_progfps","_progstamina","_progmags","_progammo","_progselect","_progbattery","_progkarma","_progpoop","_progdirt","_tfrchat"];

	_ui = uiNameSpace getVariable ["playerHUD",displayNull];

	_fps = _ui displayCtrl 23515;
    _fps ctrlSetText format["%1", round diag_fps];

	_statusbar = _ui displayCtrl 23520;
	_message = [serverTime,"HH:MM:SS"] call BIS_fnc_secondsToString;
	_statusbar ctrlSetText format["%1",_message];

	_karma = _ui displayCtrl 23605;
	_karma ctrlSetText format["Level %1", karma_level];

	_battery = _ui displayCtrl 23610;
	_battery ctrlSetText format["Battery: %1", client_battery];

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
				_message = "<img size='2.5' image='cg_mission_files\icons2\health6.paa'/>";
				_mylife ctrlSetStructuredText parseText format["%1",_message];
			};
			if(myHealth > 0.6) exitwith {
				_message = "<img size='2.5' image='cg_mission_files\icons2\health5.paa'/>";
				_mylife ctrlSetStructuredText parseText format["%1",_message];
			};		
			if(myHealth > 0.45) exitwith {
				_message = "<img size='2.5' image='cg_mission_files\icons2\health4.paa'/>";
				_mylife ctrlSetStructuredText parseText format["%1",_message];
			};	

			if(myHealth > 0.3) exitwith {
				_message = "<img size='2.5' image='cg_mission_files\icons2\health3.paa'/>";
				_mylife ctrlSetStructuredText parseText format["%1",_message];
			};
			if(myHealth > 0.15) exitwith {
				_message = "<img size='2.5' image='cg_mission_files\icons2\health2.paa'/>";
				_mylife ctrlSetStructuredText parseText format["%1",_message];
			};		
			if(myHealth > 0) exitwith {
				_message = "<img size='2.5' image='cg_mission_files\icons2\health1.paa'/>";
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

		if ( client_hunger < 65 ) then
		{


			if(client_hunger > 60) exitwith {
				_message = "<img size='2.5' image='cg_mission_files\icons2\food1.paa'/>";
				_myfood ctrlSetStructuredText parseText format["%1",_message];
			};
			if(client_hunger > 50) exitwith {
				_message = "<img size='2.5' image='cg_mission_files\icons2\food2.paa'/>";
				_myfood ctrlSetStructuredText parseText format["%1",_message];
			};		
			if(client_hunger > 40) exitwith {
				_message = "<img size='2.5' image='cg_mission_files\icons2\food3.paa'/>";
				_myfood ctrlSetStructuredText parseText format["%1",_message];
			};	

			if(client_hunger > 30) exitwith {
				_message = "<img size='2.5' image='cg_mission_files\icons2\food4.paa'/>";
				_myfood ctrlSetStructuredText parseText format["%1",_message];
			};
			if(client_hunger > 15) exitwith {
				_message = "<img size='2.5' image='cg_mission_files\icons2\food5.paa'/>";
				_myfood ctrlSetStructuredText parseText format["%1",_message];
			};		
			if(client_hunger > 0) exitwith {
				_message = "<img size='2.5' image='cg_mission_files\icons2\food6.paa'/>";
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
		if ( client_thirst < 65 ) then
		{
			if(client_thirst > 60) exitwith {
				_message = "<img size='2.5' image='cg_mission_files\icons2\drink1.paa'/>";
				_mydrink ctrlSetStructuredText parseText format["%1",_message];
			};
			if(client_thirst > 50) exitwith {
				_message = "<img size='2.5' image='cg_mission_files\icons2\drink2.paa'/>";
				_mydrink ctrlSetStructuredText parseText format["%1",_message];
			};		
			if(client_thirst > 40) exitwith {
				_message = "<img size='2.5' image='cg_mission_files\icons2\drink3.paa'/>";
				_mydrink ctrlSetStructuredText parseText format["%1",_message];
			};	

			if(client_thirst > 30) exitwith {
				_message = "<img size='2.5' image='cg_mission_files\icons2\drink4.paa'/>";
				_mydrink ctrlSetStructuredText parseText format["%1",_message];
			};
			if(client_thirst > 15) exitwith {
				_message = "<img size='2.5' image='cg_mission_files\icons2\drink5.paa'/>";
				_mydrink ctrlSetStructuredText parseText format["%1",_message];
			};		
			if(client_thirst > 0) exitwith {
				_message = "<img size='2.5' image='cg_mission_files\icons2\drink6.paa'/>";
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

		if ( client_pizza > 0 ) then
		{
			_message = "<img size='2' image='cg_mission_files\icons\pizza.paa'/>";

			_pizzas ctrlSetStructuredText parseText format["%1",_message];
		}
		else
		{
			_message = "";
			_pizzas ctrlSetStructuredText parseText format["%1",_message];
		};
		_pizzas ctrlCommit 0;


		_donuts = _ui displayCtrl 444444;

		if ( client_bro > 1 ) then
		{
			_message = "<img size='2' image='cg_mission_files\icons\donuts.paa'/>";
			_donuts ctrlSetStructuredText parseText format["%1",_message];
		}
		else
		{
			_message = "";
			_donuts ctrlSetStructuredText parseText format["%1",_message];
		};
		_donuts ctrlCommit 0;	


		_enrgy = _ui displayCtrl 444445;

		if ( client_num > 1 ) then
		{
			_message = "<img size='2' image='cg_mission_files\icons\energy.paa'/>";
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
				_message = "<img size='2' image='cg_mission_files\icons\phonecall.paa'/>";
			} else {
				_message = "<img size='2' image='cg_mission_files\icons\nophone.paa'/>";
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
		if ( client_fadeSound ) then
		{
			_message = "<img size='2' image='cg_mission_files\icons\ears.paa'/>";
			_earPlugs ctrlSetStructuredText parseText format["%1",_message];
		}
		else
		{
			_message = "";
			_earPlugs ctrlSetStructuredText parseText format["%1",_message];
		};
		_earPlugs ctrlCommit 0;


/*
		_gopro = _ui displayCtrl 444448;
		if ( client_gopro && "CG_Pro_Item_i" in magazines player ) then
		{
			_message = "<img size='2' image='cg_mission_files\icons\record.paa'/>";
			_gopro ctrlSetStructuredText parseText format["%1",_message];
		}
		else
		{
			if ( client_gopro ) then
			{
				client_gopro = false;
			};
			_message = "";
			_gopro ctrlSetStructuredText parseText format["%1",_message];
		};
		_gopro ctrlCommit 0;
*/


		_dgopro = _ui displayCtrl 444449;
		if ( client_crazy > 0 ) then
		{
			_message = "<img size='2' image='cg_mission_files\icons\druggedup.paa'/>";
			_dgopro ctrlSetStructuredText parseText format["%1",_message];
		}
		else
		{
			_message = "";
			_dgopro ctrlSetStructuredText parseText format["%1",_message];
		};
		_dgopro ctrlCommit 0;


		_wdgopro = _ui displayCtrl 444450;
		if ( client_bonging ) then
		{
			_message = "<img size='2' image='cg_mission_files\icons\onweed.paa'/>";
			_wdgopro ctrlSetStructuredText parseText format["%1",_message];
		}
		else
		{
			_message = "";
			_wdgopro ctrlSetStructuredText parseText format["%1",_message];
		};
		_wdgopro ctrlCommit 0;



		_bewdgopro = _ui displayCtrl 444451;
		if ( client_battery < 30 ) then
		{
			_message = "<img size='2' image='cg_mission_files\icons\battery.paa'/>";
			_bewdgopro ctrlSetStructuredText parseText format["%1",_message];
		}
		else
		{
			_message = "";
			_bewdgopro ctrlSetStructuredText parseText format["%1",_message];
		};
		_bewdgopro ctrlCommit 0;	


		_tbewdgopro = _ui displayCtrl 444452;
		if ( client_poop > 80 ) then
		{
			_message = "<img size='2' image='cg_mission_files\icons\toilet.paa'/>";
			_tbewdgopro ctrlSetStructuredText parseText format["%1",_message];
		}
		else
		{
			_message = "";
			_tbewdgopro ctrlSetStructuredText parseText format["%1",_message];
		};
		_tbewdgopro ctrlCommit 0;	



		_tbewdgopro = _ui displayCtrl 444453;
		if ( taskrunning ) then
		{
			_message = "<img size='2' image='cg_mission_files\icons2\working.paa'/>";
			_tbewdgopro ctrlSetStructuredText parseText format["%1",_message];
		}
		else
		{
			_message = "";
			_tbewdgopro ctrlSetStructuredText parseText format["%1",_message];
		};
		_tbewdgopro ctrlCommit 0;



		_tbewdgopro = _ui displayCtrl 444454;
		if ( vehicle player != player ) then
		{
			if(client_seatbelt) then {
				_message = "<img size='2' image='cg_mission_files\icons2\seatbelton.paa'/>";
				_tbewdgopro ctrlSetStructuredText parseText format["%1",_message];
			} else {
				_message = "<img size='2' image='cg_mission_files\icons2\seatbeltoff.paa'/>";
				_tbewdgopro ctrlSetStructuredText parseText format["%1",_message];
			};
		}
		else
		{
			_message = "";
			_tbewdgopro ctrlSetStructuredText parseText format["%1",_message];
		};
		_tbewdgopro ctrlCommit 0;



		_tbewdgopro = _ui displayCtrl 444455;
		if ( client_nos_count > 0 ) then
		{
			_message = "<img size='2' image='cg_mission_files\icons2\nos.paa'/>";
			_tbewdgopro ctrlSetStructuredText parseText format["%1",_message];
		}
		else
		{
			_message = "";
			_tbewdgopro ctrlSetStructuredText parseText format["%1",_message];
		};
		_tbewdgopro ctrlCommit 0;

		_tbewdgopro2 = _ui displayCtrl 444456;
		if (client_firstCombatActive) then
		{
			_message = "<img size='2' image='icons\combat.paa'/>";
			_tbewdgopro2 ctrlSetStructuredText parseText format["%1",_message];
		}
		else
		{
			_message = "";
			_tbewdgopro2 ctrlSetStructuredText parseText format["%1",_message];
		};
		_tbewdgopro2 ctrlCommit 0;



	_bleeding = _ui displayCtrl 23570;
	_wounded = _ui displayCtrl 23575;
	_fracture = _ui displayCtrl 23580;
	_unconcious = _ui displayCtrl 23585;
	_disease = _ui displayCtrl 23590;

	im_hurt = false;
	_dam = myHealth;
	_dam = round(_dam * 100);
	_dam = round(100 - _dam);
	if(!im_dead) then
	{
		_injurytext = "";

			_myInjuries = player getVariable "playerInjuries";

			if( (_myInjuries select 0) != 0 || (_myInjuries select 1) != 0 || (_myInjuries select 7) != 0 ) then {
				im_hurt = true;
				_bleeding ctrlSetStructuredText parseText format["<img size='0.07' image='cg_mission_files\icons\head.paa'/><t size='0.03px'> Your head aches. </t>",player];

				_chances = round (random 1000);
				if(_chances > 985) then
				{
					["Remove",0.01] call Client_Fnc_DoHealth;
				};

			}
			else
			{
				_bleedingon = "";
				_bleeding ctrlSetText format["%1", _bleedingon];
				_bleeding ctrlCommit 0;

			};


			if( (_myInjuries select 2) != 0 || (_myInjuries select 3) != 0 || (_myInjuries select 6) != 0 || (_myInjuries select 9) != 0 ) then {
				im_hurt = true;
				_wounded ctrlSetStructuredText parseText format["<img size='0.07' image='cg_mission_files\icons\chest.paa'/><t size='0.03px'> Your body is sore. </t>",player];

				_chances = round (random 1000);
				if(_chances > 985) then
				{
					["Remove",0.01] call Client_Fnc_DoHealth;
				};

			}
			else
			{
				_woundedon = "";
				_wounded ctrlSetText format["%1", _woundedon];
				_wounded ctrlCommit 0;
			};


			if( (_myInjuries select 4) != 0 || (_myInjuries select 5) != 0 ) then {
				im_hurt = true;
				_fracture ctrlSetStructuredText parseText format["<img size='0.07' image='cg_mission_files\icons\arm.paa'/><t size='0.03px'> Your arms are weak. </t>",player];

				_chances = round (random 1000);
				if(_chances > 985) then
				{
					["Remove",0.01] call Client_Fnc_DoHealth;
				};

			}
			else
			{
				_fractureon = "";
				_fracture ctrlSetText format["%1", _fractureon];
				_fracture ctrlCommit 0;
			};


			if( (_myInjuries select 8) != 0 ) then {
				im_hurt = true;
				_unconcious ctrlSetStructuredText parseText format["<img size='0.07' image='cg_mission_files\icons\foot.paa'/><t size='0.03px'> Your legs are weak. </t>",player];

				_chances = round (random 1000);
				if(_chances > 985) then
				{
					["Remove",0.01] call Client_Fnc_DoHealth;
				};

			}
			else
			{
				_unconciouson = "";
				_unconcious ctrlSetText format["%1", _unconciouson];
				_unconcious ctrlCommit 0;
			};


		if( (_myInjuries select 10) != 0 ) then
		{
			im_hurt = true;
			_disease ctrlSetStructuredText parseText format["<img size='0.07' image='cg_mission_files\icons\sick.paa'/><t size='0.03px'> You feel sick. </t>",player];


			_chances = round (random 600);
			if(_chances > 595) then {
				playSound3D ["cg_sndimg\sounds\cough1.ogg", player, false, getPosASL player, 3, 1, 45];
				playSound3D ["cg_sndimg\sounds\cough2.ogg", player, false, getPosASL player, 3, 1, 45];
				[1] spawn client_fnc_HudElements;

			} else {
				_chances = round (random 1000);
				if(_chances > 950) then
				{
					player enableFatigue true;
					player setFatigue 0;
					[1] spawn client_fnc_HudElements;
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
					["Remove",0.05] call Client_Fnc_DoHealth;
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
	if(isNil "client_fnc_totalPain") exitWith {};
	[] spawn client_fnc_totalPain;
	