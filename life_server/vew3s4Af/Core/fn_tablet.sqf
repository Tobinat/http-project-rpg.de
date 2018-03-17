if (side player == west) then {
tabletapp_array = [
["Player Menu","Player<br />menu","\cg_Client\textures\i_items.paa","\cg_Client\textures\i_items.paa",[""],"playerSettings"],
["Keys","Keys","\cg_Client\textures\i_keys.paa","\cg_Client\textures\i_keys.paa",[""],"Life_key_management"],
["Settings","Settings","\cg_Client\textures\i_settings.paa","\cg_Client\textures\i_settings.paa",[""],"SettingsMenu"],
["Messanger","Messanger","\cg_Client\textures\i_msg.paa","\cg_Client\textures\i_msg.paa",[""],"a3l_smsmenu"],
["Wanted menu","Wanted<br />menu","\cg_Client\textures\wanted.paa","\cg_Client\textures\wanted.paa",[""],"life_wanted_menu"],
["Call Taxi","Call Taxi","icons\taxi.paa","icons\taxi.paa",[""],"life_taxi_menu"],
["Loc Finder","Loc Finder","icons\location.paa","icons\location.paa",[""],"life_location_menu"],
["Animations","Animations","icons\animations.paa","icons\animations.paa",[""],"life_animation_menu"],
["Paintball","Paintball","icons\Paintball.paa","icons\Paintball.paa",[""],"life_Paintball_menu"],
["CarRace","CarRace","icons\CarRace.paa","icons\CarRace.paa",[""],"life_Paintball_menu"],
["GoKarts","GoKarts","icons\gokart.paa","icons\gokart.paa",[""],"life_Paintball_menu"],
["AnswerCall","AnswerCall","icons\answer.paa","icons\answer.paa",[""],"life_ff_menu"],
["HangUp","HangUp","icons\hangup.paa","icons\hangup.paa",[""],"life_ff2_menu"],
["disable","disable","icons\disable.paa","icons\disable.paa",[""],"life_ff3_menu"],
["AnswerCall","AnswerCall","icons2\volumeup.paa","icons2\volumeup.paa",[""],"life_ff234_menu"],
["HangUp","HangUp","icons2\volumedown.paa","icons2\volumedown.paa",[""],"life_ff2324324_menu"],
["disable","disable","icons2\speakers.paa","icons2\speakers.paa",[""],"life_ff3243423_menu"],
["disable","disable","icons2\currentCall.paa","icons2\currentCall.paa",[""],"life_ff3243423_menu"],
["disable","disable","icons2\ear.paa","icons2\ear.paa",[""],"life_ff3243423_menu"],
["disable","disable","icons2\police.paa","icons2\police.paa",[""],"life_ff3243423_menu"],
["disable","disable","icons2\doc.paa","icons2\doc.paa",[""],"life_ff3243423_menu"],
["disable","disable","icons2\ems.paa","icons2\ems.paa",[""],"life_ff3243423_menu"]
];
} else {
tabletapp_array = [
["Player Menu","Player<br />menu","\cg_Client\textures\i_items.paa","\cg_Client\textures\i_items.paa",[""],"playerSettings"],
["Keys","Keys","\cg_Client\textures\i_keys.paa","\cg_Client\textures\i_keys.paa",[""],"Life_key_management"],
["Settings","Settings","\cg_Client\textures\i_settings.paa","\cg_Client\textures\i_settings.paa",[""],"SettingsMenu"],
["Messanger","Messanger","\cg_Client\textures\i_msg.paa","\cg_Client\textures\i_msg.paa",[""],"a3l_smsmenu"],
["Earth menu","Earth<br />menu","\cg_Client\textures\i_earth.paa","\cg_Client\textures\i_earth.paa",[""],"life_earth_menu"],
["Call Taxi","Call Taxi","icons\taxi.paa","icons\taxi.paa",[""],"life_taxi_menu"],
["Loc Finder","Loc Finder","icons\location.paa","icons\location.paa",[""],"life_location_menu"],
["Animations","Animations","icons\animations.paa","icons\animations.paa",[""],"life_animation_menu"],
["Paintball","Paintball","icons\Paintball.paa","icons\Paintball.paa",[""],"life_Paintball_menu"],
["CarRace","CarRace","icons\CarRace.paa","icons\CarRace.paa",[""],"life_Paintball_menu"],
["GoKarts","GoKarts","icons\gokart.paa","icons\gokart.paa",[""],"life_Paintball_menu"],
["AnswerCall","AnswerCall","icons\answer.paa","icons\answer.paa",[""],"life_ff_menu"],
["HangUp","HangUp","icons\hangup.paa","icons\hangup.paa",[""],"life_ff2_menu"],
["disable","disable","icons\disable.paa","icons\disable.paa",[""],"life_ff3_menu"],
["AnswerCall","AnswerCall","icons2\volumeup.paa","icons2\volumeup.paa",[""],"life_ff234_menu"],
["HangUp","HangUp","icons2\volumedown.paa","icons2\volumedown.paa",[""],"life_ff2324324_menu"],
["disable","disable","icons2\speakers.paa","icons\speakers.paa",[""],"life_ff3243423_menu"],
["disable","disable","icons2\currentCall.paa","icons\currentCall.paa",[""],"life_ff3243423_menu"],
["disable","disable","icons2\ear.paa","icons\ear.paa",[""],"life_ff3243423_menu"]
];
};


