if(deadPlayer) exitwith { false };
if(godMode) exitwith { false };

_unit = _this select 0;
_source = _this select 1;
_damage = _this select 2;
_penis = false;

if(!isNull _source) then {

	if(_source != _unit) then {

		if(vehicle _source != _source && vehicle _unit == _unit && isplayer _source) exitwith {
			[] spawn {
				[] spawn KK_fnc_forceRagdoll;
			};
			_speed = round speed _source;
			_speed = _speed / 120;
			["Remove",_speed] call fnc_doHealth;
			_penis = true;
		};

		_curWep = currentWeapon _source;
		if(_curWep in ["CG_CROSS","CG_BATON","CG_TELBAT","CG_BAT","CG_SHOVEL"]) exitwith {
			[_unit,_source] spawn life_fnc_blunthit;
			_penis = true;
		};

		if(_curWep in ["cg_scythe","CG_PICKAXE","cg_hatchet","cg_machete"]) exitwith {
			[_unit,_source] spawn life_fnc_sharphit;
			_penis = true;
		};

		if(_curWep in ["prpl_benelli_14_pgs_rail"] && side _source == west) exitwith {
			["Remove",0.15,_source] call fnc_doHealth;
			if(!life_isdowned && vehicle player == player) then {
				_dist = _source distance player;
				[_unit,_source,_dist] spawn life_fnc_downed;
			};
			_penis = true;
		};

		if(_curWep in ["Taser_26"] && side _source == west) exitwith {
			["Remove",0.1,_source] call fnc_doHealth;
			[_unit,_source] spawn life_fnc_tazed;
			_penis = true;
		};

	};

    if(_penis) exitwith {};
	[5] spawn life_fnc_HudElements;

};

if(_source == _unit) then { _damage = _damage * 10; };

if(_penis) exitwith { false };

["Remove",_damage,_source] call fnc_doHealth;

false
