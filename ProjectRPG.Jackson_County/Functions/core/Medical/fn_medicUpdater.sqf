disableSerialization;
if(!dialog) then {	createdialog "medicHUD"; };
_myInjuries = player getVariable "playerInjuries";
_myInjuriesToUpdate = player getVariable "playerInjuriesToUpdate";

if !(_myInjuries isEqualTo _myInjuriesToUpdate) then {
	player setVariable ["playerInjuriesToUpdate",_myInjuries,false];
};

user = _this select 0;
if(isNil "user") then { user = player; };
myInjuries = user getVariable "playerInjuries";
_display = findDisplay 919191;

_1DamageStates = ["Bez urazów","Rany cięte głowy (1x Bandaż)","Otarcia głowy (1x Bandaż)","Wstrząs (1x Apteczka)","Złamana czaszka (1x Apteczka)"];
_2DamageStates = ["Bez Urazów","Rany cięte szyi (1x Bandaż)","Zerwany mięsień szyjny (1x Bandaż)","Uszkodzony kręgosłup (1x Apteczka)","Uszkodzony rdzeń (1x Apteczka)"];
_3DamageStates = ["Bez Urazów","Okaleczona klatka (1x Bandaż)","Otarcia mostku (1x Bandaż)","Uszkodzone żebro (1x Apteczka)","Złamane żebra (1x Apteczka)"];
_4DamageStates = ["Bez Urazów","Okaleczone plecy (1x Bandaż)","Skurcze mięśni (1x Bandaż)","Rozerwany mięsień (1x Apteczka)","Uszkodzony kręgosłup (1x Apteczka)"];
_5DamageStates = ["Bez Urazów","Otarcie ramienia (1x Bandaż)","Otarcie ramienia (1x Bandaż)","Zwichnięte ramię (1x Apteczka)","Liczne złamania (1x Apteczka)"];
_6DamageStates = ["Bez Urazów","Otarcie dłoni (1x Bandaż)","Złamany palec (1x Bandaż)","Zwichnięty palec (1x Apteczka)","Złamana ręka (1x Apteczka)"];
_7DamageStates = ["Bez Urazów","Rany cięte biodra (1x Bandaż)","Otarte biodro (1x Bandaż)","Opuchnięte genitalia (1x Apteczka)","Złamane biodro (1x Apteczka)"];
_8DamageStates = ["Bez Urazów","Krwawienie z uszu (1x Bandaż)","Złamany nos (1x Bandaż)","Wybity ząb (1x Apteczka)","Złamana szczęka (1x Apteczka)"];
_9DamageStates = ["Bez Urazów","Otarcie nogi (1x Bandaż)","Zwichnięte kolano (1x Bandaż)","Zerwany mięsień (1x Apteczka)","Złamana kość udowa (1x Apteczka)"];
_10DamageStates = ["Bez Urazów","Wewnętrzne otarcia (1x Bandaż)","Uszkodzone nerki (1x Bandaż)","Galopujące serce (1x Apteczka)","Mało krwi (1x Apteczka)"];
_11DamageStates = ["Bez Urazów","Przeziębienie (Tran /Medic / Hospital)","Alergia (Medic / Hospital)","Infekcja (Medic / Hospital)","Nieznana choroba (Medic / Hospital)"];

_Btn1 = _display displayCtrl 6;
damageAmount = myInjuries select 0;
_thisInjury = _1DamageStates select damageAmount;
_Btn1 ctrlSetText format["%1",_thisInjury];
_Btn1 buttonSetAction "[user,0,damageAmount] spawn client_fnc_fixProblem;";
if( damageAmount != 0) then { _Btn1 ctrlEnable true; } else { _Btn1 ctrlEnable false; ctrlShow[105,false]; };

_Btn2 = _display displayCtrl 8;
damageAmount2 = myInjuries select 1;
_thisInjury = _2DamageStates select damageAmount2;
_Btn2 ctrlSetText format["%1",_thisInjury];
_Btn2 buttonSetAction "[user,1,damageAmount2] spawn client_fnc_fixProblem;";
if( damageAmount2 != 0) then { _Btn2 ctrlEnable true; } else { _Btn2 ctrlEnable false; ctrlShow[107,false]; };

