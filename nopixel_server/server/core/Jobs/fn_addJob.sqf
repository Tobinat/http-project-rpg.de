 
 
activejobs = []; 
 
if(isNil "processJobs") then { processingJobs = false; }; 
if(!processingJobs) exitwith {}; 
processingjobs = true; 
 
_jobcount = count currentMailmen; 
 
for "_i" from 0 to 1 step 0 do {  
diag_log ["job adding %1", _jobcount]; 
if(_jobcount > 4) exitwith {};  
_jobcount = _jobcount + 1;  
activeJobs pushback "Fedex Worker";  
}; 
 
_jobcount = count currentsecurity; 
for "_i" from 0 to 1 step 0 do {  
diag_log ["job adding %1", _jobcount]; 
if(_jobcount > 4) exitwith {};  
_jobcount = _jobcount + 1;  
activeJobs pushback "Security";  
}; 
 
 
_jobcount = count currentTowTruckDrivers; 
for "_i" from 0 to 1 step 0 do {  
diag_log ["job adding %1", _jobcount]; 
if(_jobcount > 4) exitwith {};  
_jobcount = _jobcount + 1;  
activeJobs pushback "Tow Truck Driver";  
}; 
 
 
_jobcount = count currentTrashMan; 
for "_i" from 0 to 1 step 0 do {  
diag_log ["job adding %1", _jobcount]; 
if(_jobcount > 4) exitwith {};  
_jobcount = _jobcount + 1;  
activeJobs pushback "Garbage Man";  
}; 
 
 
_jobcount = count currentNewsMan; 
for "_i" from 0 to 1 step 0 do {  
diag_log ["job adding %1", _jobcount]; 
if(_jobcount > 4) exitwith {};  
_jobcount = _jobcount + 1;  
activeJobs pushback "News Reporter";  
}; 
 
 
_jobcount = count currentRepairmen; 
for "_i" from 0 to 1 step 0 do {  
diag_log ["job adding %1", _jobcount]; 
if(_jobcount > 4) exitwith {};  
_jobcount = _jobcount + 1;  
activeJobs pushback "Repairman";  
}; 
 
 
_jobcount = count currentTaxiDrivers; 
for "_i" from 0 to 1 step 0 do {  
diag_log ["job adding %1", _jobcount]; 
if(_jobcount > 4) exitwith {};  
_jobcount = _jobcount + 1;  
activeJobs pushback "Taxi Driver";  
}; 
 
 
_jobcount = count currentLegalAid; 
for "_i" from 0 to 1 step 0 do {  
diag_log ["job adding %1", _jobcount]; 
if(_jobcount > 4) exitwith {};  
_jobcount = _jobcount + 1;  
activeJobs pushback "Legal Aid";  
}; 
 
sleep 1; 
 
processingjobs = false; 
