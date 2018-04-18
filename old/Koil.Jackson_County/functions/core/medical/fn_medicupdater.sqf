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

_1DamageStates = ["No Problems","Head Cuts (1x Bandage)","Bruised Head (1x Bandage)","Concussion (1x First Aid Kit)","Head Fracture (1x First Aid Kit)"];
_2DamageStates = ["No Problems","Neck Cut (1x Bandage)","Torn Neck Muscle (1x Bandage)","Whip Lash (1x First Aid Kit)","Neck Fracture (1x First Aid Kit)"];
_3DamageStates = ["No Problems","Chest Laceration (1x Bandage)","Bruised Sternum (1x Bandage)","Cracked Rib (1x First Aid Kit)","Shattered Ribs (1x First Aid Kit)"];
_4DamageStates = ["No Problems","Back Laceration (1x Bandage)","Back Spasms (1x Bandage)","Back Tearing (1x First Aid Kit)","Spinal Injury (1x First Aid Kit)"];
_5DamageStates = ["No Problems","Arm Abrasion (1x Bandage)","Torn Arm Ligament (1x Bandage)","Dislocated Arm (1x First Aid Kit)","Multiple Fractures (1x First Aid Kit)"];
_6DamageStates = ["No Problems","Hand Laceration (1x Bandage)","Broken Finger (1x Bandage)","Dislocated Finger (1x First Aid Kit)","Shattered Hand (1x First Aid Kit)"];
_7DamageStates = ["No Problems","Hip Cuts (1x Bandage)","Bruised Thigh (1x Bandage)","Swollen Genitals (1x First Aid Kit)","Broken Hip (1x First Aid Kit)"];
_8DamageStates = ["No Problems","Bleeding Ears (1x Bandage)","Dislocated Nose (1x Bandage)","Missing Teeth (1x First Aid Kit)","Fractured Jaw (1x First Aid Kit)"];
_9DamageStates = ["No Problems","Leg Abrasion (1x Bandage)","Torn Knee Ligament (1x Bandage)","Torn Leg Muscles (1x First Aid Kit)","Broken Femur (1x First Aid Kit)"];
_10DamageStates = ["No Problems","Internal Bruising (1x Bandage)","Bruised Kidneys (1x Bandage)","Racing Heart (1x First Aid Kit)","Lack of Blood (1x First Aid Kit)"];
_11DamageStates = ["No Problems","Severe Flu (Medic / Hospital)","Allergy Problem (Medic / Hospital)","Infection (Medic / Hospital)","Unknown Disease (Medic / Hospital)"];

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