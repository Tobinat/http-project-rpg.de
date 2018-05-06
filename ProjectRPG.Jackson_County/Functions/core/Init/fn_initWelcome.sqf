/*
	File: welcome.sqf
	Author: ZedBuster
        Link: opendayz.net/threads/dayz-welcome-message-credits-style.13071/
	Description:
	Creates an intro on the bottom-right hand corner of the screen.
*/

_onScreenTime = 5;
playsound "civintro";

sleep 2; //Wait in seconds before the credits start after player is in-game
_role1 = "Willkommen bei";
_role1names = ["PRPG"];       //Add your texts here!
_role2 = "Kommt auf unseren Teamspeak";
_role2names = ["ts.prpg.de"];
_role3 = "Regeln";
_role3names = ["Lesen sie Regelmaeßig die Regeln im Forum"];
_role4 = "Bleib im Charakter!";
_role4names = ["Verlasse nicht das RP!"];
_role5 = "Merke!";
_role5names = ["Was im Spiel passiert ist bleibt im Spiel!"];

{
sleep 2;
_memberFunction = _x select 0;
_memberNames = _x select 1;
_finalText = format ["<t size='0.60' color='#f2cb0b' align='right'>%1<br /></t>", _memberFunction];
_finalText = _finalText + "<t size='0.70' color='#FFFFFF' align='right'>";
{_finalText = _finalText + format ["%1<br />", _x]} forEach _memberNames;
_finalText = _finalText + "</t>";
_onScreenTime + (((count _memberNames) - 1) * 0.5);
[
_finalText,
[safezoneX + safezoneW - 0.8,0.50], //DEFAULT: 0.5,0.35
[safezoneY + safezoneH - 0.8,0.7], //DEFAULT: 0.8,0.7
_onScreenTime,
0.5
] spawn BIS_fnc_dynamicText;
sleep (_onScreenTime);
} forEach [

//The list below should have exactly the same amount of roles as the list above

[_role1, _role1names],
[_role2, _role2names],
[_role3, _role3names],
[_role4, _role4names],
[_role5, _role5names]
];
