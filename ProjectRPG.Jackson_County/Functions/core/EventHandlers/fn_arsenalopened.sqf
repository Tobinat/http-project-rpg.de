/*
	Author: PRPG
	Date: 02.05.2020 (Non-retard Units)
	
	Params: none
	Description: macht ace arsenal dicht
	Return: nothing
*/
if !(myjob IN ["cop","ems","fire"]) then {
	["Du hast keinen zugriff auf dieses Arsenal!",true] spawn domsg;
	_display = ctrlParent "IDC_menuBarClose";
	_display closeDisplay 0;
};