params["_licenses","_playername"];

_message = format["VALID LICENSES <br/><br/> %1 <br/><br/>",_playername];

if(_licenses select 0 == 1) then {
	_message = format ["%1 <img size='1' image='cg_mission_files\id_icons\license.paa'/> <t color='#C80000'> Vehicle License </t> <br/> ",_message];
};

if(_licenses select 1 == 1) then {
	_message = format ["%1 <img size='1' image='cg_mission_files\id_icons\license.paa'/> <t color='#C80000'> Gun License </t> <br/> ",_message];
};

if(_licenses select 2 == 1) then {
	_message = format ["%1 <img size='1' image='cg_mission_files\id_icons\license.paa'/> <t color='#C80000'> Mining License </t> <br/> ",_message];
};

if(_licenses select 3 == 1) then {
	_message = format ["%1 <img size='1' image='cg_mission_files\id_icons\license.paa'/> <t color='#C80000'> Loggers License </t> <br/> ",_message];
};

if(_licenses select 4 == 1) then {
	_message = format ["%1 <img size='1' image='cg_mission_files\id_icons\license.paa'/> <t color='#C80000'> Fishing License </t> <br/> ",_message];
};

hint parsetext _message;