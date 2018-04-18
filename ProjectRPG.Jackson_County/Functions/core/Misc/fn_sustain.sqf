// sustain player - remove or add statuses here!
// Koil

//karma, health, drink, battery, poop. array save
private ["_selection","_change"];

_adjust = param [0,"",[""]];
_type = param [1,"",[""]];
_amount = param [2,0,[0]];

if(_type == "Karma") then {

	if(_adjust == "Add") then { client_karma = client_karma + _amount; [format["Zyskales %1 reputacji! W sumie masz: %2",_amount,client_karma], true] spawn domsg; };
	if(_adjust == "Remove") then { client_karma = client_karma - _amount; [format["Straciles %1 reputacji! W sumie masz: %2",_amount,client_karma], true] spawn domsg; };

	_oldKarmaLevel = karma_level;

	if(client_karma > 999) then {
		karma_level = client_karma / 400;
		karma_level = floor (karma_level);
	} else {
		karma_level = 0;
	};

	if(karma_level > 100) then {
		karma_level = 100;
	};

	if(_oldKarmaLevel < karma_level) then { ["Wszedles na nowy poziom!", false] spawn domsg; player say "levelup"; };
	if(_oldKarmaLevel > karma_level) then { ["Wlasnie straciles poziom!", false] spawn domsg; player say "endbeep"; };

	_selection = 0;
	_change = client_karma;

};

if(_type == "Food") then {
	if(_adjust == "Add") then { [format["+%1 Odżywienia",_amount],true] spawn domsg; client_hunger = client_hunger + _amount; if (vehicle player == player) then { player playmove "vvv_anim_eat"; }; };
	if(_adjust == "Remove") then { client_hunger = client_hunger - _amount; };
	if(client_hunger > 100) then {client_hunger = 100;};
	if(client_hunger < 0) then {client_hunger = 0;};
	_selection = 1;
	_change = client_hunger;
	[] spawn client_fnc_hudhunger;
};

if(_type == "Drink") then {
	if(_adjust == "Add") then { [format["+%1 Nawodnienia",_amount],true] spawn domsg; client_thirst = client_thirst + _amount; if (vehicle player == player) then { player playmove "vvv_anim_drink"; }; };
	if(_adjust == "Remove") then { client_thirst = client_thirst - _amount; };
	if(client_thirst > 100) then {client_thirst = 100;};
	if(client_thirst < 0) then {client_thirst = 0;};
	_selection = 2;
	_change = client_thirst;
	[] spawn client_fnc_hudthirst;		
};

if(_type == "Battery") then {
	if(_adjust == "Add") then { client_battery = client_battery + _amount; };
	if(_adjust == "Remove") then { client_battery = client_battery - _amount; };
	if(client_battery > 200) then {client_battery = 200;};
	if(client_battery < 0) then {client_battery = 0;};	
	_selection = 3;
	_change = client_battery;
	[] spawn client_fnc_hudbattery;			
};

if(_type == "Poop") then {
	if(_adjust == "Add") then { client_poop = client_poop + _amount; };
	if(_adjust == "Remove") then { client_poop = client_poop - _amount; };
	if(client_poop > 100) then {client_poop = 100;};
	if(client_poop < 0) then {client_poop = 0;};
	_selection = 4;
	_change = client_poop;			
};
//health is 5

if(_type == "unhealthiness") then {
	if(_adjust == "Add") then { [format["+%1 Choroby",_amount],true] spawn domsg; client_unhealthiness = client_unhealthiness + _amount; };
	if(_adjust == "Remove") then { [format["-%1 Choroby",_amount],true] spawn domsg; client_unhealthiness = client_unhealthiness - _amount; };
	if(client_unhealthiness > 100) then { client_unhealthiness = 100;};
	if(client_unhealthiness < 0) then { client_unhealthiness = 0;};	
	if(client_unhealthiness > 60) then {
		hint "Jestes w tym momencie bardzo niezdrowy.";
		_roll = 100 - client_unhealthiness;
		_chance = random(_roll);
		_wtf = _chance + client_unhealthiness;
		if(_wtf > 90 && _adjust == "Add") then {
			[69] spawn client_fnc_givedisease;
		};
	};
	_change = client_unhealthiness;	
	_selection = 6;	
	[] spawn client_fnc_hudunhealthiness;
};

//8 left open for licenses

//LICENSES [0,0,0,0,0,0] -- groundvehicle / gun / mining / woodlogging / fishing / 


