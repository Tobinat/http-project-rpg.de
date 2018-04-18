_selectedBG = lbData[911,lbCurSel (911)];
_selectedBG = call compile format["%1", _selectedBG];
_selectedBG = format["\cg_phone\Images\%1.paa",_selectedBG];
ctrlSetText [80001, _selectedBG]
