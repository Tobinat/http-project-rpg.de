disableSerialization;

_selectedBG = format["\cg_phone\Images\%1.paa",phoneBackground];
ctrlSetText [80001, _selectedBG];

_someshitvariable = _this select 0;

if(_someshitvariable == "baseload") then {
	_selectedSkin = format["\cg_phone\Images\bg%1.paa",phoneSkin];
	ctrlSetText [85441, _selectedSkin];
} else {
 	if(phoneskin == 1 || phoneskin == 2) then {
 		_selectedSkin = format["\cg_phone\Images\bgblack.paa",phoneSkin];
		ctrlSetText [85441, _selectedSkin];
 	};
  	if(phoneskin == 3 || phoneskin == 4) then {	
 		_selectedSkin = format["\cg_phone\Images\bgwhite.paa",phoneSkin];
		ctrlSetText [85441, _selectedSkin];
	};
  	if(phoneskin == 5 || phoneskin == 6) then {	
 		_selectedSkin = format["\cg_phone\Images\bgpink.paa",phoneSkin];
		ctrlSetText [85441, _selectedSkin];
	};
  	if(phoneskin == 7 || phoneskin == 8) then {	
 		_selectedSkin = format["\cg_phone\Images\bgblue.paa",phoneSkin];
		ctrlSetText [85441, _selectedSkin];
	};
  	if(phoneskin == 9 || phoneskin == 10) then {	
 		_selectedSkin = format["\cg_phone\Images\bggreen.paa",phoneSkin];
		ctrlSetText [85441, _selectedSkin];
	};
  	if(phoneskin == 11 || phoneskin == 12) then {	
 		_selectedSkin = format["\cg_phone\Images\bgyellow.paa",phoneSkin];
		ctrlSetText [85441, _selectedSkin];
	};
	_selectedSkin = format["\cg_phone\Images\bg%1.paa",phoneSkin];
	ctrlSetText [85442, _selectedSkin];
};



_fuck = ((uiNamespace getVariable "phonemenu") displayCtrl 5017); 
_fuck ctrlsetfade 1;
_fuck ctrlCommit 0; 
uisleep 1;
_fuck ctrlshow false;
