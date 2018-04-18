/*
	fn_hideThis.sqf
	Steven Campbell
*/

params [["_object", objNull, [objNull]], ["_condition", false, [false]], "_possibles"];

_possibles = ["cg_money_stack_500s","cg_money_stack_1","cg_money_stack_20"];
if(!(typeOf _object in _possibles)) exitWith {}; /*not something we will allow to be hidden*/
if(isNull _object) exitWith {};

if(_condition) then
{
	_object hideObjectGlobal _condition;
}
else
{
	stash1 hideObjectGlobal _condition;
	stash2 hideObjectGlobal _condition;
	stash3 hideObjectGlobal _condition;
	stash4 hideObjectGlobal _condition;
	stash5 hideObjectGlobal _condition;
	stash6 hideObjectGlobal _condition;
	stash7 hideObjectGlobal _condition;
	stash8 hideObjectGlobal _condition;
	stash9 hideObjectGlobal _condition;
	pstash1 hideObjectGlobal _condition;
	pstash2 hideObjectGlobal _condition;
	pstash3 hideObjectGlobal _condition;
	pstash4 hideObjectGlobal _condition;
	pstash5 hideObjectGlobal _condition;
	pstash6 hideObjectGlobal _condition;
	pstash7 hideObjectGlobal _condition;
	pstash8 hideObjectGlobal _condition;
	pstash9 hideObjectGlobal _condition;
	pstash10 hideObjectGlobal _condition;
};