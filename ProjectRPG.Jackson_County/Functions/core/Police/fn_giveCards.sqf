/*
	File: fn_giveCards.sqf
	Author: Marcel "VariatoX" Koch
	Server: project-rpg.de

	Description:
	Teilt der Polizei die ID-Cards zu.

*/

if("ItemCopCard" in (assignedItems player)) exitWith {}; //Hat bereits die ID-Card
player linkItem "ItemCopCard";