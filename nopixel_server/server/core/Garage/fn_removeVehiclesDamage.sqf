  /*
	Author: KifKick
	For: stanlakeside.pl
	Date: 06.03.2017 (Non-retard Units)
	
		Return: nothing
		Description: On start server delete vehicles with damage=1
*/
private["_updateStr"];

 _updateStr = "deleteGarageDamage:1";
 _update = [0, _updateStr] call ExternalS_fnc_ExtDBquery;