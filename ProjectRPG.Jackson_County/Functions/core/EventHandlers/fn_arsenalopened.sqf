/*
	Author: PRPG
	Date: 02.05.2020 (Non-retard Units)
	
	Params: none
	Description: macht ace arsenal dicht
	Return: nothing
*/
if !(myjob IN ["cop","ems","fire"]) then {
	closedialog 0;
	["Du hast keinen zugriff auf dieses Arsenal!",true] call domsg;
};