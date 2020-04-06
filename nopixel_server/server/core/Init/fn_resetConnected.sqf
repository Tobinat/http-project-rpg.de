  /*
	Author: KifKick
	For: stanlakeside.pl
	Date: 19.01.2017 (Non-retard Units)
	
		Return: nothing
		Description: On start server reset connected to 0.
*/
private["_updateStr"];

 _updateStr = "updateConnectedStartup:0";
 _update = [0, _updateStr] call ExternalS_fnc_ExtDBquery;