apploc_array = [
["app1",85444,85445,85700],
["app2",85446,85447,85701],
["app3",85448,85449,85702],
["app4",85450,85451,85703],
["app5",85452,85453,85704],
["app6",85454,85455,85705],
["app7",85456,85457,85706],
["app8",85458,85459,85707],
["app9",85460,85461,85708],
["app10",85462,85463,85709],
["app11",85464,85465,85710],
["app12",85466,85467,85711],
["app13",85468,85469,85712],
["app14",85470,85471,85713],
["app15",85472,85473,85714],
["app16",85474,85475,85715],
["app17",85476,85477,85716],
["app18",85478,85479,85717],
["app19",85480,85481,85718],
["app20",85482,85483,85719],
["app21",85484,85485,85720],
["app22",85486,85487,85721],
["app23",85488,85489,85722],
["app24",85490,85491,85723],
["app25",85492,85493,85724],
["app26",85494,85495,85725],
["app27",85496,85497,85726]
];

fnc_opentablet = {
createdialog "tabletmenu";
[] spawn tablet_loadapp;

{
_arrnumber = _forEachIndex;
_appname = _x select 0;
_apptext = _x select 1;
_apppic = _x select 2;

_apploc = apploc_array select _arrnumber;
_locnumber = _apploc select 0;
_piclocation = _apploc select 1;
_buttonlocation = _apploc select 3;
_textlocation = _apploc select 2;

//_apptext2 = parseText format["<t font='EtelkaNarrowMediumPro' color='#FFFFFF' size='0.6' align='center'>%1</t>", _apptext];
((uiNamespace getVariable "tabletmenu") displayCtrl _piclocation) ctrlSetText _apppic;
//((uiNamespace getVariable "tabletmenu") displayCtrl _textlocation) ctrlSetStructuredText _apptext2;

} foreach tabletapp_array;
};


fnc_tabletbuttonenter = {
_appnumber = _this select 0;
_onmouse = _this select 1;
_amountofapps = count tabletapp_array;
if (_amountofapps >= (_appnumber + 1)) then {
_currentapp = tabletapp_array select _appnumber;
_curapploc = apploc_array select _appnumber;
_piclocation = _curapploc select 1;
if (_onmouse == 1) then {
_selectedpic = _currentapp select 3;
((uiNamespace getVariable "tabletmenu") displayCtrl _piclocation) ctrlSetText _selectedpic;
} else {
_selectedpic = _currentapp select 2;
((uiNamespace getVariable "tabletmenu") displayCtrl _piclocation) ctrlSetText _selectedpic;
};};};

fnc_tabletbuttonclick = {
_selectedapp = _this select 0;
_currentapp = tabletapp_array select _selectedapp;
_dialogcode = _currentapp select 5;
createdialog _dialogcode;
};