_Btn3 = _display displayCtrl 10;
damageAmount3 = myInjuries select 2;
_thisInjury = _3DamageStates select damageAmount3;
_Btn3 ctrlSetText format["%1",_thisInjury];
_Btn3 buttonSetAction "[user,2,damageAmount3] spawn client_fnc_fixProblem;";
if( damageAmount3 != 0) then { _Btn3 ctrlEnable true; } else { _Btn3 ctrlEnable false; ctrlShow[106,false]; };

_Btn4 = _display displayCtrl 12;
damageAmount4 = myInjuries select 3;
_thisInjury = _4DamageStates select damageAmount4;
_Btn4 ctrlSetText format["%1",_thisInjury];
_Btn4 buttonSetAction "[user,3,damageAmount4] spawn client_fnc_fixProblem;";
if( damageAmount4 != 0) then { _Btn4 ctrlEnable true; } else { _Btn4 ctrlEnable false; ctrlShow[108,false]; };

_Btn5 = _display displayCtrl 14;
damageAmount5 = myInjuries select 4;
_thisInjury = _5DamageStates select damageAmount5;
_Btn5 ctrlSetText format["%1",_thisInjury];
_Btn5 buttonSetAction "[user,4,damageAmount5] spawn client_fnc_fixProblem;";
if( damageAmount5 != 0) then { _Btn5 ctrlEnable true; } else { _Btn5 ctrlEnable false; ctrlShow[109,false]; };

_Btn6 = _display displayCtrl 16;
damageAmount6 = myInjuries select 5;
_thisInjury = _6DamageStates select damageAmount6;
_Btn6 ctrlSetText format["%1",_thisInjury];
_Btn6 buttonSetAction "[user,5,damageAmount6] spawn client_fnc_fixProblem;";
if( damageAmount6 != 0) then { _Btn6 ctrlEnable true; } else { _Btn6 ctrlEnable false; ctrlShow[112,false]; };

_Btn7 = _display displayCtrl 18;
damageAmount7 = myInjuries select 6;
_thisInjury = _7DamageStates select damageAmount7;
_Btn7 ctrlSetText format["%1",_thisInjury];
_Btn7 buttonSetAction "[user,6,damageAmount7] spawn client_fnc_fixProblem;";
if( damageAmount7 != 0) then { _Btn7 ctrlEnable true; } else { _Btn7 ctrlEnable false; ctrlShow[110,false]; };

_Btn8 = _display displayCtrl 20;
damageAmount8 = myInjuries select 7;
_thisInjury = _8DamageStates select damageAmount8;
_Btn8 ctrlSetText format["%1",_thisInjury];
_Btn8 buttonSetAction "[user,7,damageAmount8] spawn client_fnc_fixProblem;";
if( damageAmount8 != 0) then { _Btn8 ctrlEnable true; } else { _Btn8 ctrlEnable false; ctrlShow[111,false]; };

_Btn9 = _display displayCtrl 22;
damageAmount9 = myInjuries select 8;
_thisInjury = _9DamageStates select damageAmount9;
_Btn9 ctrlSetText format["%1",_thisInjury];
_Btn9 buttonSetAction "[user,8,damageAmount9] spawn client_fnc_fixProblem;";
if( damageAmount9 != 0) then { _Btn9 ctrlEnable true; } else { _Btn9 ctrlEnable false; ctrlShow[113,false]; };

_Btn10 = _display displayCtrl 24;
damageAmount10 = myInjuries select 9;
_thisInjury = _10DamageStates select damageAmount10;
_Btn10 ctrlSetText format["%1",_thisInjury];
_Btn10 buttonSetAction "[user,9,damageAmount10] spawn client_fnc_fixProblem;";
if( damageAmount10 != 0) then { _Btn10 ctrlEnable true; } else { _Btn10 ctrlEnable false; ctrlShow[114,false]; };

_Btn11 = _display displayCtrl 26;
damageAmount11 = myInjuries select 10;
_thisInjury = _11DamageStates select damageAmount11;
_Btn11 ctrlSetText format["%1",_thisInjury];
_Btn11 buttonSetAction "[user,10,damageAmount11] spawn client_fnc_fixProblem;";
if( damageAmount11 != 0) then { _Btn11 ctrlEnable true; } else { _Btn11 ctrlEnable false; ctrlShow[115,false]; };