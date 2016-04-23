/*
Lakeside Help Menu
*/
#define Btn1 37450
#define Btn2 37451
#define Btn3 37452
#define Btn4 37453
#define Btn5 37454
#define Btn6 37455
#define Btn7 37456
#define Btn8 37457
#define Btn9 37458
#define Btn10 37459
#define Btn11 37460
#define Btn12 37461
#define Btn13 37462
#define Btn14 37463
#define Btn15 37464
#define Btn16 37465
#define Btn17 37466
#define Btn18 37467
#define Btn19 37468
#define Btn20 37469
#define Btn21 37470

#define Title 37401
closedialog 0; 

createDialog "pInteraction_Menu";

disableSerialization;
marker_on = false;
_display = findDisplay 37400;
_Btn1 = _display displayCtrl Btn1;
_Btn2 = _display displayCtrl Btn2;
_Btn3 = _display displayCtrl Btn3;
_Btn4 = _display displayCtrl Btn4;
_Btn5 = _display displayCtrl Btn5;
_Btn6 = _display displayCtrl Btn6;
_Btn7 = _display displayCtrl Btn7;
_Btn8 = _display displayCtrl Btn8;
_Btn9 = _display displayCtrl Btn9;
_Btn10 = _display displayCtrl Btn10;
_Btn11 = _display displayCtrl Btn11;
_Btn12 = _display displayCtrl Btn12;
_Btn13 = _display displayCtrl Btn13;
_Btn14 = _display displayCtrl Btn14;
_Btn15 = _display displayCtrl Btn15;
_Btn16 = _display displayCtrl Btn16;
_Btn17 = _display displayCtrl Btn17;
_Btn18 = _display displayCtrl Btn18;
_Btn19 = _display displayCtrl Btn19;
_Btn20 = _display displayCtrl Btn20;
_Btn21 = _display displayCtrl Btn21;


_Btn1 ctrlSetText "Nahrung & Getränke";
_Btn1 buttonSetAction "[""Der Standort wurde an Ihr GPS gesendet! "",false] spawn domsg; [""Nahrung % Getränke"",(getmarkerpos ""Donut_Shop"")] spawn fnc_draw3d; closeDialog 0;";

_Btn2 ctrlSetText "Die Bank";
_Btn2 buttonSetAction "[""Der Standort wurde an Ihr GPS gesendet!"",false] spawn domsg; [""Die Bank"",(getmarkerpos ""fed_reserve"")] spawn fnc_draw3d; closeDialog 0;";

_Btn3 ctrlSetText "Polizei HQ";
_Btn3 buttonSetAction "[""Der Standort wurde an Ihr GPS gesendet!"",false] spawn domsg; [""Polizei HQ"",(getmarkerpos ""Police_HQ"")] spawn fnc_draw3d; closeDialog 0;";

_Btn4 ctrlSetText "Billige Autos";
_Btn4 buttonSetAction "[""Der Standort wurde an Ihr GPS gesendet!"",false] spawn domsg; [""Billige Autos"",(getmarkerpos ""car1_1_2"")] spawn fnc_draw3d; closeDialog 0;";

_Btn5 ctrlSetText "Motorbikes";
_Btn5 buttonSetAction "[""Der Standort wurde an Ihr GPS gesendet!"",false] spawn domsg; [""Motorbikes"",(getmarkerpos ""car1_1_2_4"")] spawn fnc_draw3d; closeDialog 0;";

_Btn6 ctrlSetText "Boote";
_Btn6 buttonSetAction "[""Der Standort wurde an Ihr GPS gesendet!"",false] spawn domsg; [""Boote"",(getmarkerpos ""boat_2"")] spawn fnc_draw3d; closeDialog 0;";

_Btn7 ctrlSetText "Trucks";
_Btn7 buttonSetAction "[""Der Standort wurde an Ihr GPS gesendet!"",false] spawn domsg; [""Trucks"",(getmarkerpos ""civ_truck_shop1_1"")] spawn fnc_draw3d; closeDialog 0;";

_Btn8 ctrlSetText "Weizen (Geld)";
_Btn8 buttonSetAction "[""Der Standort wurde an Ihr GPS gesendet!"",false] spawn domsg; [""Weizen"",(getmarkerpos ""wheat_field"")] spawn fnc_draw3d; closeDialog 0;";

