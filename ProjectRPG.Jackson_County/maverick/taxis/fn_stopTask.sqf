/*--------------------------------------------------------------------------
    Author:		Maverick Applications
    Website:	https://maverick-applications.com

    You're not allowed to use this file without permission from the author!
---------------------------------------------------------------------------*/

if (!isNil "mav_taxi_v_currentTask" && {!isNull mav_taxi_v_currentTask}) then {
	player removeSimpleTask mav_taxi_v_currentTask;
};