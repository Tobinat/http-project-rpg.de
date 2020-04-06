#include <macro.h>
/*
    File: fn_containerMenu.sqf
    Author: NiiRoZz

    Description:
    Container interaction menu.
*/
#define Btn1 37450
#define Btn2 37451
#define Btn3 37452
#define Btn4 37453
#define Btn5 37454
#define Btn6 37455
#define Btn7 37456
#define Btn8 37457
#define Title 37401

private["_display","_curTarget","_Btn1","_Btn2","_Btn3","_Btn4","_Btn5","_Btn6","_Btn7"];
if(!dialog) then {
	createDialog "pInteraction_Menu";
};
disableSerialization;
_curTarget = param [0,ObjNull,[ObjNull]];
if(isNull _curTarget) exitWith {closeDialog 0;}; //Bad target

_display = findDisplay 37400;
_Btn1 = _display displayCtrl Btn1;
_Btn2 = _display displayCtrl Btn2;
_Btn3 = _display displayCtrl Btn3;
_Btn4 = _display displayCtrl Btn4;
_Btn5 = _display displayCtrl Btn5;
_Btn6 = _display displayCtrl Btn6;
_Btn7 = _display displayCtrl Btn7;
_Btn8 = _display displayCtrl Btn8;
_Btn1 ctrlShow false;
_Btn2 ctrlShow false;
_Btn3 ctrlShow false;
_Btn4 ctrlShow false;
_Btn5 ctrlShow false;
_Btn6 ctrlShow false;
_Btn7 ctrlShow false;
_Btn8 ctrlShow false;

life_pInact_container = _container;
if (playerSide isEqualTo west) then {
    _Btn1 ctrlSetText localize "STR_vInAct_SearchContainer";
    _Btn1 buttonSetAction "[life_pInact_container] spawn life_fnc_containerInvSearch; closeDialog 0;";
    _Btn1 ctrlShow true;
} else {
    _Btn1 ctrlSetText localize "STR_pInAct_RemoveContainer";
    _Btn1 buttonSetAction "[life_pInact_container] spawn life_fnc_removeContainer; closeDialog 0;";
    _Btn1 ctrlShow true;
};