_Btn9 ctrlSetText "Lizenzen";
_Btn9 buttonSetAction "[""Der Standort wurde an Ihr GPS gesendet!"",false] spawn domsg; [""Lizenzen"",(getmarkerpos ""license_shop"")] spawn fnc_draw3d; closeDialog 0;";

_Btn10 ctrlSetText "Kleidung";
_Btn10 buttonSetAction "[""Der Standort wurde an Ihr GPS gesendet!"",false] spawn domsg; [""Kleidung"",(getmarkerpos ""gen_3"")] spawn fnc_draw3d; closeDialog 0;";

_Btn11 ctrlSetText "Werkzeug&Co";
_Btn11 buttonSetAction "[""Der Standort wurde an Ihr GPS gesendet!"",false] spawn domsg; [""Werkzeug&Co"",(getmarkerpos ""gen"")] spawn fnc_draw3d; closeDialog 0;";

_Btn12 ctrlSetText "Fahrzeug Garage";
_Btn12 buttonSetAction "[""Der Standort wurde an Ihr GPS gesendet!"",false] spawn domsg; [""Fahrzeug Garage"",(getmarkerpos ""civ_gar_1_8"")] spawn fnc_draw3d; closeDialog 0;";

_Btn13 ctrlSetText "Tablet Zubehör";
_Btn13 buttonSetAction "[""Der Standort wurde an Ihr GPS gesendet!"",false] spawn domsg; [""Tablet Zubehör"",(getmarkerpos ""civ_gar_1_8_1"")] spawn fnc_draw3d; closeDialog 0;";

_Btn14 ctrlSetText "Paintball";
_Btn14 buttonSetAction "[""Der Standort wurde an Ihr GPS gesendet!"",false] spawn domsg; [""Paintball"",(getmarkerpos ""civ_gar_1_8_1_2"")] spawn fnc_draw3d; closeDialog 0;";

_Btn15 ctrlSetText "Taxi Jobs";
_Btn15 buttonSetAction "[""Der Standort wurde an Ihr GPS gesendet!"",false] spawn domsg; [""Taxi Jobs"",(getmarkerpos ""TaxiSignIn_1"")] spawn fnc_draw3d; closeDialog 0;";

_Btn16 ctrlSetText "Liefer Jobs";
_Btn16 buttonSetAction "[""Der Standort wurde an Ihr GPS gesendet!"",false] spawn domsg; [""Liefer Jobs"",(getmarkerpos ""available_jobs"")] spawn fnc_draw3d; closeDialog 0;";

_Btn17 ctrlSetText "Bank Jobs";
_Btn17 buttonSetAction "[""Der Standort wurde an Ihr GPS gesendet!"",false] spawn domsg; [""Bank Jobs"",(getmarkerpos ""bank_signup"")] spawn fnc_draw3d; closeDialog 0;";

_Btn18 ctrlSetText "Waffenladen";
_Btn18 buttonSetAction "[""Der Standort wurde an Ihr GPS gesendet!"",false] spawn domsg; [""Waffenladen"",(getmarkerpos ""gun_store_1_1"")] spawn fnc_draw3d; closeDialog 0;";

_Btn19 ctrlSetText "Krankenhaus";
_Btn19 buttonSetAction "[""Der Standort wurde an Ihr GPS gesendet!"",false] spawn domsg; [""Krankenhaus"",(getmarkerpos ""hospital_2"")] spawn fnc_draw3d; closeDialog 0;";

_Btn20 ctrlSetText "Exotische Autos";
_Btn20 buttonSetAction "[""Der Standort wurde an Ihr GPS gesendet!"",false] spawn domsg; [""Exotische Autos"",(getmarkerpos ""car1_1_2_2_1_1"")] spawn fnc_draw3d; closeDialog 0;";

_Btn21 ctrlSetText "Pizzaladen";
_Btn21 buttonSetAction "[""Der Standort wurde an Ihr GPS gesendet!"",false] spawn domsg; [""Pizzaladen"",(getmarkerpos ""pizza_shop"")] spawn fnc_draw3d; closeDialog 0;";
