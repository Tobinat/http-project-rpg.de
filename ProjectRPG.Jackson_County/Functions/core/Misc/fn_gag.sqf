params["_unit"];
if(isNull _unit) exitWith {}; //Not valid
if((_unit getVariable ["gagged", false])) exitWith {};

if(player isEqualTo _unit) exitWith {};
if(!isPlayer _unit) exitWith {};
//Broadcast!

["Wkładam skarpetę.. proszę czekać!", false] spawn domsg;
playSound3D ["cg_sndimg\sounds\blindfold.ogg", cursortarget, false, getPosASL player, 1, 1, 125];
_cme = 1;
_myposy = getPos player;
//["Remove",30] call fnc_karma;

for "_i" from 0 to 1 step 0 do  {
//life_action_inUse = true;
	if( player distance _myposy > 2.5 ) exitwith { 
			["Cel jest zbyt daleko!", false] spawn domsg;
	};
	player playMove "AinvPercMstpSnonWnonDnon_Putdown_AmovPercMstpSnonWnonDnon";
	waitUntil{animationState player != "AinvPercMstpSnonWnonDnon_Putdown_AmovPercMstpSnonWnonDnon";};
	_cme = _cme + 1;
	if(_cme > 3) exitwith {
		_unit setVariable["gagged", true, true];
		_unit setVariable ["tf_voiceVolume", 0, true];
		//[_unit,"gagged"] spawn life_fnc_nearestSound;
		[player] remoteExec ["client_fnc_gagged", _unit];
	};
};