publicVariable "life_fnc_sidechat";

fnc_index =
compileFinal "
	private[""_item"",""_stack""];
	_item = _this select 0;
	_stack = _this select 1;
	_return = -1;

	{
		if(_item in _x) exitWith {
			_return = _forEachIndex;
		};
	} foreach _stack;

	_return;
";
publicVariable "fnc_index";

fnc_index =
compileFinal "
	private[""_item"",""_stack""];
	_item = _this select 0;
	_stack = _this select 1;
	_return = -1;

	{
		if(_item in _x) exitWith {
			_return = _forEachIndex;
		};
	} foreach _stack;

	_return;
";
publicVariable "fnc_index";

fnc_player_query =
compileFinal "
	params [""_ret""];
	if(isNull _ret) exitWith {};
	if(isNil ""_ret"") exitWith {};
	
	[cash_in_bank,cash_in_hand,player,player] remoteExec [""life_fnc_admininfo"",_ret];
";
publicVariable "fnc_player_query";

clientWireTransfer =
compileFinal "
	params [""_val"", ""_from""];
	if(!([str(_val)] call fnc_isnumber)) exitWith {};
	if(_from isEqualTo """") exitWith {};
	['bank','add',_val] call life_fnc_handleCash;
	[format[""%1 has wire transferred $%2 to you."",_from,[_val] call life_fnc_numberText], false] spawn domsg;
	
";
publicVariable "clientWireTransfer";

fnc_isnumber =
compileFinal "
	private[""_valid"",""_value"",""_compare""];
	_value = _this select 0;
	_valid = [""0"",""1"",""2"",""3"",""4"",""5"",""6"",""7"",""8"",""9""];
	_array = [_value] call KRON_StrToArray;
	_return = true;
	
	{
		if(_x in _valid) then	
		{}
		else
		{
			_return = false;
		};
	} foreach _array;
	_return;
";

publicVariable "fnc_isnumber";

clientGangKick =
compileFinal "
	params [""_unit"", ""_group""];
	if(isNil ""_unit"" OR isNil ""_group"") exitWith {};
	if(player isEqualTo _unit && (group player) isEqualTo _group) then
	{
		life_my_gang = ObjNull;
		[player] joinSilent (createGroup civilian);
		[""You have been kicked out of the gang."", false] spawn domsg;
		
	};
";
publicVariable "clientGangKick";

clientGetKey =
compileFinal "
	params [""_vehicle"", ""_unit"", ""_giver""];
	if(isNil ""_unit"" OR isNil ""_giver"") exitWith {};
	if(player isEqualTo _unit && !(_vehicle in life_vehicles)) then
	{
		_name = getText(configFile >> ""CfgVehicles"" >> (typeOf _vehicle) >> ""displayName"");
		[format[""%1 has gave you keys for a %2"",_giver,_name], false] spawn domsg;
		life_vehicles pushBack _vehicle;
	};
";

publicVariable "clientGetKey";

clientGangLeader =
compileFinal "
	params [""_unit"", ""_group""];
	if(isNil ""_unit"" OR isNil ""_group"") exitWith {};
	if(player isEqualTo _unit && (group player) isEqualTo _group) then
	{
		player setRank ""COLONEL"";
		_group selectLeader _unit;
		[""You have been made the new leader."", false] spawn domsg;
	};
";

publicVariable "clientGangLeader";

fnc_cell_emsrequest = 
compileFinal "
private[""_msg"",""_to""];
	ctrlShow[3022,false];
	_msg = ctrlText 3003;
	_to = ""EMS Units"";
	if(_msg == """") exitWith { [""You must enter a message to send!"", false] spawn domsg; ctrlShow[3022,true];};
		
	[_msg,name player,5] remoteExecCall [""clientMessage"",independent];
	[] call life_fnc_cellphone;
	[format[""You have sent a message to all EMS Units."",_to,_msg], false] spawn domsg;
	ctrlShow[3022,true];
";

fnc_cell_textmsg =
compileFinal "
	private[""_msg"",""_to""];
	ctrlShow[3015,false];
	_msg = ctrlText 3003;
	if(lbCurSel 3004 == -1) exitWith {[""You must select a player you are sending the text to!"", false] spawn domsg; ctrlShow[3015,true];};
	_to = call compile format[""%1"",(lbData[3004,(lbCurSel 3004)])];
	if(isNull _to) exitWith {ctrlShow[3015,true];};
	if(isNil ""_to"") exitWith {ctrlShow[3015,true];};
	if(_msg == """") exitWith {[""You must enter a message to send!"", false] spawn domsg;ctrlShow[3015,true];};
	
	[_msg,name player,0] remoteExecCall [""clientMessage"",_to];
	[] call life_fnc_cellphone;
	[format[""You sent %1 a message: %2"",name _to,_msg], false] spawn domsg;
	ctrlShow[3015,true];
";

fnc_cell_textcop =
compileFinal "
	private[""_msg"",""_to""];
	ctrlShow[3016,false];
	_msg = ctrlText 3003;
	_to = ""The Police"";
	if(_msg == """") exitWith {[""You must enter a message to send!"", false] spawn domsg;ctrlShow[3016,true];};
		
	[_msg,name player,1] remoteExecCall [""clientMessage"",true];
	[] call life_fnc_cellphone;
	[format[""You sent %1 a message: %2"",_to,_msg], false] spawn domsg;
	ctrlShow[3016,true];
";

fnc_cell_textadmin =
compileFinal "
	private[""_msg"",""_to"",""_from""];
	ctrlShow[3017,false];
	_msg = ctrlText 3003;
	_to = ""The Admins"";
	if(_msg == """") exitWith {[""You must enter a message to send!"", false] spawn domsg;ctrlShow[3017,true];};
		
	[_msg,name player,2] remoteExecCall [""clientMessage"",true];
	[] call life_fnc_cellphone;
	hint format[""You sent %1 a message: %2"",_to,_msg];
	ctrlShow[3017,true];
";

fnc_cell_adminmsg =
compileFinal "
	if(isServer) exitWith {};
	if((call life_adminlevel) < 1) exitWith {[""You are not an admin!"", false] spawn domsg;};
	private[""_msg"",""_to""];
	_msg = ctrlText 3003;
	_to = call compile format[""%1"",(lbData[3004,(lbCurSel 3004)])];
	if(isNull _to) exitWith {};
	if(_msg == """") exitWith {[""You must enter a message to send!"", false] spawn domsg;};
	
	[_msg,name player,3] remoteExecCall [""clientMessage"",_to];
	[] call life_fnc_cellphone;
	[format[""Admin Message Sent To: %1 - Message: %2"",name _to,_msg], false] spawn domsg;
";

fnc_cell_adminmsgall =
compileFinal "
	if(isServer) exitWith {};
	if((call life_adminlevel) < 1) exitWith {[""You are not an admin!"", false] spawn domsg;};
	private[""_msg"",""_from""];
	_msg = ctrlText 3003;
	if(_msg == """") exitWith {[""You must enter a message to send!"", false] spawn domsg;};
	
	[_msg,name player,4] remoteExecCall [""clientMessage"",true];
	[] call life_fnc_cellphone;
	[format[""Admin Message Sent To All: %1"",_msg], false] spawn domsg;
";

publicVariable "fnc_cell_textmsg";
publicVariable "fnc_cell_textcop";
publicVariable "fnc_cell_textadmin";
publicVariable "fnc_cell_adminmsg";
publicVariable "fnc_cell_adminmsgall";
publicVariable "fnc_cell_emsrequest";

clientMessage =
compileFinal "
	if(isServer) exitWith {};
	params [""_msg"", ""_from"", ""_type""];
	if(_from isEqualTo """") exitWith {};
	switch (_type) do
	{
		case 0 :
		{
			private[""_message""];
			_message = format["">>>MESSAGE FROM %1: %2"",_from,_msg];
			hint parseText format [""<t color='#FFCC00'><t size='2'><t align='center'>New Message<br/><br/><t color='#33CC33'><t align='left'><t size='1'>To: <t color='#ffffff'>You<br/><t color='#33CC33'>From: <t color='#ffffff'>%1<br/><br/><t color='#33CC33'>Message:<br/><t color='#ffffff'>%2"",_from,_msg];
			
			[""TextMessage"",[format[""You Received A New Private Message From %1"",_from]]] call bis_fnc_showNotification;
			systemChat _message;
		};
		
		case 1 :
		{
			if(side player != west) exitWith {};
			private[""_message""];
			_message = format[""---911 DISPATCH FROM %1: %2"",_from,_msg];
			hint parseText format [""<t color='#316dff'><t size='2'><t align='center'>New Dispatch<br/><br/><t color='#33CC33'><t align='left'><t size='1'>To: <t color='#ffffff'>All Officers<br/><t color='#33CC33'>From: <t color='#ffffff'>%1<br/><br/><t color='#33CC33'>Message:<br/><t color='#ffffff'>%2"",_from,_msg];
			
			[""PoliceDispatch"",[format[""A New Police Report From: %1"",_from]]] call bis_fnc_showNotification;
			systemChat _message;
		};
		
		case 2 :
		{
			if((call life_adminlevel) < 1) exitWith {};
			private[""_message""];
			_message = format[""???ADMIN REQUEST FROM %1: %2"",_from,_msg];
			hint parseText format [""<t color='#ffcefe'><t size='2'><t align='center'>Admin Request<br/><br/><t color='#33CC33'><t align='left'><t size='1'>To: <t color='#ffffff'>Admins<br/><t color='#33CC33'>From: <t color='#ffffff'>%1<br/><br/><t color='#33CC33'>Message:<br/><t color='#ffffff'>%2"",_from,_msg];
			
			[""AdminDispatch"",[format[""%1 Has Requested An Admin!"",_from]]] call bis_fnc_showNotification;
			systemChat _message;
		};
		
		case 3 :
		{
			private[""_message""];
			_message = format[""!!!ADMIN MESSAGE: %1"",_msg];
			_admin = format[""Sent by admin: %1"", _from];
			hint parseText format [""<t color='#FF0000'><t size='2'><t align='center'>Admin Message<br/><br/><t color='#33CC33'><t align='left'><t size='1'>To: <t color='#ffffff'>You<br/><t color='#33CC33'>From: <t color='#ffffff'>An Admin<br/><br/><t color='#33CC33'>Message:<br/><t color='#ffffff'>%1"",_msg];
			
			[""AdminMessage"",[""You Have Received A Message From An Admin!""]] call bis_fnc_showNotification;
			systemChat _message;
			if((call life_adminlevel) > 0) then {systemChat _admin;};
		};
		
		case 4 :
		{
			private[""_message"",""_admin""];
			_message = format[""!!!ADMIN MESSAGE: %1"",_msg];
			_admin = format[""Sent by admin: %1"", _from];
			hint parseText format [""<t color='#FF0000'><t size='2'><t align='center'>Admin Message<br/><br/><t color='#33CC33'><t align='left'><t size='1'>To: <t color='#ffffff'>All Players<br/><t color='#33CC33'>From: <t color='#ffffff'>The Admins<br/><br/><t color='#33CC33'>Message:<br/><t color='#ffffff'>%1"",_msg];
			
			[""AdminMessage"",[""You Have Received A Message From An Admin!""]] call bis_fnc_showNotification;
			systemChat _message;
			if((call life_adminlevel) > 0) then {systemChat _admin;};
		};
		
		case 5: {
			private[""_message""];
			_message = format[""!!!EMS REQUEST: %1"",_msg];
			hint parseText format [""<t color='#FFCC00'><t size='2'><t align='center'>EMS Request<br/><br/><t color='#33CC33'><t align='left'><t size='1'>To: <t color='#ffffff'>You<br/><t color='#33CC33'>From: <t color='#ffffff'>%1<br/><br/><t color='#33CC33'>Message:<br/><t color='#ffffff'>%2"",_from,_msg];
			
			[""TextMessage"",[format[""EMS Request from %1"",_from]]] call bis_fnc_showNotification;
		};
	};
";
publicVariable "clientMessage";