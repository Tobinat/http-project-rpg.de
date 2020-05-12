/*
Updated HUD by Koil. -- if hud breaks add im_dead = false;to revive or cpr scripts tehe.. cuntr.

new hud requires

HEALTH / FOOD / DRINK / WELL BEING / DRUG ADDICTION - persistent ailments
GUN / AMMO / sELECT

Meth Effect / Marijuana Effect / Work Effect - temporary effects

Medical Ailments

Make diseases persistent

redo all this to be on different layers so you can do commit fade in ? if thats how it works

fix the water colors

make anonymous phone calls from booths

*/
disableSerialization;
private["_injurytext","_ui","_food","_water","_health","_money","_cash","_ammo","_stam","_select","_ammocount","_selectcount","_bulletcount","_dam","_fps","_watermark","_lowfood","_lowhealth","_lowdrink","_bleeding","_wounded","_fracture","_unconcious","_woundedon","_fractureon","_unconciouson","_diseaseon","_currentactions","_currentactionson","_battery","_karma","_progfood","_progwater","_proghealth","_progfps","_progstamina","_progmags","_progammo","_progselect","_progbattery","_progkarma","_progpoop","_progdirt","_tfrchat"];

if(myhealth > 0) then { [] spawn client_fnc_hudhealth; [] call client_fnc_hudwork; };
	_ui = uiNameSpace getVariable ["playerHUD",displayNull];

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
			_corona = player getVariable "corona";
			//_krank = player getVariable "krank";

			if (_corona == 0 && (player getVariable "krank") ) then {
				[] spawn client_fnc_healcorona;
			};

			if( (_myInjuries select 0) != 0 || (_myInjuries select 1) != 0 || (_myInjuries select 7) != 0 ) then {
				im_hurt = true;
				_bleeding ctrlSetStructuredText parseText format["<img size='0.07' image='prpg_data\icons\head.paa'/><t size='0.03px'> Dein Kopf tut weh. </t>",player];

				_chances = round (random 1000);
				if(_chances > 985) then
				{
					//["Remove",0.01] call Client_Fnc_DoHealth;
				};

			} else {
				_bleedingon = "";
				_bleeding ctrlSetText format["%1", _bleedingon];
				_bleeding ctrlCommit 0;

			};


			if( (_myInjuries select 2) != 0 || (_myInjuries select 3) != 0 || (_myInjuries select 6) != 0 || (_myInjuries select 9) != 0 ) then {
				im_hurt = true;
				_wounded ctrlSetStructuredText parseText format["<img size='0.07' image='prpg_data\icons\chest.paa'/><t size='0.03px'> Deine Brust tut weh. </t>",player];

				_chances = round (random 1000);
				if(_chances > 985) then
				{
					//["Remove",0.01] call Client_Fnc_DoHealth;
				};

			} else {
				_woundedon = "";
				_wounded ctrlSetText format["%1", _woundedon];
				_wounded ctrlCommit 0;
			};


			if( (_myInjuries select 4) != 0 || (_myInjuries select 5) != 0 ) then {
				im_hurt = true;
				_fracture ctrlSetStructuredText parseText format["<img size='0.07' image='prpg_data\icons\arm.paa'/><t size='0.03px'> Deine Arme tun weh. </t>",player];

				_chances = round (random 1000);
				if(_chances > 985) then
				{
					//["Remove",0.01] call Client_Fnc_DoHealth;
				};

			} else {
				_fractureon = "";
				_fracture ctrlSetText format["%1", _fractureon];
				_fracture ctrlCommit 0;
			};


			if( (_myInjuries select 8) != 0 ) then {
				im_hurt = true;
				_unconcious ctrlSetStructuredText parseText format["<img size='0.07' image='prpg_data\icons\foot.paa'/><t size='0.03px'> Deine Beine tun weh. </t>",player];

				_chances = round (random 1000);
				if(_chances > 985) then
				{
					//["Remove",0.01] call Client_Fnc_DoHealth;
				};

			} else {
				_unconciouson = "";
				_unconcious ctrlSetText format["%1", _unconciouson];
				_unconcious ctrlCommit 0;
			};


		if ( (_myInjuries select 10) != 0 ) then
		{
			if ( (_myInjuries select 10) == 5 ) then {
				_disease ctrlSetStructuredText parseText format["<img size='0.07' image='prpg_data\icons\sick.paa'/><t size='0.03px'> Du fühlst dich krank. </t>",player];
				_corona = _corona - 1;
				player setVariable ["corona",_corona,true];
				_chances = round (random 1000);
				if (_chances > 750) then {
					if(goggles player != "Mask_M40" && goggles player != "Masque_Chirurgical" && uniform player != "vvv_hazmat") then {
						[] spawn client_fnc_spreaddisease;
					} else {
						_fickdich = round (random 100);
						if (_fickdich > 90) then { 
							[] spawn client_fnc_spreaddisease; 
						};
					};
					_coughtype = round (random 4);
					if(_coughtype == 1) then
					{
						playSound3D ["prpg_data\sounds\cough1.ogg", player, false, getPosASL player, 3, 1, 45];
					};
					if(_coughtype == 2) then
					{
						playSound3D ["prpg_data\sounds\cough2.ogg", player, false, getPosASL player, 3, 1, 45];
					};
					if(_coughtype == 3) then
					{
						playSound3D ["prpg_data\sounds\cough3.ogg", player, false, getPosASL player, 3, 1, 45];
					};
					if(_coughtype == 4) then
					{
						playSound3D ["prpg_data\sounds\cough4.ogg", player, false, getPosASL player, 3, 1, 45];
					};

					if (_chances > 950) then {
						[] spawn KK_fnc_forceRagdoll;
					};
				};
			} else {


				im_hurt = true;
				if( (_myInjuries select 10) == 1 ) then
				{
					_disease ctrlSetStructuredText parseText format["<img size='0.07' image='prpg_data\icons\sick.paa'/><t size='0.03px'> Du hast eine Erkältung. </t>",player];
				} else {
					_disease ctrlSetStructuredText parseText format["<img size='0.07' image='prpg_data\icons\sick.paa'/><t size='0.03px'> Du fühlst dich krank. </t>",player];
				};


				_chances = round (random 600);
				if(_chances > 595) then {
					playSound3D ["prpg_data\sounds\cough1.ogg", player, false, getPosASL player, 3, 1, 45];
					playSound3D ["prpg_data\sounds\cough2.ogg", player, false, getPosASL player, 3, 1, 45];
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
							playSound3D ["prpg_data\sounds\cough1.ogg", player, false, getPosASL player, 3, 1, 45];
						};
						if(_coughtype == 2) then
						{
							playSound3D ["prpg_data\sounds\cough2.ogg", player, false, getPosASL player, 3, 1, 45];
						};
						if(_coughtype == 3) then
						{
							playSound3D ["prpg_data\sounds\cough3.ogg", player, false, getPosASL player, 3, 1, 45];
						};
						if(_coughtype == 4) then
						{
							playSound3D ["prpg_data\sounds\cough4.ogg", player, false, getPosASL player, 3, 1, 45];
						};

					};
					if(_chances > 960) then
					{
						if(isNull objectParent player) then
						{
							//[] spawn KK_fnc_forceRagdoll;
							if(goggles player != "Mask_M40" && goggles player != "Masque_Chirurgical" && uniform player != "vvv_hazmat") then {
								[] spawn client_fnc_spreaddisease;
							};
						};
					//["Remove",0.05] call Client_Fnc_DoHealth;
					};
					if (_chances > 990) then 
					{
						[] spawn KK_fnc_forceRagdoll;
					};
				};
			};
		} else {
			_diseaseon = "";
			_disease ctrlSetText format["%1", _diseaseon];
		};
		
		
		if(player getVariable  "ACE_isUnconscious" && !life_unconscious) then {
			life_unconscious = true;
			if (count currentEMS > 0) then {
				0 spawn {
					_action = ["Du bist Ohnmächtig. Mit letzter kraft kannst du dein Handy ziehen. Möchtest du das S.L.F.D. über deine Lage informieren?","Ohnmächtig","Ja","Nein"] call BIS_fnc_guiMessage;
					if(_action) then {
						[] call client_fnc_requestMedic;
					};
				};
			} else {
				["Es sind keine Sanitäter im Dienst, nach 2 Minuten kannst du Respawnen.",true] spawn domsg;
				sleep 120;
				if!(player getVariable  "ACE_isUnconscious") exitWith {life_unconscious = false;};
				0 spawn {
					_action = ["Du bist seit 2 Minuten Ohnmächtig. Es ist aber kein Sanitäter im Dienst. Willst du respawnen?","Ohnmächtig","Ja","Nein"] call BIS_fnc_guiMessage;
					if(_action) then {
						player setDamage 1;
					};
				};
			};
		};
			
		if(!(player getVariable "ACE_isUnconscious") && life_unconscious) then {
				life_unconscious = false;
		};		
	};
if(isNil "client_fnc_totalPain") exitWith {};
//[] spawn client_fnc_totalPain;
	
	
	