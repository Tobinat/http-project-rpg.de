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

_1DamageStates = ["Keine Verletzungen","Kopfschnittwunden (1x Verband)","Kopfschuerfwunde (1x Verband)","Schock (1x Erste-Hilfe Koffer)","Schaedelbruch (1x Erste-Hilfe Koffer)"];
_2DamageStates = ["Keine Verletzungen","Halsschnittwunden (1x Verband)","Genickbruch (1x Verband)","Wirbelsaeulen Verletzung (1x Erste-Hilfe Koffer)","Rueckenmarks Verletzung (1x Erste-Hilfe Koffer)"];
_3DamageStates = ["Keine Verletzungen","Verletzter Brustkorb (1x Verband)","Rueckenschuerfwunde (1x Verband)","Rippenverletzung (1x Erste-Hilfe Koffer)","Gebrochene Rippe (1x Erste-Hilfe Koffer)"];
_4DamageStates = ["Keine Verletzungen","Rueckenverletzung (1x Verband)","Muskelkrämpfe (1x Verband)","Muskelriss (1x Erste-Hilfe Koffer)","Wirbelsaeulen Verletzung (1x Erste-Hilfe Koffer)"];
_5DamageStates = ["Keine Verletzungen","Armschuerfwunde (1x Verband)","Armschuerfwunde (1x Verband)","Dislozierte Schulter (1x Erste-Hilfe Koffer)","Multiple Frukturen (1x Erste-Hilfe Koffer)"];
_6DamageStates = ["Keine Verletzungen","Handschuerfwunde (1x Verband)","Gebrochener Finger (1x Verband)","Dislozierter Finger (1x Erste-Hilfe Koffer)","Gebrochener Arm (1x Erste-Hilfe Koffer)"];
_7DamageStates = ["Keine Verletzungen","Hueftschnittwunden (1x Verband)","Hueftwunde (1x Verband)","Geschwollene Genitalien (1x Erste-Hilfe Koffer)","Gebrochene Huefte (1x Erste-Hilfe Koffer)"];
_8DamageStates = ["Keine Verletzungen","Blutende Ohren (1x Verband)","Gebrochene Nase (1x Verband)","Fauler Zahn (1x Erste-Hilfe Koffer)","Gebrochener Keifer (1x Erste-Hilfe Koffer)"];
_9DamageStates = ["Keine Verletzungen","Beinschuerfwunde (1x Verband)","Disloziertes Knie (1x Verband)","Muskelzerrung (1x Erste-Hilfe Koffer)","Gebrochener Oberschenkel (1x Erste-Hilfe Koffer)"];
_10DamageStates = ["Keine Verletzungen","Innere verletzung (1x Verband)","Nierenschaeden (1x Verband)","Herzrasen (1x Erste-Hilfe Koffer)","Blutmangel (1x Erste-Hilfe Koffer)"];
_11DamageStates = ["Keine Verletzungen","Erkältung (Tran/Sani/KH)","Allergische Reaktion (Sani/KH)","Infektion (Sani/KH)","Unbekannte Krankheit (Sani/KH)","SARS-CoV-2 (Covid-19)"];

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
