params["_licenses","_playername"];

_message = format["Licencje <br/><br/> %1 <br/><br/>",_playername];

if(_licenses select 0 == 1) then {
	_message = format ["%1 <img size='1' image='prpg_data\icons\license.paa'/> <t color='#C80000'> Führerschein </t> <br/> ",_message];
};

if(_licenses select 1 == 1) then {
	_message = format ["%1 <img size='1' image='prpg_data\icons\license.paa'/> <t color='#C80000'> Waffenlizenz </t> <br/> ",_message];
};

if(_licenses select 2 == 1) then {
	_message = format ["%1 <img size='1' image='prpg_data\icons\license.paa'/> <t color='#C80000'> Miner Lizenz </t> <br/> ",_message];
};

if(_licenses select 3 == 1) then {
	_message = format ["%1 <img size='1' image='prpg_data\icons\license.paa'/> <t color='#C80000'> Holzfäller Lizenz </t> <br/> ",_message];
};

if(_licenses select 4 == 1) then {
	_message = format ["%1 <img size='1' image='prpg_data\icons\license.paa'/> <t color='#C80000'> Fischer Lizenz </t> <br/> ",_message];
};

hint parsetext _message;