fnc_armc4 = {
	_c4pic_array = ["\A3L_Client2\c4files\pic0.paa","\A3L_Client2\c4files\pic1.paa","\A3L_Client2\c4files\pic2.paa","\A3L_Client2\c4files\pic3.paa","\A3L_Client2\c4files\pic4.paa","\A3L_Client2\c4files\pic5.paa","\A3L_Client2\c4files\pic6.paa","\A3L_Client2\c4files\pic7.paa","\A3L_Client2\c4files\pic8.paa","\A3L_Client2\c4files\pic9.paa"];
	_eentallenpic = ctrltext 154269;
	_tientallenpic = ctrltext 154268;
	_eentallen = _c4pic_array find _eentallenpic;
	_tientallenold = _c4pic_array find _tientallenpic;
	_tientallen = _tientallenold * 10;
	_totaltime = _tientallen + _eentallen; 
	
	[player,"c4_planted"] spawn life_fnc_nearestSound;	
	[_totaltime,prisondoor] remoteExecCall ["A3L_Fnc_Bankalarm",2];
};

fnc_cgbankresettimer = {
	uiSleep 3600;
	cgbankvault setvariable ["robbed", nil, true];
	stash1 setvariable ["robbed", nil, true];
	[stash1,false] remoteExecCall ["TON_fnc_hideThis",2];
	stash2 setvariable ["robbed", nil, true];
	stash3 setvariable ["robbed", nil, true];
	stash4 setvariable ["robbed", nil, true];
	stash5 setvariable ["robbed", nil, true];
	stash6 setvariable ["robbed", nil, true];
	stash7 setvariable ["robbed", nil, true];
	stash8 setvariable ["robbed", nil, true];
	stash9 setvariable ["robbed", nil, true];
	pstash1 setvariable ["robbed", nil, true];
	pstash2 setvariable ["robbed", nil, true];
	pstash3 setvariable ["robbed", nil, true];
	pstash4 setvariable ["robbed", nil, true];
	pstash5 setvariable ["robbed", nil, true];
	pstash6 setvariable ["robbed", nil, true];
	pstash7 setvariable ["robbed", nil, true];
	pstash8 setvariable ["robbed", nil, true];
	pstash9 setvariable ["robbed", nil, true];
	pstash10 setvariable ["robbed", nil, true];
};

A3L_Fnc_SellSuitcase = {
	{
		if (typeOf _x == "Land_Suitcase_F") then {
			detach _x;
			deletevehicle _x;
			_money = 100000;
			cash_in_hand = cash_in_hand + _money;
			if (side player == east) then {
				[format ["You sold your suitcase and received %1",_money],30,"green"] spawn domsg;
			};

			if (side player == civilian) then {
				[format ["You sold your suitcase and received %1",_money],30,"green"] spawn domsg;
			};

			if (side player == west) then {
				[format ["You recovered a suitcase and received %1",_money],30,"green"] spawn domsg;
			};			
		};		
	} foreach (attachedobjects player);
};