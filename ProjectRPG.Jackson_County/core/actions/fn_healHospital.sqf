/*
	File: fn_healHospital.sqf
	
	
	Description:
	Doesn't matter, will be revised later.
*/
_medicsOnline = {_x != player && {side _x == independent}} count playableUnits > 0;

if(_medicsOnline) exitWith {["Es sind noch andere Ärtzte da! Ich bin aktuell zu beschäftigt", false] spawn domsg;};
if(cash_in_hand < 10) exitWith {[format[localize "STR_NOTF_HS_NoCash",10], false] spawn domsg;};
[localize "STR_NOTF_HS_Healing", false] spawn domsg;
uiSleep 8;
if(player distance (_this select 0) > 5) exitWith {[localize "STR_NOTF_HS_ToFar", false] spawn domsg;};
[localize "STR_NOTF_HS_Healed", false] spawn domsg;
[player,player] call ace_medical_fnc_treatmentAdvanced_fullHealLocal;

_price = 10;


	if(karma_level > 0) then {
		_mydiscount = karma_level / 100;
		_discount = 1 - _mydiscount;
		_price = _price * _discount;
		_discountper = _mydiscount * 100;
		[format["You received a %%1 discount due to your reputation level!",_discountper], false] spawn domsg;
	};
	
	["cash","take",_price] call life_fnc_handleCash;

player forceWalk false;