 
for "_i" from 0 to 1 step 0 do { 
"extDB2" callExtension "1:rcon:#unlock"; 
uisleep 5; 
"extDB2" callExtension "1:rcon:#lock"; 
uisleep 100; 
}; 
 
 
