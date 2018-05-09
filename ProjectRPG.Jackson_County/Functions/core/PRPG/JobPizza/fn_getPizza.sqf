private["_oldBinDir","_oldBinPos"];
_veh = vehicle player;
_type = _this select 0;

if(opfer distance (vehicle player) < 25 && _type == "pizzaliefern") then {
	(vehicle player) setVelocity [0, 0, 0];
	_opferwillpizza = opfer;
	if(_veh != player) exitwith {};
	player playmove "AmovPercMrunSnonWnonDf_AmovPercMstpSnonWnonDnon_gthEnd";
	_opferwillpizza addItemToBackpack "np_hpizza";
	["PizzaGeliefert"] spawn mav_ttm_fnc_addExp;
	} else {
	["Hier musst du nichts liefern.", false] spawn domsg;
};
