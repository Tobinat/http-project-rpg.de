
//Poop Scheiß
		
		disableSerialization;
		438 cutfadeout 1;
		
		if ( client_poop > 80 ) then
		{
			438 cutRsc ["HUDPoop","PLAIN"]; 
			if(client_poop < 80) exitwith {};
			_severity = 180 - client_poop;
			_severity = round(_severity / 10);
			uisleep _severity; 
			438 cutfadeout 1; 
			
		};
		