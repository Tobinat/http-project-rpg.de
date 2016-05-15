/*

	File: fn_wantedCheckFeedback.sqf
	Author: Marcel "Variatox" Koch
	Server: lakeside-reallife.de
	
	Description:
	Gibt Werte der geprüften Person zurück.
*/

params["_bank","_name"];

hint parseText format ["<t align='center'><t size='1.5' color='#4C6EE5'>LVPD_WantedSystems</t><br/><br/><t size='0.8' align='left'>>_Benutzer: %1</t><br/><t size='0.8' align='left'>>_Passwort: ********</t><br/><br/><br/><t size='1.2'>Ziel:</t><br/>%2<br/><br/><t size='1.2'>Bankguthaben:</t><br/>$%3<br/></t>",name player,_name,_bank];