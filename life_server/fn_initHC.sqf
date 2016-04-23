#define __CONST__(var1,var2) var1 = compileFinal (if(typeName var2 == "STRING") then {var2} else {str(var2)})
/*
	fn_initHC.sqf
	Steven Campbell/Kevin
*/
life_HC_isActive = false;
private["_life_sql_id"];
if(isNil {uiNamespace getVariable "life_sql_id"}) then
{
	"extDB2" callExtension "9:ADD_DATABASE:Database2";
	_life_sql_id = str(round(random(999999)));
	life_sql_id = compileFinal _life_sql_id;
	"extDB2" callExtension format["9:ADD_DATABASE_PROTOCOL:Database2:SQL_RAW:%1:ADD_QUOTES",_life_sql_id];
	"extDB2" callExtension "9:LOCK";
	uiNamespace setVariable ["life_sql_id", _life_sql_id];
	life_HC_isActive = true;
	systemChat "extDB2 connection successful";
}
else
{
	life_sql_id = uiNamespace getVariable "life_sql_id";
	__CONST__(life_sql_id,life_sql_id);
	life_HC_isActive = true;
};

publicVariable "life_HC_isActive";
