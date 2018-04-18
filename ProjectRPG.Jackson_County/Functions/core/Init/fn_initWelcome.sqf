/*
	File: welcome.sqf
	Author: ZedBuster
        Link: opendayz.net/threads/dayz-welcome-message-credits-style.13071/
	Description:
	Creates an intro on the bottom-right hand corner of the screen.
*/

_onScreenTime = 3;

sleep 2; //Wait in seconds before the credits start after player is in-game
_role1 = "Witaj w";
_role1names = ["Stan Lakeside"];       //Add your texts here!
_role2 = "Zawsze badź na TeamSpeaku";
_role2names = ["178.217.189.51"];
_role3 = "Zasady";
_role3names = ["Przestrzegaj regulaminu dostepnego na forum"];
_role4 = "Pozostań w postaci!";
_role4names = ["Nie wychodź z postaci! Masz problem? Zgłos go!"];
_role5 = "Pamiętaj!";
_role5names = ["To co dzieje sie w grze - zostaje w grze!"];
_role6 = "Pamiętaj!";
_role6names = ["Życzymy miłej zabawy, odstresuj się i przestrzegaj zasad!"];
 
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
[_role5, _role5names],
[_role6, _role6names]
];