if(_type == "license") then {

	if(_adjust == "Add") then { 

		if(_amount == 1) then { licensearray SET [0,1]; ["Otrzymales prawo jazdy",false] spawn domsg; };
		if(_amount == 2) then { licensearray SET [1,1]; ["Otrzymales licencje na bron",false] spawn domsg;  };
		if(_amount == 3) then { licensearray SET [2,1]; ["Otrzymales licencje gornika",false] spawn domsg;  };
		if(_amount == 4) then { licensearray SET [3,1]; ["Otrzymales licencje drwala",false] spawn domsg; };
		if(_amount == 5) then { licensearray SET [4,1]; ["Otrzymales licencje rybaka",false] spawn domsg; };

	};

	if(_adjust == "Remove") then { 

		if(_amount == 1) then { licensearray SET [0,0]; ["Straciles prawo jazdy",false] spawn domsg; };
		if(_amount == 2) then { licensearray SET [1,0]; ["Straciles licencje na bron",false] spawn domsg; };
		if(_amount == 3) then { licensearray SET [2,0]; ["Straciles licencje gornika",false] spawn domsg; };
		if(_amount == 4) then { licensearray SET [3,0]; ["Straciles licencje drwala",false] spawn domsg; };
		if(_amount == 5) then { licensearray SET [4,0]; ["Straciles licencje rybaka",false] spawn domsg; };

	};

	if(_adjust == "RemoveQuiet") then { 

		if(_amount == 1) then { licensearray SET [0,0]; };
		if(_amount == 2) then { licensearray SET [1,0]; };
		if(_amount == 3) then { licensearray SET [2,0]; };
		if(_amount == 4) then { licensearray SET [3,0]; };
		if(_amount == 5) then { licensearray SET [4,0]; };

	};

	_change = licensearray;
	_selection = 8;

};



if(_type == "sex") then {
	if(female) then { _change = 1; } else { _change = 2; };
	_selection = 9;	
};


if(_type == "drug") then {
	["remove","unhealthiness",1] call client_fnc_sustain;
	if(client_marijuana > 0) then { client_marijuana = client_marijuana - 1; if(client_marijuana == 0) then { player setCustomAimCoef 1; }; if(client_marijuana == 1) then { 429 cutRsc ["HUDmarijuana","PLAIN"]; };   };
	if(client_cocaine > 0) then { client_cocaine = client_cocaine - 1; if(client_cocaine == 0) then { player setAnimSpeedCoef 1; }; if(client_cocaine == 1) then { 430 cutRsc ["HUDcocaine","PLAIN"]; };  };
	if(client_meth > 0) then { client_meth = client_meth - 1; if(client_meth == 0) then {}; if(client_meth == 1) then { 431 cutRsc ["HUDmeth","PLAIN"]; };  };
	if(client_heroin > 0) then { client_heroin = client_heroin - 1; if(client_heroin == 0) then { player setUnitRecoilCoefficient 2.8; }; if(client_heroin == 1) then { 432 cutRsc ["HUDheroin","PLAIN"]; };  };
	if(client_energy > 0) then { client_energy = client_energy - 1; if(client_energy == 0) then { player enablefatigue true; player enablestamina true; }; if(client_energy == 1) then { 433 cutRsc ["HUDenergy","PLAIN"]; };  };
};

_mydrugeffects = [client_marijuana,client_cocaine,client_meth,client_heroin,client_energy];




_myStatuses = player getvariable "statuses";

if(!isNil "_selection") then {
	_myStatuses set [_selection, _change]; 
};

_myInjuriesToUpdate = player getvariable "playerInjuries";
_myStatuses set [7, _myInjuriesToUpdate];  
_myStatuses set [10, _myDrugEffects]; 
player setVariable ["statuses",_mystatuses,false];


if(_type == "MafiaMoney") then {

	if(_adjust == "Add") then { moneyOwed = moneyOwed + _amount; };
	if(_adjust == "Remove") then { moneyOwed = moneyOwed - _amount; };
	if(_adjust == "Set") then { moneyOwed = _amount; };

	if(moneyOwed < 0) then {moneyOwed = 0;};

	loan SET [1, moneyOwed];
	_myStatuses set [11, Loan]; 

	player setVariable ["statuses",_mystatuses,false];

	[player,Loan] remoteexec ["server_fnc_updateMafiaOwed",2];
	
};

	[player, "statuses", (player getvariable "statuses")] remoteExec ["Server_fnc_setVariable",2];
	[_mystatuses,getplayeruid player] remoteExec ["server_fnc_syncStatuses",2];


// experience food drink battery poop health unhealthiness [playerinjuries], [licneses], sex, [4 drug effects], moneyowed
// _statuses = [0,100,100,100,0,0,0,[0,0,0,0,0,0,0,0,0,0,0],[0,0,0,0,0,0],0,[0,0,0,0,0],0];