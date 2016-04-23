//
// Vehicle Cruise Control Mod
// By Allen
// http://kaganovsky.ca
//

mod_cruiseControl = 
compileFinal "
	_trigger2 = createTrigger [""EmptyDetector"", [0,0,0]];
	_trigger2 setTriggerArea [0, 0, 0, false];
	_trigger2 setTriggerActivation [""NONE"", ""PRESENT"", true];
	_trigger2 setTriggerStatements [""('Car' countType [(vehicle player)] > 0)"",
	""uwg_cruise = vehicle player;
	uwg_cruise_control = uwg_cruise addAction ['Cruise Control','"""""""" call mod_cruiseControlMenu;',[], 0, false, false, '', 'driver uwg_cruise == player'];"",
	""uwg_cruise removeAction uwg_cruise_control; uwg_cruise = nil;""];
";
publicVariable "mod_cruiseControl";

mod_cruiseControlMenu =
compileFinal "
	cruiseControlSet = false;	
	_velocity = velocity uwg_cruise;
	_x = _velocity select 0;
	_y = _velocity select 1;
	_xy = sqrt ( _x*_x + _y*_y ) * 3.6;
	cspeed = 0;
	
	if (_xy > 45 && _xy < 55) then {
		cspeed = 50;
		cruiseControlSet = true;
		hint parseText format [""
					<t size='1.30' font='puristaMedium' align='center' color='#0D82DF'>Cruise Control</t><br/><br/>
					<t size='0.90 'font='puristaLight' align='left'>Cruise Control:</t><t size='0.90 'font='puristaLight' align='left' color='#33CC00'> Activated!</t><br/><br/>
					<t size='0.90' font='puristaLight' align='left' color='#0D82DF'>Current Speed</t><t size='0.90' font='puristaLight'align='right' color='#0D82DF'>Cruise Speed</t><br/>
					<t size='0.90' font='puristaLight' align='left' color='#33CC00'>45 - 55 km/h :</t><t size='0.90' font='puristaLight'align='right' color='#33CC00'>50 km/h</t><br/>
					<t size='0.90' font='puristaLight' align='left'>65 - 75 km/h :</t><t size='0.90' font='puristaLight'align='right'>70 km/h</t><br/>
					<t size='0.90' font='puristaLight' align='left'>115 - 125 km/h :</t><t size='0.90' font='puristaLight'align='right'>120 km/h</t><br/>
					<t size='0.90' font='puristaLight' align='left'>155 - 165 km/h :</t><t size='0.90' font='puristaLight'align='right'>160 km/h</t><br/><br/>
					<t size='0.90' font='puristaLight' align='center' color='#CC9900'>Terminate Cruise with Breaks (S)</t><br/><br/>
					<t size='1.30' font='puristaMedium' align='center' color='#0D82DF'>- Cruise Control -</t><br/>""
				];
	};
	if (_xy > 65 && _xy < 75) then {
		cspeed = 70;
		cruiseControlSet = true;
		hint parseText format [""
					<t size='1.30' font='puristaMedium' align='center' color='#0D82DF'>Cruise Control</t><br/><br/>
					<t size='0.90 'font='puristaLight' align='left'>Cruise Control:</t><t size='0.90 'font='puristaLight' align='left' color='#33CC00'> Activated!</t><br/><br/>
					<t size='0.90' font='puristaLight' align='left' color='#0D82DF'>Current Speed</t><t size='0.90' font='puristaLight'align='right' color='#0D82DF'>Cruise Speed</t><br/>
					<t size='0.90' font='puristaLight' align='left'>45 - 55 km/h :</t><t size='0.90' font='puristaLight'align='right'>50 km/h</t><br/>
					<t size='0.90' font='puristaLight' align='left' color='#33CC00'>65 - 75 km/h :</t><t size='0.90' font='puristaLight'align='right' color='#33CC00'>70 km/h</t><br/>
					<t size='0.90' font='puristaLight' align='left'>115 - 125 km/h :</t><t size='0.90' font='puristaLight'align='right'>120 km/h</t><br/>
					<t size='0.90' font='puristaLight' align='left'>155 - 165 km/h :</t><t size='0.90' font='puristaLight'align='right'>160 km/h</t><br/><br/>
					<t size='0.90' font='puristaLight' align='center' color='#CC9900'>Terminate Cruise with Breaks (S)</t><br/><br/>
					<t size='1.30' font='puristaMedium' align='center' color='#0D82DF'>- Cruise Control -</t><br/>""
				];
	};
	if (_xy > 115 && _xy < 125) then {
		cspeed = 120;
		cruiseControlSet = true;
		hint parseText format [""
					<t size='1.30' font='puristaMedium' align='center' color='#0D82DF'>Cruise Control</t><br/><br/>
					<t size='0.90 'font='puristaLight' align='left'>Cruise Control:</t><t size='0.90 'font='puristaLight' align='left' color='#33CC00'> Activated!</t><br/><br/>
					<t size='0.90' font='puristaLight' align='left' color='#0D82DF'>Current Speed</t><t size='0.90' font='puristaLight'align='right' color='#0D82DF'>Cruise Speed</t><br/>
					<t size='0.90' font='puristaLight' align='left'>45 - 55 km/h :</t><t size='0.90' font='puristaLight'align='right'>50 km/h</t><br/>
					<t size='0.90' font='puristaLight' align='left'>65 - 75 km/h :</t><t size='0.90' font='puristaLight'align='right'>70 km/h</t><br/>
					<t size='0.90' font='puristaLight' align='left' color='#33CC00'>115 - 125 km/h :</t><t size='0.90' font='puristaLight'align='right' color='#33CC00'>120 km/h</t><br/>
					<t size='0.90' font='puristaLight' align='left'>155 - 165 km/h :</t><t size='0.90' font='puristaLight'align='right'>160 km/h</t><br/><br/>
					<t size='0.90' font='puristaLight' align='center' color='#CC9900'>Terminate Cruise with Breaks (S)</t><br/><br/>
					<t size='1.30' font='puristaMedium' align='center' color='#0D82DF'>- Cruise Control -</t><br/>""
				];
	};
	if (_xy > 155 && _xy < 165) then {
		cspeed = 160;
		cruiseControlSet = true;
		hint parseText format [""
					<t size='1.30' font='puristaMedium' align='center' color='#0D82DF'>Cruise Control</t><br/><br/>
					<t size='0.90 'font='puristaLight' align='left'>Cruise Control:</t><t size='0.90 'font='puristaLight' align='left' color='#33CC00'> Activated!</t><br/><br/>
					<t size='0.90' font='puristaLight' align='left' color='#0D82DF'>Current Speed</t><t size='0.90' font='puristaLight'align='right' color='#0D82DF'>Cruise Speed</t><br/>
					<t size='0.90' font='puristaLight' align='left'>45 - 55 km/h :</t><t size='0.90' font='puristaLight'align='right'>50 km/h</t><br/>
					<t size='0.90' font='puristaLight' align='left'>65 - 75 km/h :</t><t size='0.90' font='puristaLight'align='right'>70 km/h</t><br/>
					<t size='0.90' font='puristaLight' align='left'>115 - 125 km/h :</t><t size='0.90' font='puristaLight'align='right'>120 km/h</t><br/>
					<t size='0.90' font='puristaLight' align='left' color='#33CC00'>155 - 165 km/h :</t><t size='0.90' font='puristaLight'align='right' color='#33CC00'>160 km/h</t><br/><br/>
					<t size='0.90' font='puristaLight' align='center' color='#CC9900'>Terminate Cruise with Breaks (S)</t><br/><br/>
					<t size='1.30' font='puristaMedium' align='center' color='#0D82DF'>- Cruise Control -</t><br/>""
				];
	};
	
	if (!cruiseControlSet) then {
		hint parseText format [""
					<t size='1.30' font='puristaMedium' align='center' color='#0D82DF'>Cruise Control</t><br/><br/>
					<t size='0.90 'font='puristaLight' align='left'>Cruise Control:</t><t size='0.90 'font='puristaLight' align='left' color='#990000'> NOT Activated!</t><br/><br/>
					<t size='0.90' font='puristaLight' align='left' color='#0D82DF'>Current Speed</t><t size='0.90' font='puristaLight'align='right' color='#0D82DF'>Cruise Speed</t><br/>
					<t size='0.90' font='puristaLight' align='left'>45 - 55 km/h :</t><t size='0.90' font='puristaLight'align='right'>50 km/h</t><br/>
					<t size='0.90' font='puristaLight' align='left'>65 - 75 km/h :</t><t size='0.90' font='puristaLight'align='right'>70 km/h</t><br/>
					<t size='0.90' font='puristaLight' align='left'>115 - 125 km/h :</t><t size='0.90' font='puristaLight'align='right'>120 km/h</t><br/>
					<t size='0.90' font='puristaLight' align='left'>155 - 165 km/h :</t><t size='0.90' font='puristaLight'align='right'>160 km/h</t><br/><br/>
					<t size='0.90' font='puristaLight' align='center' color='#CC9900'>Terminate Cruise with Breaks (S)</t><br/><br/>
					<t size='1.30' font='puristaMedium' align='center' color='#0D82DF'>- Cruise Control -</t><br/>""
				];
	} else {
		uwg_cruise removeAction uwg_cruise_control;
		(findDisplay 46) displayAddEventHandler [""KeyDown"",""
			_keyDown = _this select 1;
			if (_keyDown == 0x1F) then {
				if (cruiseControlSet) then {
					uwg_cruise_control = uwg_cruise addAction ['Cruise Control','"""""""" call mod_cruiseControlMenu;',[], 0, false, false, '', 'driver uwg_cruise == player'];
					cruiseControlSet = false;
					hint parseText format [""""
								<t size='1.30' font='puristaMedium' align='center' color='#0D82DF'>Cruise Control</t><br/><br/>
								<t size='0.90 'font='puristaLight' align='left'>Cruise Control:</t><t size='0.90 'font='puristaLight' align='left' color='#990000'> Deactivated!</t><br/><br/>
								<t size='1.30' font='puristaMedium' align='center' color='#0D82DF'>- Cruise Control -</t><br/>""""
							];
				};
			};""];
	};
	
	while {cruiseControlSet} do {
		if (getDammage uwg_cruise > 0.1) exitWith {
			cruiseControlSet = false;
			hint parseText format [""
								<t size='1.30' font='puristaMedium' align='center' color='#0D82DF'>Cruise Control</t><br/><br/>
								<t size='0.90 'font='puristaLight' align='left'>Cruise Control:</t><t size='0.90 'font='puristaLight' align='left' color='#990000'> Deactivated!</t><br/><br/>
								<t size='0.90 'font='puristaLight' align='left'>The vehicle is too damaged to use Cruise Control, try repairing the vehicle.<br/><br/>
								<t size='1.30' font='puristaMedium' align='center' color='#0D82DF'>- Cruise Control -</t><br/>""
							];
		};
		if (fuel uwg_cruise < 0.1) exitWith {
			cruiseControlSet = false;
			hint parseText format [""
								<t size='1.30' font='puristaMedium' align='center' color='#0D82DF'>Cruise Control</t><br/><br/>
								<t size='0.90 'font='puristaLight' align='left'>Cruise Control:</t><t size='0.90 'font='puristaLight' align='left' color='#990000'> Deactivated!</t><br/><br/>
								<t size='0.90 'font='puristaLight' align='left'>The vehicle does not have enough fuel.<br/><br/>
								<t size='1.30' font='puristaMedium' align='center' color='#0D82DF'>- Cruise Control -</t><br/>""
							];
		};
		_dir = getDir uwg_cruise;
		_newX = (sin _dir)*(cspeed/3.6);
		_newY = (cos _dir)*(cspeed/3.6);
		uwg_cruise setVelocity [_newX, _newY, (velocity uwg_cruise) select 2];
		uiSleep 0.05;
	};
";
publicVariable "mod_cruiseControlMenu";